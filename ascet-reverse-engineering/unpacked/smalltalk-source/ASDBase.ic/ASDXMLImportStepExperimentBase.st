"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001badc; bytecode file offset 0x92209c"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
description
    ^'Importing experiments'
! !

"ASDBase.ic method 0x20052ad0; bytecode file offset 0x9505d0"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
handleExperiments: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20059af4; bytecode file offset 0x9566ac"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
parseElementRef: recoveredArg1 name: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200eb79c; bytecode file offset 0x9e805c"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
readDataGenerator: recoveredArg1 matrix: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) getString: ('stimulus').
    (recoveredValue0) at: (6) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200eb828; bytecode file offset 0x9e810c"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
readCharTableAttributes: recoveredArg1 newEl: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) interpolation.
    recoveredValue2 := (recoveredValue1) physicsRepresentation.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) getEnum: ('interpolation').
    (recoveredValue2) setValue: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x200ec818; bytecode file offset 0x9e90d8"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
getID: recoveredArg1 idAttr: recoveredArg2 nameAttr: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := elements.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) getString: (recoveredValue2).
    recoveredValue4 := [].
    recoveredValue5 := (recoveredValue0) at: (recoveredValue3) ifAbsent: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201122ec; bytecode file offset 0xa0ebe8"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
initOn: recoveredArg1 component: recoveredArg2 item: recoveredArg3 importPath: recoveredArg4 ext: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    super initOn: (recoveredValue0) sgClass: (recoveredValue1) item: (recoveredValue2) importPath: (recoveredValue3) ext: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20147868; bytecode file offset 0xa4412c"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
readDataGenerator: recoveredArg1 singleShot: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) readDataGenerator: (recoveredValue0) simple: (recoveredValue1).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) getDouble: ('phase').
    (recoveredValue2) at: (7) put: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20187704; bytecode file offset 0xa83fc8"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
readDataGenerator: recoveredArg1 gaussian: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) getDouble: ('mean').
    (recoveredValue0) at: (3) put: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) getDouble: ('variance').
    (recoveredValue3) at: (4) put: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201dbec8; bytecode file offset 0xad8790"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
readDataGenerator: recoveredArg1 periodic: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) readDataGenerator: (recoveredValue0) simple: (recoveredValue1).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) getDouble: ('frequency').
    (recoveredValue2) at: (2) put: (recoveredValue4).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) getDouble: ('phase').
    (recoveredValue5) at: (7) put: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201dfb0c; bytecode file offset 0xadc3d4"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
makeDataName: recoveredArg1 index: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := $@.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIntPoint.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := SGDataNameObject.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForTable: (recoveredStack2) index: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202929c0; bytecode file offset 0xb8f298"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
readScalarT: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'Numeric'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [:block280e2eccArg1 | 
    | block280e2eccValue0 block280e2eccValue1 |
    block280e2eccValue0 := block280e2eccArg1.
    block280e2eccValue1 := (block280e2eccValue0) getNZQR: ('value').
    block280e2eccValue1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := 'Logic'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := [:block280e2ef0Arg1 | 
    | block280e2ef0Value0 block280e2ef0Value1 |
    block280e2ef0Value0 := block280e2ef0Arg1.
    block280e2ef0Value1 := (block280e2ef0Value0) getBoolean: ('value').
    block280e2ef0Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack6 := handler.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) choice: (recoveredStack2) do: (recoveredStack3) choice: (recoveredStack4) do: (recoveredStack5) ifNot: (recoveredStack6).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := handler.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) doneIfNot: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202f84ac; bytecode file offset 0xbf4d84"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
readArrayT: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Vector.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) getNNInt: ('currentSizeX') default: (5).
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 |
    recoveredBlock24Value0 := recoveredLocal1.
    recoveredBlock24Value1 := recoveredBlock24Arg1.
    recoveredBlock24Value2 := (self) readScalarT: (recoveredBlock24Value1).
    recoveredBlock24Value3 := (recoveredBlock24Value0) add: (recoveredBlock24Value2).
    recoveredBlock24Value3
].
    (recoveredValue4) multiple: ('Value') do: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := handler.
    (recoveredValue6) doneIfNot: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2030d334; bytecode file offset 0xc09bfc"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
readElements: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'Measurement'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := (self) readElementT: (recoveredBlock9Value0) measurement: (true).
    recoveredBlock9Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := 'Calibration'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 |
    recoveredBlock23Value0 := recoveredBlock23Arg1.
    recoveredBlock23Value1 := (self) readElementT: (recoveredBlock23Value0) measurement: (false).
    recoveredBlock23Value1
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 |
    recoveredBlock35Value0 := recoveredArg1.
    recoveredBlock35Value1 := handler.
    recoveredBlock35Value2 := (recoveredBlock35Value0) doneIfNot: (recoveredBlock35Value1).
    ^recoveredBlock35Value2
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) choice: (recoveredStack2) do: (recoveredStack3) choice: (recoveredStack4) do: (recoveredStack5) ifNot: (recoveredStack6).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 4] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20378d88; bytecode file offset 0xc75674"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
readMonitorConfig: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Local1 recoveredBlock15Local2 recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := 'name'.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) getString: (recoveredBlock15Stack2).
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            recoveredBlock15Local2 := recoveredBlock15Stack1.
            recoveredBlock15PC := 28.
        ].
        recoveredBlock15Step = 28 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 29.
        ].
        recoveredBlock15Step = 29 ifTrue: [
            recoveredBlock15Stack2 := 'graphicOIDs'.
            recoveredBlock15PC := 31.
        ].
        recoveredBlock15Step = 31 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) getString: (recoveredBlock15Stack2).
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            recoveredBlock15Stack2 := ','.
            recoveredBlock15PC := 35.
        ].
        recoveredBlock15Step = 35 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) asArrayOfSubstringsSeparatedBy: (recoveredBlock15Stack2).
            recoveredBlock15PC := 37.
        ].
        recoveredBlock15Step = 37 ifTrue: [
            recoveredBlock15Stack2 := [:block280f2280Arg1 | 
    | block280f2280Value0 block280f2280Value1 |
    block280f2280Value0 := block280f2280Arg1.
    block280f2280Value1 := (block280f2280Value0) asInteger.
    block280f2280Value1
].
            recoveredBlock15PC := 39.
        ].
        recoveredBlock15Step = 39 ifTrue: [
            recoveredBlock15PC := 46.
        ].
        recoveredBlock15Step = 46 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) collect: (recoveredBlock15Stack2).
            recoveredBlock15PC := 48.
        ].
        recoveredBlock15Step = 48 ifTrue: [
            recoveredBlock15Local1 := recoveredBlock15Stack1.
            recoveredBlock15PC := 49.
        ].
        recoveredBlock15Step = 49 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 52.
        ].
        recoveredBlock15Step = 52 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Local2.
            recoveredBlock15PC := 53.
        ].
        recoveredBlock15Step = 53 ifTrue: [
            recoveredBlock15Stack3 := recoveredBlock15Local1.
            recoveredBlock15PC := 54.
        ].
        recoveredBlock15Step = 54 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) at: (recoveredBlock15Stack2) put: (recoveredBlock15Stack3).
            recoveredBlock15PC := 56.
        ].
        recoveredBlock15Step = 56 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue2) multiple: ('BlockDiagram') do: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := handler.
    (recoveredValue4) doneIfNot: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x203dde64; bytecode file offset 0xcda73c"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
readLayers: recoveredArg1 sim: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 |
    recoveredBlock21Value0 := recoveredBlock21Arg1.
    recoveredBlock21Value1 := [:recoveredBlock21Block31Arg1 | 
    | recoveredBlock21Block31Value0 recoveredBlock21Block31Value1 recoveredBlock21Block31Value2 |
    recoveredBlock21Block31Value0 := recoveredBlock21Block31Arg1.
    recoveredBlock21Block31Value1 := [:recoveredBlock21Block31Block41Arg1 | 
    | recoveredBlock21Block31Block41Value0 recoveredBlock21Block31Block41Value1 recoveredBlock21Block31Block41Value2 recoveredBlock21Block31Block41Value3 recoveredBlock21Block31Block41Value4 |
    recoveredBlock21Block31Block41Value0 := recoveredBlock21Block31Block41Arg1.
    recoveredBlock21Block31Block41Value1 := recoveredArg2.
    recoveredBlock21Block31Block41Value2 := recoveredLocal2.
    recoveredBlock21Block31Block41Value3 := recoveredLocal1.
    recoveredBlock21Block31Block41Value4 := (self) readWidgetGroup: (recoveredBlock21Block31Block41Value0) sim: (recoveredBlock21Block31Block41Value1) measures: (recoveredBlock21Block31Block41Value2) calibrations: (recoveredBlock21Block31Block41Value3).
    recoveredBlock21Block31Block41Value4
].
    recoveredBlock21Block31Value2 := (recoveredBlock21Block31Value0) multiple: ('WidgetGroup') do: (recoveredBlock21Block31Value1).
    recoveredBlock21Block31Value2
].
    recoveredBlock21Value2 := (recoveredBlock21Value0) multiple: ('LayerLayout') do: (recoveredBlock21Value1).
    recoveredBlock21Value2
].
    (recoveredValue4) multiple: ('Layer') do: (recoveredValue5).
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := recoveredLocal2.
    (recoveredValue6) measureWindowsConfig: (recoveredValue7).
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue8) calibrationWindowsConfig: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x203ef648; bytecode file offset 0xcebf30"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
readElementT: recoveredArg1 measurement: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := [:recoveredBlock9Block19Arg1 | 
    | recoveredBlock9Block19Value0 recoveredBlock9Block19Value1 recoveredBlock9Block19Value2 |
    recoveredBlock9Block19Value0 := recoveredBlock9Block19Arg1.
    recoveredBlock9Block19Value1 := [:recoveredBlock9Block19Block29Arg1 | 
    | recoveredBlock9Block19Block29Stack0 recoveredBlock9Block19Block29Stack1 recoveredBlock9Block19Block29Stack2 recoveredBlock9Block19Block29Stack3 recoveredBlock9Block19Block29Stack4 recoveredBlock9Block19Block29PC recoveredBlock9Block19Block29Step recoveredBlock9Block19Block29Done recoveredBlock9Block19Block29Result |
    recoveredBlock9Block19Block29Stack0 := self.
    recoveredBlock9Block19Block29PC := 36.
    recoveredBlock9Block19Block29Done := false.
    [recoveredBlock9Block19Block29Done not] whileTrue: [
        recoveredBlock9Block19Block29Step := recoveredBlock9Block19Block29PC.
        recoveredBlock9Block19Block29Step = 36 ifTrue: [
            recoveredBlock9Block19Block29Stack1 := [
    | recoveredBlock9Block19Block29Block36Local1 recoveredBlock9Block19Block29Block36Value0 recoveredBlock9Block19Block29Block36Value1 recoveredBlock9Block19Block29Block36Value2 recoveredBlock9Block19Block29Block36Value3 recoveredBlock9Block19Block29Block36Value4 recoveredBlock9Block19Block29Block36Value5 recoveredBlock9Block19Block29Block36Value6 recoveredBlock9Block19Block29Block36Value7 recoveredBlock9Block19Block29Block36Value8 |
    recoveredBlock9Block19Block29Block36Value0 := recoveredBlock9Block19Block29Arg1.
    recoveredBlock9Block19Block29Block36Value1 := (recoveredBlock9Block19Block29Block36Value0) getString: ('ID').
    recoveredBlock9Block19Block29Block36Local1 := recoveredBlock9Block19Block29Block36Value1.
    recoveredBlock9Block19Block29Block36Value2 := elements.
    recoveredBlock9Block19Block29Block36Value3 := recoveredBlock9Block19Block29Block36Local1.
    recoveredBlock9Block19Block29Block36Value4 := recoveredBlock9Block19Block29Block36Local1.
    recoveredBlock9Block19Block29Block36Value5 := recoveredBlock9Block19Block29Arg1.
    recoveredBlock9Block19Block29Block36Value6 := (recoveredBlock9Block19Block29Block36Value5) getString: ('Name').
    recoveredBlock9Block19Block29Block36Value7 := (self) parseElementRef: (recoveredBlock9Block19Block29Block36Value4) name: (recoveredBlock9Block19Block29Block36Value6).
    recoveredBlock9Block19Block29Block36Value8 := (recoveredBlock9Block19Block29Block36Value2) at: (recoveredBlock9Block19Block29Block36Value3) put: (recoveredBlock9Block19Block29Block36Value7).
    recoveredBlock9Block19Block29Block36Value8
].
            recoveredBlock9Block19Block29PC := 67.
        ].
        recoveredBlock9Block19Block29Step = 67 ifTrue: [
            recoveredBlock9Block19Block29Stack2 := ElementNotFound.
            recoveredBlock9Block19Block29PC := 69.
        ].
        recoveredBlock9Block19Block29Step = 69 ifTrue: [
            recoveredBlock9Block19Block29Stack3 := [:block280f912cArg1 | 
    | block280f912cValue0 block280f912cValue1 |
    block280f912cValue0 := block280f912cArg1.
    block280f912cValue1 := (block280f912cValue0) exitWith: (nil).
    block280f912cValue1
].
            recoveredBlock9Block19Block29PC := 71.
        ].
        recoveredBlock9Block19Block29Step = 71 ifTrue: [
            recoveredBlock9Block19Block29PC := 79.
        ].
        recoveredBlock9Block19Block29Step = 79 ifTrue: [
            recoveredBlock9Block19Block29Stack1 := (recoveredBlock9Block19Block29Stack1) when: (recoveredBlock9Block19Block29Stack2) do: (recoveredBlock9Block19Block29Stack3).
            recoveredBlock9Block19Block29PC := 81.
        ].
        recoveredBlock9Block19Block29Step = 81 ifTrue: [
            recoveredBlock9Block19Block29Result := recoveredBlock9Block19Block29Stack1.
            recoveredBlock9Block19Block29Done := true.
        ].
    ].
    recoveredBlock9Block19Block29Result
].
    recoveredBlock9Block19Value2 := (recoveredBlock9Block19Value0) multiple: ('Element') do: (recoveredBlock9Block19Value1).
    recoveredBlock9Block19Value2
].
    recoveredBlock9Value2 := (recoveredBlock9Value0) multiple: ('Group') do: (recoveredBlock9Value1).
    recoveredBlock9Value2
].
    (recoveredValue0) multiple: ('Device') do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x203f5bdc; bytecode file offset 0xcf24e4"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
readLayoutConfig: recoveredArg1 name: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBLayoutConfiguration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'iconized'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBoolean: (recoveredStack3) default: (recoveredStack4).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) iconic: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := 'maximized'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBoolean: (recoveredStack3) default: (recoveredStack4).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) isMaximized: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'Position'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := [:block280f97c8Arg1 | 
    | block280f97c8Value0 block280f97c8Value1 |
    block280f97c8Value0 := block280f97c8Arg1.
    block280f97c8Value1 := (block280f97c8Value0) asPoint.
    block280f97c8Value1
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) x: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) y: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := 'Size'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := [:block280f97ecArg1 | 
    | block280f97ecValue0 block280f97ecValue1 |
    block280f97ecValue0 := block280f97ecArg1.
    block280f97ecValue1 := (block280f97ecValue0) asSize.
    block280f97ecValue1
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) width: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) height: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2043ec2c; bytecode file offset 0xd3b514"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
readDataGenerator: recoveredArg1 simple: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ('Kli') == ('Call_2011400089').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredArg2.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) getBoolean: ('value').
    recoveredBlock15Value3 := (recoveredBlock15Value0) at: (4) put: (recoveredBlock15Value2).
    recoveredBlock15Value3
].
    recoveredValue3 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 recoveredBlock37Value3 recoveredBlock37Value4 recoveredBlock37Value5 recoveredBlock37Value6 |
    recoveredBlock37Value0 := recoveredArg2.
    recoveredBlock37Value1 := recoveredBlock37Arg1.
    recoveredBlock37Value2 := (recoveredBlock37Value1) getDouble: ('amplitude').
    (recoveredBlock37Value0) at: (3) put: (recoveredBlock37Value2).
    recoveredBlock37Value3 := recoveredArg2.
    recoveredBlock37Value4 := recoveredBlock37Arg1.
    recoveredBlock37Value5 := (recoveredBlock37Value4) getDouble: ('offset').
    recoveredBlock37Value6 := (recoveredBlock37Value3) at: (4) put: (recoveredBlock37Value5).
    recoveredBlock37Value6
].
    recoveredValue4 := [:recoveredBlock71Arg1 | 
    | recoveredBlock71Value0 recoveredBlock71Value1 recoveredBlock71Value2 recoveredBlock71Value3 recoveredBlock71Value4 recoveredBlock71Value5 recoveredBlock71Value6 |
    recoveredBlock71Value0 := recoveredArg2.
    recoveredBlock71Value1 := recoveredBlock71Arg1.
    recoveredBlock71Value2 := (recoveredBlock71Value1) getDouble: ('amplitude').
    (recoveredBlock71Value0) at: (3) put: (recoveredBlock71Value2).
    recoveredBlock71Value3 := recoveredArg2.
    recoveredBlock71Value4 := recoveredBlock71Arg1.
    recoveredBlock71Value5 := (recoveredBlock71Value4) getString: ('offset').
    recoveredBlock71Value6 := (recoveredBlock71Value3) at: (4) put: (recoveredBlock71Value5).
    recoveredBlock71Value6
].
    recoveredValue5 := handler.
    (recoveredValue1) choice: ('Boolean') do: (recoveredValue2) choice: ('Numeric') do: (recoveredValue3) choice: ('Enumeration') do: (recoveredValue4) ifNot: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2045d3e0; bytecode file offset 0xd59ce0"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
performStep
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionImportExperiments.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := '.experiments.'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := extension.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) qualifyBaseName: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 recoveredBlock38Value4 |
    recoveredBlock38Value0 := extension.
    recoveredBlock38Value1 := ('.experiments.') , (recoveredBlock38Value0).
    recoveredBlock38Value2 := (self) readDOMTree: (recoveredBlock38Value1) schema: ('component_experiment.xsd').
    recoveredLocal1 := recoveredBlock38Value2.
    recoveredBlock38Value3 := recoveredLocal1.
    recoveredBlock38Value4 := (self) readExperiments: (recoveredBlock38Value3).
    recoveredBlock38Value4
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Stack0 recoveredBlock65Stack1 recoveredBlock65Stack2 recoveredBlock65Stack3 recoveredBlock65Stack4 recoveredBlock65Stack5 recoveredBlock65Stack6 recoveredBlock65PC recoveredBlock65Step recoveredBlock65Done recoveredBlock65Result |
    recoveredBlock65Stack0 := self.
    recoveredBlock65PC := 72.
    recoveredBlock65Done := false.
    [recoveredBlock65Done not] whileTrue: [
        recoveredBlock65Step := recoveredBlock65PC.
        recoveredBlock65Step = 72 ifTrue: [
            recoveredBlock65Stack1 := issue.
            recoveredBlock65PC := 74.
        ].
        recoveredBlock65Step = 74 ifTrue: [
            (recoveredBlock65Stack1 == nil) ifTrue: [recoveredBlock65PC := 88] ifFalse: [recoveredBlock65PC := 78].
        ].
        recoveredBlock65Step = 78 ifTrue: [
            recoveredBlock65Stack1 := controller.
            recoveredBlock65PC := 80.
        ].
        recoveredBlock65Step = 80 ifTrue: [
            recoveredBlock65Stack2 := issue.
            recoveredBlock65PC := 82.
        ].
        recoveredBlock65Step = 82 ifTrue: [
            (recoveredBlock65Stack1) addIssue: (recoveredBlock65Stack2).
            recoveredBlock65PC := 84.
        ].
        recoveredBlock65Step = 84 ifTrue: [
            recoveredBlock65PC := 108.
        ].
        recoveredBlock65Step = 88 ifTrue: [
            recoveredBlock65Stack1 := Util.
            recoveredBlock65PC := 90.
        ].
        recoveredBlock65Step = 90 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Arg1.
            recoveredBlock65PC := 91.
        ].
        recoveredBlock65Step = 91 ifTrue: [
            (recoveredBlock65Stack1) writeStackTrace: (recoveredBlock65Stack2).
            recoveredBlock65PC := 93.
        ].
        recoveredBlock65Step = 93 ifTrue: [
            recoveredBlock65Stack1 := controller.
            recoveredBlock65PC := 95.
        ].
        recoveredBlock65Step = 95 ifTrue: [
            recoveredBlock65Stack2 := ASDXMLImportIssueUnhandledException.
            recoveredBlock65PC := 97.
        ].
        recoveredBlock65Step = 97 ifTrue: [
            recoveredBlock65Stack2 := (recoveredBlock65Stack2) new.
            recoveredBlock65PC := 99.
        ].
        recoveredBlock65Step = 99 ifTrue: [
            recoveredBlock65Stack3 := protoClass.
            recoveredBlock65PC := 101.
        ].
        recoveredBlock65Step = 101 ifTrue: [
            recoveredBlock65Stack4 := recoveredBlock65Arg1.
            recoveredBlock65PC := 102.
        ].
        recoveredBlock65Step = 102 ifTrue: [
            recoveredBlock65Stack5 := false.
            recoveredBlock65PC := 103.
        ].
        recoveredBlock65Step = 103 ifTrue: [
            recoveredBlock65Stack2 := (recoveredBlock65Stack2) initOn: (recoveredBlock65Stack3) exception: (recoveredBlock65Stack4) fatal: (recoveredBlock65Stack5).
            recoveredBlock65PC := 106.
        ].
        recoveredBlock65Step = 106 ifTrue: [
            (recoveredBlock65Stack1) addIssue: (recoveredBlock65Stack2).
            recoveredBlock65PC := 108.
        ].
        recoveredBlock65Step = 108 ifTrue: [
            recoveredBlock65Stack1 := recoveredBlock65Arg1.
            recoveredBlock65PC := 109.
        ].
        recoveredBlock65Step = 109 ifTrue: [
            recoveredBlock65Stack2 := nil.
            recoveredBlock65PC := 110.
        ].
        recoveredBlock65Step = 110 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) exitWith: (recoveredBlock65Stack2).
            recoveredBlock65PC := 112.
        ].
        recoveredBlock65Step = 112 ifTrue: [
            recoveredBlock65Result := recoveredBlock65Stack1.
            recoveredBlock65Done := true.
        ].
    ].
    recoveredBlock65Result
].
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2052ac18; bytecode file offset 0xe27524"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
parseID: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Die'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'TFS_325209'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := $$.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubStrings: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'Die'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'Call_2011402537'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := $_.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubStrings: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) removeFirst.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlOID.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 179.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeFirst.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := 'Call_327799'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 29.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := DBInterface.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalIdServer.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromAlphaNumString: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := DBInterface.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) validateGlobalId: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 136 ifTrue: [
            recoveredPC := 166.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := SGReservedNames.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := (recoveredStack2) smName.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) asByteArray.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredPC := 166.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := 'Die'.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := 'Call_2011402537'.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := controller.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := (recoveredStack2) effectiveOID: (recoveredStack3).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 187].
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 194] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeDataName: (recoveredStack1) index: (recoveredStack2).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20535e2c; bytecode file offset 0xe32780"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
readCTSolvers: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Local1 recoveredBlock15Local2 recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 |
    recoveredBlock15Value0 := protoClass.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) getNMToken: ('elementName').
    recoveredBlock15Value3 := (recoveredBlock15Value0) xmlElementByName: (recoveredBlock15Value2).
    recoveredBlock15Value4 := [:recoveredBlock15Block33Arg1 | 
    | recoveredBlock15Block33Stack0 recoveredBlock15Block33Stack1 recoveredBlock15Block33Stack2 recoveredBlock15Block33Stack3 recoveredBlock15Block33Stack4 recoveredBlock15Block33Stack5 recoveredBlock15Block33Stack6 recoveredBlock15Block33PC recoveredBlock15Block33Step recoveredBlock15Block33Done recoveredBlock15Block33Result |
    recoveredBlock15Block33Stack0 := self.
    recoveredBlock15Block33PC := 40.
    recoveredBlock15Block33Done := false.
    [recoveredBlock15Block33Done not] whileTrue: [
        recoveredBlock15Block33Step := recoveredBlock15Block33PC.
        recoveredBlock15Block33Step = 40 ifTrue: [
            recoveredBlock15Block33Stack1 := SGSimCTParameters.
            recoveredBlock15Block33PC := 42.
        ].
        recoveredBlock15Block33Step = 42 ifTrue: [
            recoveredBlock15Block33Stack1 := (recoveredBlock15Block33Stack1) create.
            recoveredBlock15Block33PC := 44.
        ].
        recoveredBlock15Block33Step = 44 ifTrue: [
            recoveredBlock15Local2 := recoveredBlock15Block33Stack1.
            recoveredBlock15Block33PC := 47.
        ].
        recoveredBlock15Block33Step = 47 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredBlock15Local2.
            recoveredBlock15Block33PC := 50.
        ].
        recoveredBlock15Block33Step = 50 ifTrue: [
            recoveredBlock15Block33Stack2 := recoveredBlock15Arg1.
            recoveredBlock15Block33PC := 53.
        ].
        recoveredBlock15Block33Step = 53 ifTrue: [
            recoveredBlock15Block33Stack3 := 'dt'.
            recoveredBlock15Block33PC := 55.
        ].
        recoveredBlock15Block33Step = 55 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) getDouble: (recoveredBlock15Block33Stack3).
            recoveredBlock15Block33PC := 57.
        ].
        recoveredBlock15Block33Step = 57 ifTrue: [
            (recoveredBlock15Block33Stack1) dt: (recoveredBlock15Block33Stack2).
            recoveredBlock15Block33PC := 59.
        ].
        recoveredBlock15Block33Step = 59 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredBlock15Local2.
            recoveredBlock15Block33PC := 62.
        ].
        recoveredBlock15Block33Step = 62 ifTrue: [
            recoveredBlock15Block33Stack2 := recoveredBlock15Arg1.
            recoveredBlock15Block33PC := 65.
        ].
        recoveredBlock15Block33Step = 65 ifTrue: [
            recoveredBlock15Block33Stack3 := 'h'.
            recoveredBlock15Block33PC := 67.
        ].
        recoveredBlock15Block33Step = 67 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) getDouble: (recoveredBlock15Block33Stack3).
            recoveredBlock15Block33PC := 69.
        ].
        recoveredBlock15Block33Step = 69 ifTrue: [
            (recoveredBlock15Block33Stack1) h: (recoveredBlock15Block33Stack2).
            recoveredBlock15Block33PC := 71.
        ].
        recoveredBlock15Block33Step = 71 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredBlock15Local2.
            recoveredBlock15Block33PC := 74.
        ].
        recoveredBlock15Block33Step = 74 ifTrue: [
            recoveredBlock15Block33Stack2 := recoveredBlock15Arg1.
            recoveredBlock15Block33PC := 77.
        ].
        recoveredBlock15Block33Step = 77 ifTrue: [
            recoveredBlock15Block33Stack3 := 'hMin'.
            recoveredBlock15Block33PC := 79.
        ].
        recoveredBlock15Block33Step = 79 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) getDouble: (recoveredBlock15Block33Stack3).
            recoveredBlock15Block33PC := 81.
        ].
        recoveredBlock15Block33Step = 81 ifTrue: [
            (recoveredBlock15Block33Stack1) hMin: (recoveredBlock15Block33Stack2).
            recoveredBlock15Block33PC := 83.
        ].
        recoveredBlock15Block33Step = 83 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredBlock15Local2.
            recoveredBlock15Block33PC := 86.
        ].
        recoveredBlock15Block33Step = 86 ifTrue: [
            recoveredBlock15Block33Stack2 := recoveredBlock15Arg1.
            recoveredBlock15Block33PC := 89.
        ].
        recoveredBlock15Block33Step = 89 ifTrue: [
            recoveredBlock15Block33Stack3 := 'hMax'.
            recoveredBlock15Block33PC := 91.
        ].
        recoveredBlock15Block33Step = 91 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) getDouble: (recoveredBlock15Block33Stack3).
            recoveredBlock15Block33PC := 93.
        ].
        recoveredBlock15Block33Step = 93 ifTrue: [
            (recoveredBlock15Block33Stack1) hMax: (recoveredBlock15Block33Stack2).
            recoveredBlock15Block33PC := 95.
        ].
        recoveredBlock15Block33Step = 95 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredBlock15Local2.
            recoveredBlock15Block33PC := 98.
        ].
        recoveredBlock15Block33Step = 98 ifTrue: [
            recoveredBlock15Block33Stack2 := recoveredBlock15Arg1.
            recoveredBlock15Block33PC := 101.
        ].
        recoveredBlock15Block33Step = 101 ifTrue: [
            recoveredBlock15Block33Stack3 := 'relError'.
            recoveredBlock15Block33PC := 103.
        ].
        recoveredBlock15Block33Step = 103 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) getDouble: (recoveredBlock15Block33Stack3).
            recoveredBlock15Block33PC := 105.
        ].
        recoveredBlock15Block33Step = 105 ifTrue: [
            (recoveredBlock15Block33Stack1) relError: (recoveredBlock15Block33Stack2).
            recoveredBlock15Block33PC := 107.
        ].
        recoveredBlock15Block33Step = 107 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredBlock15Local2.
            recoveredBlock15Block33PC := 110.
        ].
        recoveredBlock15Block33Step = 110 ifTrue: [
            recoveredBlock15Block33Stack2 := recoveredBlock15Arg1.
            recoveredBlock15Block33PC := 113.
        ].
        recoveredBlock15Block33Step = 113 ifTrue: [
            recoveredBlock15Block33Stack3 := 'absError'.
            recoveredBlock15Block33PC := 115.
        ].
        recoveredBlock15Block33Step = 115 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) getDouble: (recoveredBlock15Block33Stack3).
            recoveredBlock15Block33PC := 117.
        ].
        recoveredBlock15Block33Step = 117 ifTrue: [
            (recoveredBlock15Block33Stack1) absError: (recoveredBlock15Block33Stack2).
            recoveredBlock15Block33PC := 119.
        ].
        recoveredBlock15Block33Step = 119 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredBlock15Local2.
            recoveredBlock15Block33PC := 122.
        ].
        recoveredBlock15Block33Step = 122 ifTrue: [
            recoveredBlock15Block33Stack2 := recoveredBlock15Arg1.
            recoveredBlock15Block33PC := 125.
        ].
        recoveredBlock15Block33Step = 125 ifTrue: [
            recoveredBlock15Block33Stack3 := 'maxIterations'.
            recoveredBlock15Block33PC := 127.
        ].
        recoveredBlock15Block33Step = 127 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) getInt: (recoveredBlock15Block33Stack3).
            recoveredBlock15Block33PC := 129.
        ].
        recoveredBlock15Block33Step = 129 ifTrue: [
            (recoveredBlock15Block33Stack1) maxIterations: (recoveredBlock15Block33Stack2).
            recoveredBlock15Block33PC := 131.
        ].
        recoveredBlock15Block33Step = 131 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredBlock15Local2.
            recoveredBlock15Block33PC := 134.
        ].
        recoveredBlock15Block33Step = 134 ifTrue: [
            recoveredBlock15Block33Stack2 := recoveredBlock15Arg1.
            recoveredBlock15Block33PC := 137.
        ].
        recoveredBlock15Block33Step = 137 ifTrue: [
            recoveredBlock15Block33Stack3 := 'startH'.
            recoveredBlock15Block33PC := 139.
        ].
        recoveredBlock15Block33Step = 139 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) getDouble: (recoveredBlock15Block33Stack3).
            recoveredBlock15Block33PC := 141.
        ].
        recoveredBlock15Block33Step = 141 ifTrue: [
            (recoveredBlock15Block33Stack1) startH: (recoveredBlock15Block33Stack2).
            recoveredBlock15Block33PC := 143.
        ].
        recoveredBlock15Block33Step = 143 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredBlock15Local2.
            recoveredBlock15Block33PC := 146.
        ].
        recoveredBlock15Block33Step = 146 ifTrue: [
            recoveredBlock15Block33Stack2 := recoveredBlock15Arg1.
            recoveredBlock15Block33PC := 149.
        ].
        recoveredBlock15Block33Step = 149 ifTrue: [
            recoveredBlock15Block33Stack3 := 'Integrator'.
            recoveredBlock15Block33PC := 151.
        ].
        recoveredBlock15Block33Step = 151 ifTrue: [
            recoveredBlock15Block33Stack4 := [:block2810d8c0Arg1 | 
    | block2810d8c0Value0 block2810d8c0Value1 block2810d8c0Value2 block2810d8c0Value3 block2810d8c0Value4 block2810d8c0Value5 |
    block2810d8c0Value0 := Association.
    block2810d8c0Value1 := block2810d8c0Arg1.
    block2810d8c0Value2 := (block2810d8c0Value1) getString: ('name').
    block2810d8c0Value3 := block2810d8c0Arg1.
    block2810d8c0Value4 := (block2810d8c0Value3) getInt: ('id').
    block2810d8c0Value5 := (block2810d8c0Value0) key: (block2810d8c0Value2) value: (block2810d8c0Value4).
    block2810d8c0Value5
].
            recoveredBlock15Block33PC := 153.
        ].
        recoveredBlock15Block33Step = 153 ifTrue: [
            recoveredBlock15Block33PC := 171.
        ].
        recoveredBlock15Block33Step = 171 ifTrue: [
            recoveredBlock15Block33Stack5 := handler.
            recoveredBlock15Block33PC := 173.
        ].
        recoveredBlock15Block33Step = 173 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) required: (recoveredBlock15Block33Stack3) do: (recoveredBlock15Block33Stack4) ifNot: (recoveredBlock15Block33Stack5).
            recoveredBlock15Block33PC := 176.
        ].
        recoveredBlock15Block33Step = 176 ifTrue: [
            (recoveredBlock15Block33Stack1) integrator: (recoveredBlock15Block33Stack2).
            recoveredBlock15Block33PC := 178.
        ].
        recoveredBlock15Block33Step = 178 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredLocal1.
            recoveredBlock15Block33PC := 181.
        ].
        recoveredBlock15Block33Step = 181 ifTrue: [
            recoveredBlock15Block33Stack2 := recoveredBlock15Block33Arg1.
            recoveredBlock15Block33PC := 182.
        ].
        recoveredBlock15Block33Step = 182 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) xmlOID.
            recoveredBlock15Block33PC := 184.
        ].
        recoveredBlock15Block33Step = 184 ifTrue: [
            recoveredBlock15Block33Stack3 := recoveredBlock15Local2.
            recoveredBlock15Block33PC := 187.
        ].
        recoveredBlock15Block33Step = 187 ifTrue: [
            recoveredBlock15Block33Stack1 := (recoveredBlock15Block33Stack1) at: (recoveredBlock15Block33Stack2) put: (recoveredBlock15Block33Stack3).
            recoveredBlock15Block33PC := 189.
        ].
        recoveredBlock15Block33Step = 189 ifTrue: [
            recoveredBlock15Block33Result := recoveredBlock15Block33Stack1.
            recoveredBlock15Block33Done := true.
        ].
    ].
    recoveredBlock15Block33Result
].
    recoveredBlock15Value5 := (recoveredBlock15Value3) ifNotNil: (recoveredBlock15Value4).
    recoveredBlock15Value5
].
    (recoveredValue2) multiple: ('CTSolver') do: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := handler.
    (recoveredValue4) doneIfNot: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2053d7bc; bytecode file offset 0xe3a108"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
readDataGenerator: recoveredArg1 table: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    (recoveredValue0) at: (2) put: (#[0 0 0 0 0 0 36 64]).
    recoveredValue1 := recoveredArg2.
    (recoveredValue1) at: (3) put: (#[0 0 0 0 0 0 240 63]).
    recoveredValue2 := recoveredArg2.
    (recoveredValue2) at: (4) put: (false).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Local1 recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 recoveredBlock35Value5 recoveredBlock35Value6 recoveredBlock35Value7 recoveredBlock35Value8 recoveredBlock35Value9 recoveredBlock35Value10 recoveredBlock35Value11 recoveredBlock35Value12 recoveredBlock35Value13 recoveredBlock35Value14 recoveredBlock35Value15 recoveredBlock35Value16 recoveredBlock35Value17 recoveredBlock35Value18 recoveredBlock35Value19 recoveredBlock35Value20 recoveredBlock35Value21 recoveredBlock35Value22 recoveredBlock35Value23 recoveredBlock35Value24 recoveredBlock35Value25 recoveredBlock35Value26 recoveredBlock35Value27 recoveredBlock35Value28 recoveredBlock35Value29 recoveredBlock35Value30 recoveredBlock35Value31 recoveredBlock35Value32 recoveredBlock35Value33 recoveredBlock35Value34 recoveredBlock35Value35 |
    recoveredBlock35Value0 := SGOneDCharTable.
    recoveredBlock35Value1 := (recoveredBlock35Value0) createDefault.
    recoveredBlock35Value2 := (recoveredBlock35Value1) createDataElement.
    recoveredBlock35Local1 := recoveredBlock35Value2.
    recoveredBlock35Value3 := recoveredBlock35Local1.
    recoveredBlock35Value4 := RBEnumeration.
    recoveredBlock35Value5 := (recoveredBlock35Value4) createDefault.
    recoveredBlock35Value6 := Array.
    recoveredBlock35Value7 := (recoveredBlock35Value6) with: ('Constant') with: ('Rounded') with: ('Linear').
    recoveredBlock35Value8 := (recoveredBlock35Value5) values: (recoveredBlock35Value7).
    recoveredBlock35Value9 := (recoveredBlock35Value8) createDataElement.
    recoveredBlock35Value10 := recoveredBlock35Value9.
    (recoveredBlock35Value10) setPhysValue: ('Constant').
    (recoveredBlock35Value3) interpolation: (recoveredBlock35Value9).
    recoveredBlock35Value11 := recoveredBlock35Local1.
    recoveredBlock35Value12 := (recoveredBlock35Value11) xDistribution.
    (recoveredBlock35Value12) name: ('Sim-Time').
    recoveredBlock35Value13 := recoveredBlock35Local1.
    recoveredBlock35Value14 := (recoveredBlock35Value13) xDistribution.
    (recoveredBlock35Value14) unit: ('s').
    recoveredBlock35Value15 := recoveredBlock35Local1.
    recoveredBlock35Value16 := (recoveredBlock35Value15) xDistribution.
    recoveredBlock35Value17 := recoveredBlock35Arg1.
    recoveredBlock35Value18 := (recoveredBlock35Value17) getInt: ('currentSizeX').
    (recoveredBlock35Value16) maxSize: (recoveredBlock35Value18).
    recoveredBlock35Value19 := recoveredBlock35Local1.
    recoveredBlock35Value20 := (recoveredBlock35Value19) interpolation.
    recoveredBlock35Value21 := (recoveredBlock35Value20) physicsRepresentation.
    recoveredBlock35Value22 := recoveredBlock35Arg1.
    recoveredBlock35Value23 := (recoveredBlock35Value22) getEnum: ('interpolation').
    (recoveredBlock35Value21) setValue: (recoveredBlock35Value23).
    recoveredBlock35Value24 := recoveredBlock35Arg1.
    recoveredBlock35Value25 := [:recoveredBlock35Block133Arg1 | 
    | recoveredBlock35Block133Value0 recoveredBlock35Block133Value1 recoveredBlock35Block133Value2 recoveredBlock35Block133Value3 recoveredBlock35Block133Value4 |
    recoveredBlock35Block133Value0 := recoveredBlock35Local1.
    recoveredBlock35Block133Value1 := (recoveredBlock35Block133Value0) xDistribution.
    recoveredBlock35Block133Value2 := recoveredBlock35Block133Arg1.
    recoveredBlock35Block133Value3 := (self) readArrayT: (recoveredBlock35Block133Value2).
    recoveredBlock35Block133Value4 := (recoveredBlock35Block133Value1) setPhysValue: (recoveredBlock35Block133Value3).
    recoveredBlock35Block133Value4
].
    recoveredBlock35Value26 := handler.
    (recoveredBlock35Value24) required: ('XAxis') do: (recoveredBlock35Value25) ifNot: (recoveredBlock35Value26).
    recoveredBlock35Value27 := recoveredBlock35Arg1.
    recoveredBlock35Value28 := [:recoveredBlock35Block162Arg1 | 
    | recoveredBlock35Block162Value0 recoveredBlock35Block162Value1 recoveredBlock35Block162Value2 recoveredBlock35Block162Value3 recoveredBlock35Block162Value4 |
    recoveredBlock35Block162Value0 := recoveredBlock35Local1.
    recoveredBlock35Block162Value1 := (recoveredBlock35Block162Value0) values.
    recoveredBlock35Block162Value2 := recoveredBlock35Block162Arg1.
    recoveredBlock35Block162Value3 := (self) readArrayT: (recoveredBlock35Block162Value2).
    recoveredBlock35Block162Value4 := (recoveredBlock35Block162Value1) setPhysValue: (recoveredBlock35Block162Value3).
    recoveredBlock35Block162Value4
].
    recoveredBlock35Value29 := handler.
    (recoveredBlock35Value27) required: ('Values') do: (recoveredBlock35Value28) ifNot: (recoveredBlock35Value29).
    recoveredBlock35Value30 := recoveredBlock35Local1.
    recoveredBlock35Value31 := recoveredBlock35Arg1.
    recoveredBlock35Value32 := (recoveredBlock35Value31) getNZQR: ('timeScale').
    (recoveredBlock35Value30) description: (recoveredBlock35Value32).
    recoveredBlock35Value33 := recoveredArg2.
    recoveredBlock35Value34 := recoveredBlock35Local1.
    recoveredBlock35Value35 := (recoveredBlock35Value33) at: (5) put: (recoveredBlock35Value34).
    recoveredBlock35Value35
].
    (recoveredValue3) optional: ('Data') do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20552720; bytecode file offset 0xe4f080"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
readDataLoggerOptions: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 |
    recoveredValue0 := SGLoggingOptions.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) initialize.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) getBoolean: ('permission').
    (recoveredValue3) permission: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) class.
    recoveredValue9 := (recoveredValue8) loggingModeEnumeration.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) getString: ('loggingMode').
    recoveredValue12 := (recoveredValue9) indexOf: (recoveredValue11).
    recoveredValue13 := (recoveredValue12) + (-1).
    (recoveredValue6) mode: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (recoveredValue15) getNNInt: ('selectedTask').
    (recoveredValue14) selectedTask: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue18) getNNInt: ('hostBufferSize').
    (recoveredValue17) hostBufferSize: (recoveredValue19).
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := recoveredArg1.
    recoveredValue22 := (recoveredValue21) getBoolean: ('continuousPolling').
    (recoveredValue20) continuous: (recoveredValue22).
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := recoveredArg1.
    recoveredValue25 := (recoveredValue24) getNNInt: ('cycleTime').
    (recoveredValue23) cycleTime: (recoveredValue25).
    recoveredValue26 := recoveredLocal1.
    recoveredValue27 := recoveredArg1.
    recoveredValue28 := (recoveredValue27) getNNInt: ('valuesPerCycle').
    (recoveredValue26) dataPerAccess: (recoveredValue28).
    recoveredValue29 := recoveredLocal1.
    recoveredValue30 := recoveredArg1.
    recoveredValue31 := (recoveredValue30) getNNInt: ('targetChannelSize').
    (recoveredValue29) targetChannelSize: (recoveredValue31).
    recoveredValue32 := recoveredLocal1.
    recoveredValue33 := recoveredArg1.
    recoveredValue34 := (recoveredValue33) getInt: ('targetTotalSize').
    recoveredValue35 := (recoveredValue34) / (10).
    recoveredValue36 := (recoveredValue35) asFloat.
    (recoveredValue32) targetTotalSize: (recoveredValue36).
    recoveredValue37 := recoveredLocal1.
    recoveredValue38 := recoveredArg1.
    recoveredValue39 := (recoveredValue38) getString: ('storageFormat').
    recoveredValue40 := (#('MDF' 'FAMOS')) indexOf: (recoveredValue39).
    recoveredValue41 := (recoveredValue40) + (-1).
    (recoveredValue37) storageFormat: (recoveredValue41).
    recoveredValue42 := recoveredArg1.
    recoveredValue43 := [:recoveredBlock157Arg1 | 
    | recoveredBlock157Local1 recoveredBlock157Value0 recoveredBlock157Value1 recoveredBlock157Value2 recoveredBlock157Value3 recoveredBlock157Value4 recoveredBlock157Value5 recoveredBlock157Value6 recoveredBlock157Value7 recoveredBlock157Value8 |
    recoveredBlock157Value0 := LookupTable.
    recoveredBlock157Value1 := (recoveredBlock157Value0) new.
    recoveredBlock157Local1 := recoveredBlock157Value1.
    recoveredBlock157Value2 := recoveredBlock157Arg1.
    recoveredBlock157Value3 := [:recoveredBlock157Block175Arg1 | 
    | recoveredBlock157Block175Value0 recoveredBlock157Block175Value1 recoveredBlock157Block175Value2 recoveredBlock157Block175Value3 recoveredBlock157Block175Value4 recoveredBlock157Block175Value5 |
    recoveredBlock157Block175Value0 := recoveredBlock157Local1.
    recoveredBlock157Block175Value1 := recoveredBlock157Block175Arg1.
    recoveredBlock157Block175Value2 := (recoveredBlock157Block175Value1) getString: ('name').
    recoveredBlock157Block175Value3 := recoveredBlock157Block175Arg1.
    recoveredBlock157Block175Value4 := (recoveredBlock157Block175Value3) getNNInt: ('index').
    recoveredBlock157Block175Value5 := (recoveredBlock157Block175Value0) at: (recoveredBlock157Block175Value2) put: (recoveredBlock157Block175Value4).
    recoveredBlock157Block175Value5
].
    (recoveredBlock157Value2) multiple: ('Task') do: (recoveredBlock157Value3).
    recoveredBlock157Value4 := recoveredBlock157Arg1.
    recoveredBlock157Value5 := handler.
    (recoveredBlock157Value4) doneIfNot: (recoveredBlock157Value5).
    recoveredBlock157Value6 := recoveredLocal1.
    recoveredBlock157Value7 := recoveredBlock157Local1.
    recoveredBlock157Value8 := (recoveredBlock157Value6) availableTasks: (recoveredBlock157Value7).
    recoveredBlock157Value8
].
    recoveredValue44 := handler.
    (recoveredValue42) required: ('Tasks') do: (recoveredValue43) ifNot: (recoveredValue44).
    recoveredValue45 := recoveredLocal1.
    ^recoveredValue45
! !

"ASDBase.ic method 0x20571f34; bytecode file offset 0xe6e890"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
readEventGenerator: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) getString: ('stepMode').
    (recoveredValue2) at: ('StepMode') put: (recoveredValue4).
    recoveredValue5 := ('Kli') == ('Call_74696').
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) getDouble: ('steps').
    (recoveredValue6) at: ('Steps') put: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Local1 recoveredBlock49Value0 recoveredBlock49Value1 recoveredBlock49Value2 recoveredBlock49Value3 recoveredBlock49Value4 recoveredBlock49Value5 recoveredBlock49Value6 recoveredBlock49Value7 recoveredBlock49Value8 recoveredBlock49Value9 recoveredBlock49Value10 recoveredBlock49Value11 recoveredBlock49Value12 recoveredBlock49Value13 recoveredBlock49Value14 |
    recoveredBlock49Value0 := Array.
    recoveredBlock49Value1 := (recoveredBlock49Value0) new: (3).
    recoveredBlock49Local1 := recoveredBlock49Value1.
    recoveredBlock49Value2 := recoveredBlock49Local1.
    recoveredBlock49Value3 := recoveredBlock49Arg1.
    recoveredBlock49Value4 := (recoveredBlock49Value3) getString: ('element').
    (recoveredBlock49Value2) at: (1) put: (recoveredBlock49Value4).
    recoveredBlock49Value5 := recoveredBlock49Local1.
    recoveredBlock49Value6 := recoveredBlock49Arg1.
    recoveredBlock49Value7 := (recoveredBlock49Value6) getEnum: ('operator').
    recoveredBlock49Value8 := (recoveredBlock49Value7) asSymbol.
    (recoveredBlock49Value5) at: (2) put: (recoveredBlock49Value8).
    recoveredBlock49Value9 := recoveredBlock49Local1.
    recoveredBlock49Value10 := recoveredBlock49Arg1.
    recoveredBlock49Value11 := (recoveredBlock49Value10) getDouble: ('level').
    (recoveredBlock49Value9) at: (3) put: (recoveredBlock49Value11).
    recoveredBlock49Value12 := recoveredLocal2.
    recoveredBlock49Value13 := recoveredBlock49Local1.
    recoveredBlock49Value14 := (recoveredBlock49Value12) at: ('BreakCondition') put: (recoveredBlock49Value13).
    recoveredBlock49Value14
].
    recoveredValue11 := [
    | recoveredBlock104Value0 recoveredBlock104Value1 |
    recoveredBlock104Value0 := recoveredLocal2.
    recoveredBlock104Value1 := (recoveredBlock104Value0) at: ('BreakCondition') put: (nil).
    recoveredBlock104Value1
].
    (recoveredValue9) optional: ('BreakCondition') do: (recoveredValue10) ifNot: (recoveredValue11).
    recoveredValue12 := LookupTable.
    recoveredValue13 := (recoveredValue12) new.
    recoveredLocal1 := recoveredValue13.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := [:recoveredBlock133Arg1 | 
    | recoveredBlock133Local1 recoveredBlock133Local2 recoveredBlock133Value0 recoveredBlock133Value1 recoveredBlock133Value2 recoveredBlock133Value3 recoveredBlock133Value4 recoveredBlock133Value5 recoveredBlock133Value6 recoveredBlock133Value7 recoveredBlock133Value8 recoveredBlock133Value9 recoveredBlock133Value10 recoveredBlock133Value11 recoveredBlock133Value12 recoveredBlock133Value13 recoveredBlock133Value14 recoveredBlock133Value15 recoveredBlock133Value16 recoveredBlock133Value17 recoveredBlock133Value18 recoveredBlock133Value19 recoveredBlock133Value20 recoveredBlock133Value21 recoveredBlock133Value22 recoveredBlock133Value23 recoveredBlock133Value24 recoveredBlock133Value25 recoveredBlock133Value26 recoveredBlock133Value27 |
    recoveredBlock133Value0 := recoveredBlock133Arg1.
    recoveredBlock133Value1 := (recoveredBlock133Value0) getNMToken: ('name').
    recoveredBlock133Local2 := recoveredBlock133Value1.
    recoveredBlock133Value2 := Dictionary.
    recoveredBlock133Value3 := (recoveredBlock133Value2) new.
    recoveredBlock133Local1 := recoveredBlock133Value3.
    recoveredBlock133Value4 := recoveredBlock133Local1.
    recoveredBlock133Value5 := recoveredBlock133Arg1.
    recoveredBlock133Value6 := (recoveredBlock133Value5) getInt: ('degreesCS').
    (recoveredBlock133Value4) at: ('DegreesCS') put: (recoveredBlock133Value6).
    recoveredBlock133Value7 := recoveredBlock133Local1.
    recoveredBlock133Value8 := recoveredBlock133Arg1.
    recoveredBlock133Value9 := (recoveredBlock133Value8) getDouble: ('delay') default: (nil).
    (recoveredBlock133Value7) at: ('Delay') put: (recoveredBlock133Value9).
    recoveredBlock133Value10 := recoveredBlock133Local1.
    (recoveredBlock133Value10) at: ('Dependent') put: (nil).
    recoveredBlock133Value11 := recoveredBlock133Local1.
    recoveredBlock133Value12 := recoveredBlock133Arg1.
    recoveredBlock133Value13 := (recoveredBlock133Value12) getBoolean: ('enabled').
    (recoveredBlock133Value11) at: ('enabled') put: (recoveredBlock133Value13).
    recoveredBlock133Value14 := recoveredBlock133Local1.
    recoveredBlock133Value15 := recoveredBlock133Arg1.
    recoveredBlock133Value16 := (recoveredBlock133Value15) getString: ('mode').
    (recoveredBlock133Value14) at: ('Mode') put: (recoveredBlock133Value16).
    recoveredBlock133Value17 := recoveredBlock133Local1.
    recoveredBlock133Value18 := recoveredBlock133Arg1.
    recoveredBlock133Value19 := (recoveredBlock133Value18) getDouble: ('phase') default: (nil).
    (recoveredBlock133Value17) at: ('Phase') put: (recoveredBlock133Value19).
    recoveredBlock133Value20 := recoveredBlock133Local1.
    recoveredBlock133Value21 := recoveredBlock133Arg1.
    recoveredBlock133Value22 := (recoveredBlock133Value21) getInt: ('priority').
    (recoveredBlock133Value20) at: ('Prio') put: (recoveredBlock133Value22).
    recoveredBlock133Value23 := recoveredBlock133Local1.
    (recoveredBlock133Value23) at: ('r.p.m.') put: (nil).
    recoveredBlock133Value24 := recoveredLocal1.
    recoveredBlock133Value25 := recoveredBlock133Local2.
    recoveredBlock133Value26 := recoveredBlock133Local1.
    recoveredBlock133Value27 := (recoveredBlock133Value24) at: (recoveredBlock133Value25) put: (recoveredBlock133Value26).
    recoveredBlock133Value27
].
    (recoveredValue14) multiple: ('Channel') do: (recoveredValue15).
    recoveredValue16 := recoveredLocal2.
    recoveredValue17 := recoveredLocal1.
    (recoveredValue16) at: ('EventSimChannels') put: (recoveredValue17).
    recoveredValue18 := recoveredLocal2.
    ^recoveredValue18
! !

"ASDBase.ic method 0x2059c4f8; bytecode file offset 0xe98e6c"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
readDataLogger: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBWindowConfiguration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) contentsConfiguration: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'Data Logger'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 'SGSimDataloggerView'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) windowClass: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) readLayoutConfig: (recoveredStack3) name: (recoveredStack4).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) layoutConfiguration: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 'options'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) readDataLoggerOptions: (recoveredStack4).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := 'collapsedView'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := 'collapsedView'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := (recoveredStack3) getBoolean: (recoveredStack4).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := 'fileName'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := 'Filename'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack5 := [:block28115240Arg1 | 
    | block28115240Value0 block28115240Value1 |
    block28115240Value0 := block28115240Arg1.
    block28115240Value1 := (block28115240Value0) cData.
    block28115240Value1
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack6 := handler.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := (recoveredStack3) required: (recoveredStack4) do: (recoveredStack5) ifNot: (recoveredStack6).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := 'Channels'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := [:recoveredBlock114Arg1 | 
    | recoveredBlock114Local1 recoveredBlock114Value0 recoveredBlock114Value1 recoveredBlock114Value2 recoveredBlock114Value3 recoveredBlock114Value4 recoveredBlock114Value5 recoveredBlock114Value6 recoveredBlock114Value7 recoveredBlock114Value8 |
    recoveredBlock114Value0 := OrderedCollection.
    recoveredBlock114Value1 := (recoveredBlock114Value0) new.
    recoveredBlock114Local1 := recoveredBlock114Value1.
    recoveredBlock114Value2 := recoveredBlock114Arg1.
    recoveredBlock114Value3 := [:recoveredBlock114Block131Arg1 | 
    | recoveredBlock114Block131Value0 recoveredBlock114Block131Value1 recoveredBlock114Block131Value2 recoveredBlock114Block131Value3 |
    recoveredBlock114Block131Value0 := recoveredBlock114Block131Arg1.
    recoveredBlock114Block131Value1 := (self) getID: (recoveredBlock114Block131Value0) idAttr: ('ID') nameAttr: ('UniqueName').
    recoveredBlock114Block131Value2 := [:recoveredBlock114Block131Block146Arg1 | 
    | recoveredBlock114Block131Block146Value0 recoveredBlock114Block131Block146Value1 recoveredBlock114Block131Block146Value2 |
    recoveredBlock114Block131Block146Value0 := recoveredBlock114Local1.
    recoveredBlock114Block131Block146Value1 := recoveredBlock114Block131Block146Arg1.
    recoveredBlock114Block131Block146Value2 := (recoveredBlock114Block131Block146Value0) add: (recoveredBlock114Block131Block146Value1).
    recoveredBlock114Block131Block146Value2
].
    recoveredBlock114Block131Value3 := (recoveredBlock114Block131Value1) ifNotNil: (recoveredBlock114Block131Value2).
    recoveredBlock114Block131Value3
].
    (recoveredBlock114Value2) multiple: ('ElementReference') do: (recoveredBlock114Value3).
    recoveredBlock114Value4 := recoveredBlock114Arg1.
    recoveredBlock114Value5 := handler.
    (recoveredBlock114Value4) doneIfNot: (recoveredBlock114Value5).
    recoveredBlock114Value6 := recoveredLocal1.
    recoveredBlock114Value7 := recoveredBlock114Local1.
    recoveredBlock114Value8 := (recoveredBlock114Value6) at: ('dataConfigs') put: (recoveredBlock114Value7).
    recoveredBlock114Value8
].
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := 'triggered'.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := 'Trigger'.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := [:recoveredBlock200Arg1 | 
    | recoveredBlock200Local1 recoveredBlock200Local2 recoveredBlock200Value0 recoveredBlock200Value1 recoveredBlock200Value2 recoveredBlock200Value3 recoveredBlock200Value4 recoveredBlock200Value5 recoveredBlock200Value6 recoveredBlock200Value7 recoveredBlock200Value8 recoveredBlock200Value9 recoveredBlock200Value10 recoveredBlock200Value11 recoveredBlock200Value12 recoveredBlock200Value13 recoveredBlock200Value14 recoveredBlock200Value15 recoveredBlock200Value16 recoveredBlock200Value17 recoveredBlock200Value18 |
    recoveredBlock200Value0 := recoveredLocal1.
    (recoveredBlock200Value0) at: ('triggered') put: (true).
    recoveredBlock200Value1 := recoveredLocal1.
    recoveredBlock200Value2 := recoveredBlock200Arg1.
    recoveredBlock200Value3 := [:recoveredBlock200Block222Arg1 | 
    | recoveredBlock200Block222Value0 recoveredBlock200Block222Value1 |
    recoveredBlock200Block222Value0 := recoveredBlock200Block222Arg1.
    recoveredBlock200Block222Value1 := (self) getID: (recoveredBlock200Block222Value0) idAttr: ('ID') nameAttr: ('UniqueName').
    recoveredBlock200Block222Value1
].
    recoveredBlock200Value4 := handler.
    recoveredBlock200Value5 := (recoveredBlock200Value2) required: ('Channel') do: (recoveredBlock200Value3) ifNot: (recoveredBlock200Value4).
    (recoveredBlock200Value1) at: ('triggerChannel') put: (recoveredBlock200Value5).
    recoveredBlock200Value6 := recoveredLocal1.
    recoveredBlock200Value7 := recoveredBlock200Arg1.
    recoveredBlock200Value8 := (recoveredBlock200Value7) getNZQR: ('level').
    (recoveredBlock200Value6) at: ('triggerLevel') put: (recoveredBlock200Value8).
    recoveredBlock200Value9 := recoveredBlock200Arg1.
    recoveredBlock200Value10 := (recoveredBlock200Value9) getString: ('op').
    recoveredBlock200Local2 := recoveredBlock200Value10.
    recoveredBlock200Value11 := recoveredBlock200Local2.
    recoveredBlock200Value12 := (#('<=' '>=')) indexOf: (recoveredBlock200Value11).
    recoveredBlock200Local1 := recoveredBlock200Value12.
    recoveredBlock200Value13 := recoveredLocal1.
    recoveredBlock200Value14 := Association.
    recoveredBlock200Value15 := recoveredBlock200Local2.
    recoveredBlock200Value16 := recoveredBlock200Local1.
    recoveredBlock200Value17 := (recoveredBlock200Value14) key: (recoveredBlock200Value15) value: (recoveredBlock200Value16).
    recoveredBlock200Value18 := (recoveredBlock200Value13) at: ('triggerSlope') put: (recoveredBlock200Value17).
    recoveredBlock200Value18
].
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205a1d00; bytecode file offset 0xe9e61c"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
parseName: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := $/.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubStrings: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDigit.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeDataName: (recoveredStack2) index: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) removeFirst.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlOID.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 280.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeFirst.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 107].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) elementNotFound: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDigit.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 125].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeDataName: (recoveredStack2) index: (recoveredStack3).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := $(.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlMethodByName: (recoveredStack2).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1) elementNotFound: (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := 'variable'.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack4 := 'method'.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) unsuitableElement: (recoveredStack2) want: (recoveredStack3) is: (recoveredStack4).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeFirst.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlElementByName: (recoveredStack2).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredPC := 224.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := 'Call_73109'.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := 'variable'.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack4 := 'undefined'.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack1) unsuitableElement: (recoveredStack2) want: (recoveredStack3) is: (recoveredStack4).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlElementByName: (recoveredStack2).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 232] ifFalse: [recoveredPC := 228].
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack1) elementNotFound: (recoveredStack2).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := (recoveredStack1) isClassVariable.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 260].
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPrimitive.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 244] ifFalse: [recoveredPC := 248].
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredPC := 251.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := (recoveredStack1) asByteArray.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredPC := 269.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlOID.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlSGClass.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 290].
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205b6c78; bytecode file offset 0xeb35d4"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
readElementConfig: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) at: ('acquiConfig') put: ('Offline Call').
    recoveredValue3 := ('Kli') == ('Call_389889').
    recoveredValue4 := ('Kli') == ('DET102070').
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) getNNInt: ('acquisitionTaskID') default: (nil).
    recoveredValue7 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 |
    recoveredBlock39Value0 := recoveredLocal1.
    recoveredBlock39Value1 := recoveredBlock39Arg1.
    recoveredBlock39Value2 := (recoveredBlock39Value0) at: ('acquiConfig') put: (recoveredBlock39Value1).
    recoveredBlock39Value2
].
    (recoveredValue6) ifNotNil: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) getString: ('acquisitionTaskName') default: (nil).
    recoveredValue10 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Value0 recoveredBlock65Value1 recoveredBlock65Value2 |
    recoveredBlock65Value0 := recoveredLocal1.
    recoveredBlock65Value1 := recoveredBlock65Arg1.
    recoveredBlock65Value2 := (recoveredBlock65Value0) at: ('acquiConfig') put: (recoveredBlock65Value1).
    recoveredBlock65Value2
].
    (recoveredValue9) ifNotNil: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    (recoveredValue11) at: ('deviceName') put: (nil).
    recoveredValue12 := recoveredLocal1.
    (recoveredValue12) at: ('deviceType') put: ('SGSimDummyDevice').
    recoveredValue13 := ('todo') notNil.
    recoveredValue14 := recoveredLocal1.
    (recoveredValue14) at: ('hierName') put: (nil).
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := [:recoveredBlock122Arg1 | 
    | recoveredBlock122Value0 recoveredBlock122Value1 recoveredBlock122Value2 recoveredBlock122Value3 recoveredBlock122Value4 |
    recoveredBlock122Value0 := RBMeasureDataDisplayConfig.
    recoveredBlock122Value1 := (recoveredBlock122Value0) new.
    recoveredBlock122Value2 := (recoveredBlock122Value1) initialize.
    recoveredBlock122Value3 := recoveredBlock122Arg1.
    recoveredBlock122Value4 := (self) readMeasureConfig: (recoveredBlock122Value2) forElement: (recoveredBlock122Value3).
    recoveredBlock122Value4
].
    recoveredValue18 := [:recoveredBlock139Arg1 | 
    | recoveredBlock139Value0 recoveredBlock139Value1 recoveredBlock139Value2 recoveredBlock139Value3 recoveredBlock139Value4 |
    recoveredBlock139Value0 := RBMeasureDataDisplayConfig.
    recoveredBlock139Value1 := (recoveredBlock139Value0) new.
    recoveredBlock139Value2 := (recoveredBlock139Value1) initialize.
    recoveredBlock139Value3 := recoveredBlock139Arg1.
    recoveredBlock139Value4 := (self) readMeasureConfig: (recoveredBlock139Value2) forElement: (recoveredBlock139Value3).
    recoveredBlock139Value4
].
    recoveredValue19 := [:recoveredBlock157Arg1 | 
    | recoveredBlock157Value0 recoveredBlock157Value1 recoveredBlock157Value2 recoveredBlock157Value3 recoveredBlock157Value4 |
    recoveredBlock157Value0 := RBMeasureDataDisplayConfig.
    recoveredBlock157Value1 := (recoveredBlock157Value0) new.
    recoveredBlock157Value2 := (recoveredBlock157Value1) initialize.
    recoveredBlock157Value3 := recoveredBlock157Arg1.
    recoveredBlock157Value4 := (self) readMeasureConfig: (recoveredBlock157Value2) forElement: (recoveredBlock157Value3).
    recoveredBlock157Value4
].
    recoveredValue20 := [:recoveredBlock175Arg1 | 
    | recoveredBlock175Value0 recoveredBlock175Value1 recoveredBlock175Value2 recoveredBlock175Value3 recoveredBlock175Value4 |
    recoveredBlock175Value0 := RBMeasureDataDisplayConfig.
    recoveredBlock175Value1 := (recoveredBlock175Value0) new.
    recoveredBlock175Value2 := (recoveredBlock175Value1) initialize.
    recoveredBlock175Value3 := recoveredBlock175Arg1.
    recoveredBlock175Value4 := (self) readMeasureConfig: (recoveredBlock175Value2) forElement: (recoveredBlock175Value3).
    recoveredBlock175Value4
].
    recoveredValue21 := [:recoveredBlock193Arg1 | 
    | recoveredBlock193Value0 recoveredBlock193Value1 recoveredBlock193Value2 recoveredBlock193Value3 recoveredBlock193Value4 |
    recoveredBlock193Value0 := RBMeasureDataDisplayConfig.
    recoveredBlock193Value1 := (recoveredBlock193Value0) new.
    recoveredBlock193Value2 := (recoveredBlock193Value1) initialize.
    recoveredBlock193Value3 := recoveredBlock193Arg1.
    recoveredBlock193Value4 := (self) readMeasureConfig: (recoveredBlock193Value2) forElement: (recoveredBlock193Value3).
    recoveredBlock193Value4
].
    recoveredValue22 := [:recoveredBlock211Arg1 | 
    | recoveredBlock211Value0 recoveredBlock211Value1 recoveredBlock211Value2 recoveredBlock211Value3 recoveredBlock211Value4 |
    recoveredBlock211Value0 := RBCalScalarDataDisplayConfig.
    recoveredBlock211Value1 := (recoveredBlock211Value0) new.
    recoveredBlock211Value2 := (recoveredBlock211Value1) initialize.
    recoveredBlock211Value3 := recoveredBlock211Arg1.
    recoveredBlock211Value4 := (self) readCalibrationConfig: (recoveredBlock211Value2) forElement: (recoveredBlock211Value3).
    recoveredBlock211Value4
].
    recoveredValue23 := [:recoveredBlock229Arg1 | 
    | recoveredBlock229Value0 recoveredBlock229Value1 recoveredBlock229Value2 recoveredBlock229Value3 recoveredBlock229Value4 |
    recoveredBlock229Value0 := RBCalTableDataDisplayConfig.
    recoveredBlock229Value1 := (recoveredBlock229Value0) new.
    recoveredBlock229Value2 := (recoveredBlock229Value1) initialize.
    recoveredBlock229Value3 := recoveredBlock229Arg1.
    recoveredBlock229Value4 := (self) readCalibrationConfig: (recoveredBlock229Value2) forElement: (recoveredBlock229Value3).
    recoveredBlock229Value4
].
    recoveredValue24 := [:recoveredBlock247Arg1 | 
    | recoveredBlock247Value0 recoveredBlock247Value1 recoveredBlock247Value2 recoveredBlock247Value3 recoveredBlock247Value4 |
    recoveredBlock247Value0 := RBCalCharTableDataDisplayConfig.
    recoveredBlock247Value1 := (recoveredBlock247Value0) new.
    recoveredBlock247Value2 := (recoveredBlock247Value1) initialize.
    recoveredBlock247Value3 := recoveredBlock247Arg1.
    recoveredBlock247Value4 := (self) readCalibrationConfig: (recoveredBlock247Value2) forElement: (recoveredBlock247Value3).
    recoveredBlock247Value4
].
    recoveredValue25 := [].
    recoveredValue26 := (recoveredValue16) choice: ('OscilloscopeConfig') do: (recoveredValue17) choice: ('VerticalBarConfig') do: (recoveredValue18) choice: ('HorizontalBarConfig') do: (recoveredValue19) choice: ('NumericConfig') do: (recoveredValue20) choice: ('BitConfig') do: (recoveredValue21) choice: ('NumericEditorConfig') do: (recoveredValue22) choice: ('TableEditorConfig') do: (recoveredValue23) choice: ('GraphicalTableEditorConfig') do: (recoveredValue24) ifNot: (recoveredValue25).
    (recoveredValue15) at: ('displayConfig') put: (recoveredValue26).
    recoveredValue27 := recoveredArg1.
    recoveredValue28 := [:recoveredBlock275Arg1 | 
    | recoveredBlock275Local1 recoveredBlock275Stack0 recoveredBlock275Stack1 recoveredBlock275Stack2 recoveredBlock275Stack3 recoveredBlock275Stack4 recoveredBlock275PC recoveredBlock275Step recoveredBlock275Done recoveredBlock275Result |
    recoveredBlock275Stack0 := self.
    recoveredBlock275PC := 282.
    recoveredBlock275Done := false.
    [recoveredBlock275Done not] whileTrue: [
        recoveredBlock275Step := recoveredBlock275PC.
        recoveredBlock275Step = 282 ifTrue: [
            recoveredBlock275Stack1 := recoveredBlock275Arg1.
            recoveredBlock275PC := 283.
        ].
        recoveredBlock275Step = 283 ifTrue: [
            recoveredBlock275Stack2 := 'ID'.
            recoveredBlock275PC := 285.
        ].
        recoveredBlock275Step = 285 ifTrue: [
            recoveredBlock275Stack3 := 'UniqueName'.
            recoveredBlock275PC := 287.
        ].
        recoveredBlock275Step = 287 ifTrue: [
            recoveredBlock275Stack0 := (recoveredBlock275Stack0) getID: (recoveredBlock275Stack1) idAttr: (recoveredBlock275Stack2) nameAttr: (recoveredBlock275Stack3).
            recoveredBlock275PC := 290.
        ].
        recoveredBlock275Step = 290 ifTrue: [
            recoveredBlock275Local1 := recoveredBlock275Stack0.
            recoveredBlock275PC := 291.
        ].
        recoveredBlock275Step = 291 ifTrue: [
            recoveredBlock275Stack0 := recoveredBlock275Local1.
            recoveredBlock275PC := 292.
        ].
        recoveredBlock275Step = 292 ifTrue: [
            (recoveredBlock275Stack0 ~~ nil) ifTrue: [recoveredBlock275PC := 298] ifFalse: [recoveredBlock275PC := 296].
        ].
        recoveredBlock275Step = 296 ifTrue: [
            recoveredBlock275Stack0 := nil.
            recoveredBlock275PC := 297.
        ].
        recoveredBlock275Step = 297 ifTrue: [
            ^recoveredBlock275Stack0
        ].
        recoveredBlock275Step = 298 ifTrue: [
            recoveredBlock275Stack0 := recoveredLocal1.
            recoveredBlock275PC := 301.
        ].
        recoveredBlock275Step = 301 ifTrue: [
            recoveredBlock275Stack1 := 'name'.
            recoveredBlock275PC := 303.
        ].
        recoveredBlock275Step = 303 ifTrue: [
            recoveredBlock275Stack2 := recoveredBlock275Local1.
            recoveredBlock275PC := 304.
        ].
        recoveredBlock275Step = 304 ifTrue: [
            recoveredBlock275Stack0 := (recoveredBlock275Stack0) at: (recoveredBlock275Stack1) put: (recoveredBlock275Stack2).
            recoveredBlock275PC := 306.
        ].
        recoveredBlock275Step = 306 ifTrue: [
            recoveredBlock275Result := recoveredBlock275Stack0.
            recoveredBlock275Done := true.
        ].
    ].
    recoveredBlock275Result
].
    recoveredValue29 := handler.
    (recoveredValue27) required: ('ElementReference') do: (recoveredValue28) ifNot: (recoveredValue29).
    recoveredValue30 := recoveredLocal1.
    ^recoveredValue30
! !

"ASDBase.ic method 0x20605da8; bytecode file offset 0xf0274c"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
readWidgetGroup: recoveredArg1 sim: recoveredArg2 measures: recoveredArg3 calibrations: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Die'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'TFS_325209'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := RBWindowConfiguration.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'todo'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := '1.0'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) versionString: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 'todo'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) childConfigurations: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := Dictionary.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) contentsConfiguration: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 'Name'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := 'longName'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) readLayoutConfig: (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := 'Widget'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := [:recoveredBlock101Arg1 | 
    | recoveredBlock101Stack0 recoveredBlock101Stack1 recoveredBlock101Stack2 recoveredBlock101Stack3 recoveredBlock101Stack4 recoveredBlock101Stack5 recoveredBlock101Stack6 recoveredBlock101PC recoveredBlock101Step recoveredBlock101Done recoveredBlock101Result |
    recoveredBlock101Stack0 := self.
    recoveredBlock101PC := 108.
    recoveredBlock101Done := false.
    [recoveredBlock101Done not] whileTrue: [
        recoveredBlock101Step := recoveredBlock101PC.
        recoveredBlock101Step = 108 ifTrue: [
            recoveredBlock101Stack1 := recoveredLocal1.
            recoveredBlock101PC := 111.
        ].
        recoveredBlock101Step = 111 ifTrue: [
            (recoveredBlock101Stack1 ~~ nil) ifTrue: [recoveredBlock101PC := 136] ifFalse: [recoveredBlock101PC := 114].
        ].
        recoveredBlock101Step = 114 ifTrue: [
            recoveredBlock101Stack1 := recoveredBlock101Arg1.
            recoveredBlock101PC := 115.
        ].
        recoveredBlock101Step = 115 ifTrue: [
            recoveredBlock101Stack2 := 'Type'.
            recoveredBlock101PC := 117.
        ].
        recoveredBlock101Step = 117 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) getString: (recoveredBlock101Stack2).
            recoveredBlock101PC := 119.
        ].
        recoveredBlock101Step = 119 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) asSymbol.
            recoveredBlock101PC := 121.
        ].
        recoveredBlock101Step = 121 ifTrue: [
            recoveredLocal1 := recoveredBlock101Stack1.
            recoveredBlock101PC := 124.
        ].
        recoveredBlock101Step = 124 ifTrue: [
            recoveredBlock101Stack1 := recoveredLocal7.
            recoveredBlock101PC := 127.
        ].
        recoveredBlock101Step = 127 ifTrue: [
            recoveredBlock101Stack2 := recoveredLocal1.
            recoveredBlock101PC := 130.
        ].
        recoveredBlock101Step = 130 ifTrue: [
            (recoveredBlock101Stack1) windowClass: (recoveredBlock101Stack2).
            recoveredBlock101PC := 132.
        ].
        recoveredBlock101Step = 132 ifTrue: [
            recoveredBlock101PC := 172.
        ].
        recoveredBlock101Step = 136 ifTrue: [
            recoveredBlock101Stack1 := recoveredLocal1.
            recoveredBlock101PC := 139.
        ].
        recoveredBlock101Step = 139 ifTrue: [
            recoveredBlock101Stack2 := recoveredBlock101Arg1.
            recoveredBlock101PC := 140.
        ].
        recoveredBlock101Step = 140 ifTrue: [
            recoveredBlock101Stack3 := 'Type'.
            recoveredBlock101PC := 142.
        ].
        recoveredBlock101Step = 142 ifTrue: [
            recoveredBlock101Stack2 := (recoveredBlock101Stack2) getString: (recoveredBlock101Stack3).
            recoveredBlock101PC := 144.
        ].
        recoveredBlock101Step = 144 ifTrue: [
            recoveredBlock101Stack2 := (recoveredBlock101Stack2) asSymbol.
            recoveredBlock101PC := 146.
        ].
        recoveredBlock101Step = 146 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) ~= (recoveredBlock101Stack2).
            recoveredBlock101PC := 147.
        ].
        recoveredBlock101Step = 147 ifTrue: [
            (recoveredBlock101Stack1) ifTrue: [recoveredBlock101PC := 150] ifFalse: [recoveredBlock101PC := 172].
        ].
        recoveredBlock101Step = 150 ifTrue: [
            recoveredBlock101Stack1 := controller.
            recoveredBlock101PC := 152.
        ].
        recoveredBlock101Step = 152 ifTrue: [
            recoveredBlock101Stack2 := ASDXMLImportIssueInconsistency.
            recoveredBlock101PC := 154.
        ].
        recoveredBlock101Step = 154 ifTrue: [
            recoveredBlock101Stack2 := (recoveredBlock101Stack2) new.
            recoveredBlock101PC := 155.
        ].
        recoveredBlock101Step = 155 ifTrue: [
            recoveredBlock101Stack3 := protoClass.
            recoveredBlock101PC := 157.
        ].
        recoveredBlock101Step = 157 ifTrue: [
            recoveredBlock101Stack4 := 'Different widget types in group '.
            recoveredBlock101PC := 159.
        ].
        recoveredBlock101Step = 159 ifTrue: [
            recoveredBlock101Stack5 := recoveredLocal4.
            recoveredBlock101PC := 162.
        ].
        recoveredBlock101Step = 162 ifTrue: [
            recoveredBlock101Stack4 := (recoveredBlock101Stack4) , (recoveredBlock101Stack5).
            recoveredBlock101PC := 164.
        ].
        recoveredBlock101Step = 164 ifTrue: [
            recoveredBlock101Stack5 := false.
            recoveredBlock101PC := 165.
        ].
        recoveredBlock101Step = 165 ifTrue: [
            recoveredBlock101Stack2 := (recoveredBlock101Stack2) initOn: (recoveredBlock101Stack3) text: (recoveredBlock101Stack4) fatal: (recoveredBlock101Stack5).
            recoveredBlock101PC := 168.
        ].
        recoveredBlock101Step = 168 ifTrue: [
            (recoveredBlock101Stack1) addIssue: (recoveredBlock101Stack2).
            recoveredBlock101PC := 170.
        ].
        recoveredBlock101Step = 170 ifTrue: [
            recoveredBlock101Stack1 := nil.
            recoveredBlock101PC := 171.
        ].
        recoveredBlock101Step = 171 ifTrue: [
            ^recoveredBlock101Stack1
        ].
        recoveredBlock101Step = 172 ifTrue: [
            recoveredBlock101Stack1 := recoveredLocal2.
            recoveredBlock101PC := 175.
        ].
        recoveredBlock101Step = 175 ifTrue: [
            (recoveredBlock101Stack1 ~~ nil) ifTrue: [recoveredBlock101PC := 190] ifFalse: [recoveredBlock101PC := 178].
        ].
        recoveredBlock101Step = 178 ifTrue: [
            recoveredBlock101Stack1 := recoveredBlock101Arg1.
            recoveredBlock101PC := 179.
        ].
        recoveredBlock101Step = 179 ifTrue: [
            recoveredBlock101Stack2 := 'Category'.
            recoveredBlock101PC := 181.
        ].
        recoveredBlock101Step = 181 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) getEnum: (recoveredBlock101Stack2).
            recoveredBlock101PC := 183.
        ].
        recoveredBlock101Step = 183 ifTrue: [
            recoveredLocal2 := recoveredBlock101Stack1.
            recoveredBlock101PC := 186.
        ].
        recoveredBlock101Step = 186 ifTrue: [
            recoveredBlock101PC := 224.
        ].
        recoveredBlock101Step = 190 ifTrue: [
            recoveredBlock101Stack1 := recoveredLocal2.
            recoveredBlock101PC := 193.
        ].
        recoveredBlock101Step = 193 ifTrue: [
            recoveredBlock101Stack2 := recoveredBlock101Arg1.
            recoveredBlock101PC := 194.
        ].
        recoveredBlock101Step = 194 ifTrue: [
            recoveredBlock101Stack3 := 'Category'.
            recoveredBlock101PC := 196.
        ].
        recoveredBlock101Step = 196 ifTrue: [
            recoveredBlock101Stack2 := (recoveredBlock101Stack2) getEnum: (recoveredBlock101Stack3).
            recoveredBlock101PC := 198.
        ].
        recoveredBlock101Step = 198 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) ~= (recoveredBlock101Stack2).
            recoveredBlock101PC := 199.
        ].
        recoveredBlock101Step = 199 ifTrue: [
            (recoveredBlock101Stack1) ifTrue: [recoveredBlock101PC := 202] ifFalse: [recoveredBlock101PC := 224].
        ].
        recoveredBlock101Step = 202 ifTrue: [
            recoveredBlock101Stack1 := controller.
            recoveredBlock101PC := 204.
        ].
        recoveredBlock101Step = 204 ifTrue: [
            recoveredBlock101Stack2 := ASDXMLImportIssueInconsistency.
            recoveredBlock101PC := 206.
        ].
        recoveredBlock101Step = 206 ifTrue: [
            recoveredBlock101Stack2 := (recoveredBlock101Stack2) new.
            recoveredBlock101PC := 207.
        ].
        recoveredBlock101Step = 207 ifTrue: [
            recoveredBlock101Stack3 := protoClass.
            recoveredBlock101PC := 209.
        ].
        recoveredBlock101Step = 209 ifTrue: [
            recoveredBlock101Stack4 := 'Different widget categories in group '.
            recoveredBlock101PC := 211.
        ].
        recoveredBlock101Step = 211 ifTrue: [
            recoveredBlock101Stack5 := recoveredLocal4.
            recoveredBlock101PC := 214.
        ].
        recoveredBlock101Step = 214 ifTrue: [
            recoveredBlock101Stack4 := (recoveredBlock101Stack4) , (recoveredBlock101Stack5).
            recoveredBlock101PC := 216.
        ].
        recoveredBlock101Step = 216 ifTrue: [
            recoveredBlock101Stack5 := false.
            recoveredBlock101PC := 217.
        ].
        recoveredBlock101Step = 217 ifTrue: [
            recoveredBlock101Stack2 := (recoveredBlock101Stack2) initOn: (recoveredBlock101Stack3) text: (recoveredBlock101Stack4) fatal: (recoveredBlock101Stack5).
            recoveredBlock101PC := 220.
        ].
        recoveredBlock101Step = 220 ifTrue: [
            (recoveredBlock101Stack1) addIssue: (recoveredBlock101Stack2).
            recoveredBlock101PC := 222.
        ].
        recoveredBlock101Step = 222 ifTrue: [
            recoveredBlock101Stack1 := nil.
            recoveredBlock101PC := 223.
        ].
        recoveredBlock101Step = 223 ifTrue: [
            ^recoveredBlock101Stack1
        ].
        recoveredBlock101Step = 224 ifTrue: [
            recoveredBlock101Stack1 := recoveredBlock101Arg1.
            recoveredBlock101PC := 225.
        ].
        recoveredBlock101Step = 225 ifTrue: [
            recoveredBlock101Stack2 := 'WidgetData'.
            recoveredBlock101PC := 227.
        ].
        recoveredBlock101Step = 227 ifTrue: [
            recoveredBlock101Stack3 := [:recoveredBlock101Block227Arg1 | 
    | recoveredBlock101Block227Stack0 recoveredBlock101Block227Stack1 recoveredBlock101Block227Stack2 recoveredBlock101Block227Stack3 recoveredBlock101Block227Stack4 recoveredBlock101Block227Stack5 recoveredBlock101Block227PC recoveredBlock101Block227Step recoveredBlock101Block227Done recoveredBlock101Block227Result |
    recoveredBlock101Block227Stack0 := self.
    recoveredBlock101Block227PC := 234.
    recoveredBlock101Block227Done := false.
    [recoveredBlock101Block227Done not] whileTrue: [
        recoveredBlock101Block227Step := recoveredBlock101Block227PC.
        recoveredBlock101Block227Step = 234 ifTrue: [
            recoveredBlock101Block227Stack1 := recoveredBlock101Block227Arg1.
            recoveredBlock101Block227PC := 235.
        ].
        recoveredBlock101Block227Step = 235 ifTrue: [
            recoveredBlock101Block227Stack2 := 'ControlType'.
            recoveredBlock101Block227PC := 237.
        ].
        recoveredBlock101Block227Step = 237 ifTrue: [
            recoveredBlock101Block227Stack3 := [:block2811d064Arg1 | 
    nil
].
            recoveredBlock101Block227PC := 239.
        ].
        recoveredBlock101Block227Step = 239 ifTrue: [
            recoveredBlock101Block227PC := 244.
        ].
        recoveredBlock101Block227Step = 244 ifTrue: [
            (recoveredBlock101Block227Stack1) optional: (recoveredBlock101Block227Stack2) do: (recoveredBlock101Block227Stack3).
            recoveredBlock101Block227PC := 246.
        ].
        recoveredBlock101Block227Step = 246 ifTrue: [
            recoveredBlock101Block227Stack1 := recoveredBlock101Block227Arg1.
            recoveredBlock101Block227PC := 247.
        ].
        recoveredBlock101Block227Step = 247 ifTrue: [
            recoveredBlock101Block227Stack2 := 'WidgetSettings'.
            recoveredBlock101Block227PC := 249.
        ].
        recoveredBlock101Block227Step = 249 ifTrue: [
            recoveredBlock101Block227Stack3 := [:recoveredBlock101Block227Block249Arg1 | 
    | recoveredBlock101Block227Block249Value0 recoveredBlock101Block227Block249Value1 recoveredBlock101Block227Block249Value2 recoveredBlock101Block227Block249Value3 recoveredBlock101Block227Block249Value4 recoveredBlock101Block227Block249Value5 recoveredBlock101Block227Block249Value6 recoveredBlock101Block227Block249Value7 recoveredBlock101Block227Block249Value8 recoveredBlock101Block227Block249Value9 recoveredBlock101Block227Block249Value10 |
    recoveredBlock101Block227Block249Value0 := recoveredLocal7.
    recoveredBlock101Block227Block249Value1 := (recoveredBlock101Block227Block249Value0) contentsConfiguration.
    recoveredBlock101Block227Block249Value2 := recoveredBlock101Block227Block249Arg1.
    recoveredBlock101Block227Block249Value3 := [:recoveredBlock101Block227Block249Block266Arg1 | 
    | recoveredBlock101Block227Block249Block266Value0 recoveredBlock101Block227Block249Block266Value1 recoveredBlock101Block227Block249Block266Value2 recoveredBlock101Block227Block249Block266Value3 recoveredBlock101Block227Block249Block266Value4 |
    recoveredBlock101Block227Block249Block266Value0 := RBMeasureOsciViewConfig.
    recoveredBlock101Block227Block249Block266Value1 := (recoveredBlock101Block227Block249Block266Value0) new.
    recoveredBlock101Block227Block249Block266Value2 := (recoveredBlock101Block227Block249Block266Value1) initialize.
    recoveredBlock101Block227Block249Block266Value3 := recoveredBlock101Block227Block249Block266Arg1.
    recoveredBlock101Block227Block249Block266Value4 := (self) readMeasureConfig: (recoveredBlock101Block227Block249Block266Value2) forElement: (recoveredBlock101Block227Block249Block266Value3).
    recoveredBlock101Block227Block249Block266Value4
].
    recoveredBlock101Block227Block249Value4 := [:recoveredBlock101Block227Block249Block283Arg1 | 
    | recoveredBlock101Block227Block249Block283Value0 recoveredBlock101Block227Block249Block283Value1 recoveredBlock101Block227Block249Block283Value2 recoveredBlock101Block227Block249Block283Value3 recoveredBlock101Block227Block249Block283Value4 |
    recoveredBlock101Block227Block249Block283Value0 := RBCalViewConfig.
    recoveredBlock101Block227Block249Block283Value1 := (recoveredBlock101Block227Block249Block283Value0) new.
    recoveredBlock101Block227Block249Block283Value2 := (recoveredBlock101Block227Block249Block283Value1) initialize.
    recoveredBlock101Block227Block249Block283Value3 := recoveredBlock101Block227Block249Block283Arg1.
    recoveredBlock101Block227Block249Block283Value4 := (self) readCalibrationConfig: (recoveredBlock101Block227Block249Block283Value2) forElement: (recoveredBlock101Block227Block249Block283Value3).
    recoveredBlock101Block227Block249Block283Value4
].
    recoveredBlock101Block227Block249Value5 := [:recoveredBlock101Block227Block249Block301Arg1 | 
    | recoveredBlock101Block227Block249Block301Value0 recoveredBlock101Block227Block249Block301Value1 recoveredBlock101Block227Block249Block301Value2 recoveredBlock101Block227Block249Block301Value3 recoveredBlock101Block227Block249Block301Value4 |
    recoveredBlock101Block227Block249Block301Value0 := RBCalTwoDGraphViewConfig.
    recoveredBlock101Block227Block249Block301Value1 := (recoveredBlock101Block227Block249Block301Value0) new.
    recoveredBlock101Block227Block249Block301Value2 := (recoveredBlock101Block227Block249Block301Value1) initialize.
    recoveredBlock101Block227Block249Block301Value3 := recoveredBlock101Block227Block249Block301Arg1.
    recoveredBlock101Block227Block249Block301Value4 := (self) readCalibrationConfig: (recoveredBlock101Block227Block249Block301Value2) forElement: (recoveredBlock101Block227Block249Block301Value3).
    recoveredBlock101Block227Block249Block301Value4
].
    recoveredBlock101Block227Block249Value6 := [].
    recoveredBlock101Block227Block249Value7 := (recoveredBlock101Block227Block249Value2) choice: ('OscilloscopeSettings') do: (recoveredBlock101Block227Block249Value3) choice: ('TableEditorSettings') do: (recoveredBlock101Block227Block249Value4) choice: ('GraphicalTableEditorSettings') do: (recoveredBlock101Block227Block249Value5) ifNot: (recoveredBlock101Block227Block249Value6).
    (recoveredBlock101Block227Block249Value1) at: ('viewConfig') put: (recoveredBlock101Block227Block249Value7).
    recoveredBlock101Block227Block249Value8 := recoveredBlock101Block227Block249Arg1.
    recoveredBlock101Block227Block249Value9 := [:recoveredBlock101Block227Block249Block327Arg1 | 
    | recoveredBlock101Block227Block249Block327Value0 recoveredBlock101Block227Block249Block327Value1 recoveredBlock101Block227Block249Block327Value2 recoveredBlock101Block227Block249Block327Value3 |
    recoveredBlock101Block227Block249Block327Value0 := recoveredBlock101Block227Block249Block327Arg1.
    recoveredBlock101Block227Block249Block327Value1 := (self) readElementConfig: (recoveredBlock101Block227Block249Block327Value0).
    recoveredBlock101Block227Block249Block327Value2 := [:recoveredBlock101Block227Block249Block327Block337Arg1 | 
    | recoveredBlock101Block227Block249Block327Block337Value0 recoveredBlock101Block227Block249Block327Block337Value1 recoveredBlock101Block227Block249Block327Block337Value2 |
    recoveredBlock101Block227Block249Block327Block337Value0 := recoveredLocal5.
    recoveredBlock101Block227Block249Block327Block337Value1 := recoveredBlock101Block227Block249Block327Block337Arg1.
    recoveredBlock101Block227Block249Block327Block337Value2 := (recoveredBlock101Block227Block249Block327Block337Value0) add: (recoveredBlock101Block227Block249Block327Block337Value1).
    recoveredBlock101Block227Block249Block327Block337Value2
].
    recoveredBlock101Block227Block249Block327Value3 := (recoveredBlock101Block227Block249Block327Value1) ifNotNil: (recoveredBlock101Block227Block249Block327Value2).
    recoveredBlock101Block227Block249Block327Value3
].
    recoveredBlock101Block227Block249Value10 := (recoveredBlock101Block227Block249Value8) multiple: ('ElementConfig') do: (recoveredBlock101Block227Block249Value9).
    recoveredBlock101Block227Block249Value10
].
            recoveredBlock101Block227PC := 357.
        ].
        recoveredBlock101Block227Step = 357 ifTrue: [
            recoveredBlock101Block227Stack4 := handler.
            recoveredBlock101Block227PC := 359.
        ].
        recoveredBlock101Block227Step = 359 ifTrue: [
            (recoveredBlock101Block227Stack1) required: (recoveredBlock101Block227Stack2) do: (recoveredBlock101Block227Stack3) ifNot: (recoveredBlock101Block227Stack4).
            recoveredBlock101Block227PC := 362.
        ].
        recoveredBlock101Block227Step = 362 ifTrue: [
            recoveredBlock101Block227Stack1 := recoveredBlock101Block227Arg1.
            recoveredBlock101Block227PC := 363.
        ].
        recoveredBlock101Block227Step = 363 ifTrue: [
            recoveredBlock101Block227Stack2 := handler.
            recoveredBlock101Block227PC := 365.
        ].
        recoveredBlock101Block227Step = 365 ifTrue: [
            recoveredBlock101Block227Stack1 := (recoveredBlock101Block227Stack1) doneIfNot: (recoveredBlock101Block227Stack2).
            recoveredBlock101Block227PC := 367.
        ].
        recoveredBlock101Block227Step = 367 ifTrue: [
            recoveredBlock101Block227Result := recoveredBlock101Block227Stack1.
            recoveredBlock101Block227Done := true.
        ].
    ].
    recoveredBlock101Block227Result
].
            recoveredBlock101PC := 368.
        ].
        recoveredBlock101Step = 368 ifTrue: [
            recoveredBlock101Stack4 := handler.
            recoveredBlock101PC := 370.
        ].
        recoveredBlock101Step = 370 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) required: (recoveredBlock101Stack2) do: (recoveredBlock101Stack3) ifNot: (recoveredBlock101Stack4).
            recoveredBlock101PC := 373.
        ].
        recoveredBlock101Step = 373 ifTrue: [
            recoveredBlock101Result := recoveredBlock101Stack1.
            recoveredBlock101Done := true.
        ].
    ].
    recoveredBlock101Result
].
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            (recoveredStack0) multiple: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack0 := (recoveredStack0) contentsConfiguration.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack1 := 'dataConfigs'.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            (recoveredStack0) layoutConfiguration: (recoveredStack1).
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 449] ifFalse: [recoveredPC := 402].
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := 'Editor'.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOfString: (recoveredStack1).
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 432] ifFalse: [recoveredPC := 418].
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack0 := (recoveredStack0) windowClass.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack1 := 'RBTwoDCharTable3DViewer'.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 438] ifFalse: [recoveredPC := 432].
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredPC := 441.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            (recoveredStack0) doneIfNot: (recoveredStack1).
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20609670; bytecode file offset 0xf0602c"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
readDataGenerator: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) getBoolean: ('automaticStop').
    (recoveredValue2) at: ('AutomaticStop') put: (recoveredValue4).
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) getBoolean: ('interpolate').
    (recoveredValue5) at: ('Interpolate') put: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) getBoolean: ('repeat').
    (recoveredValue8) at: ('Repeat') put: (recoveredValue10).
    recoveredValue11 := ('Rnz') == ('EHI_2008400346').
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) getBoolean: ('ignoreTimestampOffset').
    (recoveredValue12) at: ('IgnoreTimestampOffset') put: (recoveredValue14).
    recoveredValue15 := LookupTable.
    recoveredValue16 := (recoveredValue15) new.
    recoveredLocal1 := recoveredValue16.
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Local1 recoveredBlock83Local2 recoveredBlock83Local3 recoveredBlock83Stack0 recoveredBlock83Stack1 recoveredBlock83Stack2 recoveredBlock83Stack3 recoveredBlock83Stack4 recoveredBlock83Stack5 recoveredBlock83Stack6 recoveredBlock83Stack7 recoveredBlock83Stack8 recoveredBlock83Stack9 recoveredBlock83Stack10 recoveredBlock83Stack11 recoveredBlock83Stack12 recoveredBlock83Stack13 recoveredBlock83Stack14 recoveredBlock83Stack15 recoveredBlock83Stack16 recoveredBlock83Stack17 recoveredBlock83Stack18 recoveredBlock83Stack19 recoveredBlock83Stack20 recoveredBlock83PC recoveredBlock83Step recoveredBlock83Done recoveredBlock83Result |
    recoveredBlock83Stack0 := self.
    recoveredBlock83PC := 90.
    recoveredBlock83Done := false.
    [recoveredBlock83Done not] whileTrue: [
        recoveredBlock83Step := recoveredBlock83PC.
        recoveredBlock83Step = 90 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Arg1.
            recoveredBlock83PC := 93.
        ].
        recoveredBlock83Step = 93 ifTrue: [
            recoveredBlock83Stack2 := 'ID'.
            recoveredBlock83PC := 95.
        ].
        recoveredBlock83Step = 95 ifTrue: [
            recoveredBlock83Stack3 := 'Name'.
            recoveredBlock83PC := 97.
        ].
        recoveredBlock83Step = 97 ifTrue: [
            recoveredBlock83Stack0 := (recoveredBlock83Stack0) getID: (recoveredBlock83Stack1) idAttr: (recoveredBlock83Stack2) nameAttr: (recoveredBlock83Stack3).
            recoveredBlock83PC := 100.
        ].
        recoveredBlock83Step = 100 ifTrue: [
            recoveredBlock83Local3 := recoveredBlock83Stack0.
            recoveredBlock83PC := 103.
        ].
        recoveredBlock83Step = 103 ifTrue: [
            recoveredBlock83Stack0 := nil.
            recoveredBlock83PC := 104.
        ].
        recoveredBlock83Step = 104 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local3.
            recoveredBlock83PC := 107.
        ].
        recoveredBlock83Step = 107 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 368] ifFalse: [recoveredBlock83PC := 110].
        ].
        recoveredBlock83Step = 110 ifTrue: [
            recoveredBlock83PC := 111.
        ].
        recoveredBlock83Step = 111 ifTrue: [
            recoveredBlock83Stack0 := Array.
            recoveredBlock83PC := 113.
        ].
        recoveredBlock83Step = 113 ifTrue: [
            recoveredBlock83Stack1 := 7.
            recoveredBlock83PC := 115.
        ].
        recoveredBlock83Step = 115 ifTrue: [
            recoveredBlock83Stack0 := (recoveredBlock83Stack0) new: (recoveredBlock83Stack1).
            recoveredBlock83PC := 117.
        ].
        recoveredBlock83Step = 117 ifTrue: [
            recoveredBlock83Local2 := recoveredBlock83Stack0.
            recoveredBlock83PC := 120.
        ].
        recoveredBlock83Step = 120 ifTrue: [
            recoveredBlock83Stack0 := recoveredBlock83Local2.
            recoveredBlock83PC := 123.
        ].
        recoveredBlock83Step = 123 ifTrue: [
            recoveredBlock83Stack1 := 4.
            recoveredBlock83PC := 125.
        ].
        recoveredBlock83Step = 125 ifTrue: [
            recoveredBlock83Stack2 := #[0 0 0 0 0 0 240 63].
            recoveredBlock83PC := 127.
        ].
        recoveredBlock83Step = 127 ifTrue: [
            (recoveredBlock83Stack0) at: (recoveredBlock83Stack1) put: (recoveredBlock83Stack2).
            recoveredBlock83PC := 129.
        ].
        recoveredBlock83Step = 129 ifTrue: [
            recoveredBlock83Stack0 := recoveredBlock83Local2.
            recoveredBlock83PC := 132.
        ].
        recoveredBlock83Step = 132 ifTrue: [
            recoveredBlock83Stack1 := 6.
            recoveredBlock83PC := 134.
        ].
        recoveredBlock83Step = 134 ifTrue: [
            recoveredBlock83Stack2 := ''.
            recoveredBlock83PC := 136.
        ].
        recoveredBlock83Step = 136 ifTrue: [
            (recoveredBlock83Stack0) at: (recoveredBlock83Stack1) put: (recoveredBlock83Stack2).
            recoveredBlock83PC := 138.
        ].
        recoveredBlock83Step = 138 ifTrue: [
            recoveredBlock83Stack0 := recoveredBlock83Local2.
            recoveredBlock83PC := 141.
        ].
        recoveredBlock83Step = 141 ifTrue: [
            recoveredBlock83Stack1 := 7.
            recoveredBlock83PC := 143.
        ].
        recoveredBlock83Step = 143 ifTrue: [
            recoveredBlock83Stack2 := #[0 0 0 0 0 0 0 0].
            recoveredBlock83PC := 145.
        ].
        recoveredBlock83Step = 145 ifTrue: [
            (recoveredBlock83Stack0) at: (recoveredBlock83Stack1) put: (recoveredBlock83Stack2).
            recoveredBlock83PC := 147.
        ].
        recoveredBlock83Step = 147 ifTrue: [
            recoveredBlock83Stack0 := recoveredBlock83Arg1.
            recoveredBlock83PC := 150.
        ].
        recoveredBlock83Step = 150 ifTrue: [
            recoveredBlock83Stack1 := 'Constant'.
            recoveredBlock83PC := 152.
        ].
        recoveredBlock83Step = 152 ifTrue: [
            recoveredBlock83Stack2 := [:recoveredBlock83Block152Arg1 | 
    | recoveredBlock83Block152Value0 recoveredBlock83Block152Value1 |
    recoveredBlock83Block152Value0 := recoveredBlock83Block152Arg1.
    recoveredBlock83Block152Value1 := recoveredBlock83Local2.
    (self) readDataGenerator: (recoveredBlock83Block152Value0) simple: (recoveredBlock83Block152Value1).
    'constant'
].
            recoveredBlock83PC := 167.
        ].
        recoveredBlock83Step = 167 ifTrue: [
            recoveredBlock83Stack3 := 'Sinus'.
            recoveredBlock83PC := 169.
        ].
        recoveredBlock83Step = 169 ifTrue: [
            recoveredBlock83Stack4 := [:recoveredBlock83Block169Arg1 | 
    | recoveredBlock83Block169Value0 recoveredBlock83Block169Value1 |
    recoveredBlock83Block169Value0 := recoveredBlock83Block169Arg1.
    recoveredBlock83Block169Value1 := recoveredBlock83Local2.
    (self) readDataGenerator: (recoveredBlock83Block169Value0) periodic: (recoveredBlock83Block169Value1).
    'sinus'
].
            recoveredBlock83PC := 185.
        ].
        recoveredBlock83Step = 185 ifTrue: [
            recoveredBlock83Stack5 := 'Ramp'.
            recoveredBlock83PC := 187.
        ].
        recoveredBlock83Step = 187 ifTrue: [
            recoveredBlock83Stack6 := [:recoveredBlock83Block187Arg1 | 
    | recoveredBlock83Block187Value0 recoveredBlock83Block187Value1 |
    recoveredBlock83Block187Value0 := recoveredBlock83Block187Arg1.
    recoveredBlock83Block187Value1 := recoveredBlock83Local2.
    (self) readDataGenerator: (recoveredBlock83Block187Value0) periodic: (recoveredBlock83Block187Value1).
    'ramp'
].
            recoveredBlock83PC := 203.
        ].
        recoveredBlock83Step = 203 ifTrue: [
            recoveredBlock83Stack7 := 'Random'.
            recoveredBlock83PC := 205.
        ].
        recoveredBlock83Step = 205 ifTrue: [
            recoveredBlock83Stack8 := [:recoveredBlock83Block205Arg1 | 
    | recoveredBlock83Block205Value0 recoveredBlock83Block205Value1 |
    recoveredBlock83Block205Value0 := recoveredBlock83Block205Arg1.
    recoveredBlock83Block205Value1 := recoveredBlock83Local2.
    (self) readDataGenerator: (recoveredBlock83Block205Value0) simple: (recoveredBlock83Block205Value1).
    'random'
].
            recoveredBlock83PC := 221.
        ].
        recoveredBlock83Step = 221 ifTrue: [
            recoveredBlock83Stack9 := 'Pulse'.
            recoveredBlock83PC := 223.
        ].
        recoveredBlock83Step = 223 ifTrue: [
            recoveredBlock83Stack10 := [:recoveredBlock83Block223Arg1 | 
    | recoveredBlock83Block223Value0 recoveredBlock83Block223Value1 |
    recoveredBlock83Block223Value0 := recoveredBlock83Block223Arg1.
    recoveredBlock83Block223Value1 := recoveredBlock83Local2.
    (self) readDataGenerator: (recoveredBlock83Block223Value0) periodic: (recoveredBlock83Block223Value1).
    'pulse'
].
            recoveredBlock83PC := 239.
        ].
        recoveredBlock83Step = 239 ifTrue: [
            recoveredBlock83Stack11 := 'Step'.
            recoveredBlock83PC := 241.
        ].
        recoveredBlock83Step = 241 ifTrue: [
            recoveredBlock83Stack12 := [:recoveredBlock83Block241Arg1 | 
    | recoveredBlock83Block241Value0 recoveredBlock83Block241Value1 |
    recoveredBlock83Block241Value0 := recoveredBlock83Block241Arg1.
    recoveredBlock83Block241Value1 := recoveredBlock83Local2.
    (self) readDataGenerator: (recoveredBlock83Block241Value0) singleShot: (recoveredBlock83Block241Value1).
    'step'
].
            recoveredBlock83PC := 257.
        ].
        recoveredBlock83Step = 257 ifTrue: [
            recoveredBlock83Stack13 := 'Matrix'.
            recoveredBlock83PC := 259.
        ].
        recoveredBlock83Step = 259 ifTrue: [
            recoveredBlock83Stack14 := [:recoveredBlock83Block259Arg1 | 
    | recoveredBlock83Block259Value0 recoveredBlock83Block259Value1 |
    recoveredBlock83Block259Value0 := recoveredBlock83Block259Arg1.
    recoveredBlock83Block259Value1 := recoveredBlock83Local2.
    (self) readDataGenerator: (recoveredBlock83Block259Value0) matrix: (recoveredBlock83Block259Value1).
    'matrix'
].
            recoveredBlock83PC := 275.
        ].
        recoveredBlock83Step = 275 ifTrue: [
            recoveredBlock83Stack15 := 'Table'.
            recoveredBlock83PC := 277.
        ].
        recoveredBlock83Step = 277 ifTrue: [
            recoveredBlock83Stack16 := [:recoveredBlock83Block277Arg1 | 
    | recoveredBlock83Block277Value0 recoveredBlock83Block277Value1 |
    recoveredBlock83Block277Value0 := recoveredBlock83Block277Arg1.
    recoveredBlock83Block277Value1 := recoveredBlock83Local2.
    (self) readDataGenerator: (recoveredBlock83Block277Value0) table: (recoveredBlock83Block277Value1).
    'table'
].
            recoveredBlock83PC := 293.
        ].
        recoveredBlock83Step = 293 ifTrue: [
            recoveredBlock83Stack17 := 'Gaussian'.
            recoveredBlock83PC := 295.
        ].
        recoveredBlock83Step = 295 ifTrue: [
            recoveredBlock83Stack18 := [:recoveredBlock83Block295Arg1 | 
    | recoveredBlock83Block295Value0 recoveredBlock83Block295Value1 |
    recoveredBlock83Block295Value0 := recoveredBlock83Block295Arg1.
    recoveredBlock83Block295Value1 := recoveredBlock83Local2.
    (self) readDataGenerator: (recoveredBlock83Block295Value0) gaussian: (recoveredBlock83Block295Value1).
    'gaussian'
].
            recoveredBlock83PC := 311.
        ].
        recoveredBlock83Step = 311 ifTrue: [
            recoveredBlock83Stack19 := handler.
            recoveredBlock83PC := 313.
        ].
        recoveredBlock83Step = 313 ifTrue: [
            recoveredBlock83Stack0 := (recoveredBlock83Stack0) choice: (recoveredBlock83Stack1) do: (recoveredBlock83Stack2) choice: (recoveredBlock83Stack3) do: (recoveredBlock83Stack4) choice: (recoveredBlock83Stack5) do: (recoveredBlock83Stack6) choice: (recoveredBlock83Stack7) do: (recoveredBlock83Stack8) choice: (recoveredBlock83Stack9) do: (recoveredBlock83Stack10) choice: (recoveredBlock83Stack11) do: (recoveredBlock83Stack12) choice: (recoveredBlock83Stack13) do: (recoveredBlock83Stack14) choice: (recoveredBlock83Stack15) do: (recoveredBlock83Stack16) choice: (recoveredBlock83Stack17) do: (recoveredBlock83Stack18) ifNot: (recoveredBlock83Stack19).
            recoveredBlock83PC := 316.
        ].
        recoveredBlock83Step = 316 ifTrue: [
            recoveredBlock83Local1 := recoveredBlock83Stack0.
            recoveredBlock83PC := 319.
        ].
        recoveredBlock83Step = 319 ifTrue: [
            recoveredBlock83Stack0 := recoveredBlock83Local1.
            recoveredBlock83PC := 322.
        ].
        recoveredBlock83Step = 322 ifTrue: [
            recoveredBlock83Stack1 := 'pulse'.
            recoveredBlock83PC := 324.
        ].
        recoveredBlock83Step = 324 ifTrue: [
            recoveredBlock83Stack0 := (recoveredBlock83Stack0) = (recoveredBlock83Stack1).
            recoveredBlock83PC := 325.
        ].
        recoveredBlock83Step = 325 ifTrue: [
            (recoveredBlock83Stack0) ifTrue: [recoveredBlock83PC := 328] ifFalse: [recoveredBlock83PC := 347].
        ].
        recoveredBlock83Step = 328 ifTrue: [
            recoveredBlock83Stack0 := recoveredBlock83Local2.
            recoveredBlock83PC := 331.
        ].
        recoveredBlock83Step = 331 ifTrue: [
            recoveredBlock83Stack1 := 4.
            recoveredBlock83PC := 333.
        ].
        recoveredBlock83Step = 333 ifTrue: [
            recoveredBlock83Stack0 := (recoveredBlock83Stack0) at: (recoveredBlock83Stack1).
            recoveredBlock83PC := 335.
        ].
        recoveredBlock83Step = 335 ifTrue: [
            recoveredBlock83Stack1 := Boolean.
            recoveredBlock83PC := 337.
        ].
        recoveredBlock83Step = 337 ifTrue: [
            recoveredBlock83Stack0 := (recoveredBlock83Stack0) isKindOf: (recoveredBlock83Stack1).
            recoveredBlock83PC := 339.
        ].
        recoveredBlock83Step = 339 ifTrue: [
            (recoveredBlock83Stack0) ifTrue: [recoveredBlock83PC := 342] ifFalse: [recoveredBlock83PC := 347].
        ].
        recoveredBlock83Step = 342 ifTrue: [
            recoveredBlock83Stack0 := 'pulseBool'.
            recoveredBlock83PC := 344.
        ].
        recoveredBlock83Step = 344 ifTrue: [
            recoveredBlock83Local1 := recoveredBlock83Stack0.
            recoveredBlock83PC := 347.
        ].
        recoveredBlock83Step = 347 ifTrue: [
            recoveredBlock83Stack0 := recoveredBlock83Local2.
            recoveredBlock83PC := 350.
        ].
        recoveredBlock83Step = 350 ifTrue: [
            recoveredBlock83Stack1 := 1.
            recoveredBlock83PC := 352.
        ].
        recoveredBlock83Step = 352 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Local1.
            recoveredBlock83PC := 355.
        ].
        recoveredBlock83Step = 355 ifTrue: [
            (recoveredBlock83Stack0) at: (recoveredBlock83Stack1) put: (recoveredBlock83Stack2).
            recoveredBlock83PC := 357.
        ].
        recoveredBlock83Step = 357 ifTrue: [
            recoveredBlock83Stack0 := recoveredLocal1.
            recoveredBlock83PC := 360.
        ].
        recoveredBlock83Step = 360 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local3.
            recoveredBlock83PC := 363.
        ].
        recoveredBlock83Step = 363 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Local2.
            recoveredBlock83PC := 366.
        ].
        recoveredBlock83Step = 366 ifTrue: [
            recoveredBlock83Stack0 := (recoveredBlock83Stack0) at: (recoveredBlock83Stack1) put: (recoveredBlock83Stack2).
            recoveredBlock83PC := 368.
        ].
        recoveredBlock83Step = 368 ifTrue: [
            recoveredBlock83Result := recoveredBlock83Stack0.
            recoveredBlock83Done := true.
        ].
    ].
    recoveredBlock83Result
].
    (recoveredValue17) multiple: ('Channel') do: (recoveredValue18).
    recoveredValue19 := recoveredLocal2.
    recoveredValue20 := recoveredLocal1.
    (recoveredValue19) at: ('DataGenChannels') put: (recoveredValue20).
    recoveredValue21 := ('Kli') == ('Call_74696').
    recoveredValue22 := recoveredArg1.
    recoveredValue23 := [:recoveredBlock392Arg1 | 
    | recoveredBlock392Local1 recoveredBlock392Local2 recoveredBlock392Stack0 recoveredBlock392Stack1 recoveredBlock392Stack2 recoveredBlock392Stack3 recoveredBlock392Stack4 recoveredBlock392Stack5 recoveredBlock392PC recoveredBlock392Step recoveredBlock392Done recoveredBlock392Result |
    recoveredBlock392Stack0 := self.
    recoveredBlock392PC := 398.
    recoveredBlock392Done := false.
    [recoveredBlock392Done not] whileTrue: [
        recoveredBlock392Step := recoveredBlock392PC.
        recoveredBlock392Step = 398 ifTrue: [
            recoveredBlock392Stack1 := recoveredBlock392Arg1.
            recoveredBlock392PC := 399.
        ].
        recoveredBlock392Step = 399 ifTrue: [
            recoveredBlock392Stack2 := 'signalName'.
            recoveredBlock392PC := 402.
        ].
        recoveredBlock392Step = 402 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) getString: (recoveredBlock392Stack2).
            recoveredBlock392PC := 407.
        ].
        recoveredBlock392Step = 407 ifTrue: [
            recoveredBlock392Stack2 := recoveredBlock392Arg1.
            recoveredBlock392PC := 408.
        ].
        recoveredBlock392Step = 408 ifTrue: [
            recoveredBlock392Stack3 := 'signalOID'.
            recoveredBlock392PC := 412.
        ].
        recoveredBlock392Step = 412 ifTrue: [
            recoveredBlock392Stack4 := nil.
            recoveredBlock392PC := 413.
        ].
        recoveredBlock392Step = 413 ifTrue: [
            recoveredBlock392Stack2 := (recoveredBlock392Stack2) getOID: (recoveredBlock392Stack3) default: (recoveredBlock392Stack4).
            recoveredBlock392PC := 417.
        ].
        recoveredBlock392Step = 417 ifTrue: [
            recoveredBlock392Stack0 := (recoveredBlock392Stack0) itemForPath: (recoveredBlock392Stack1) oid: (recoveredBlock392Stack2).
            recoveredBlock392PC := 421.
        ].
        recoveredBlock392Step = 421 ifTrue: [
            recoveredBlock392Local2 := recoveredBlock392Stack0.
            recoveredBlock392PC := 422.
        ].
        recoveredBlock392Step = 422 ifTrue: [
            recoveredBlock392Stack0 := recoveredBlock392Local2.
            recoveredBlock392PC := 423.
        ].
        recoveredBlock392Step = 423 ifTrue: [
            (recoveredBlock392Stack0 ~~ nil) ifTrue: [recoveredBlock392PC := 442] ifFalse: [recoveredBlock392PC := 426].
        ].
        recoveredBlock392Step = 426 ifTrue: [
            recoveredBlock392Stack0 := self.
            recoveredBlock392PC := 427.
        ].
        recoveredBlock392Step = 427 ifTrue: [
            recoveredBlock392Stack1 := recoveredBlock392Arg1.
            recoveredBlock392PC := 428.
        ].
        recoveredBlock392Step = 428 ifTrue: [
            recoveredBlock392Stack2 := 'signalName'.
            recoveredBlock392PC := 432.
        ].
        recoveredBlock392Step = 432 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) getString: (recoveredBlock392Stack2).
            recoveredBlock392PC := 437.
        ].
        recoveredBlock392Step = 437 ifTrue: [
            recoveredBlock392Stack0 := (recoveredBlock392Stack0) elementNotFound: (recoveredBlock392Stack1).
            recoveredBlock392PC := 441.
        ].
        recoveredBlock392Step = 441 ifTrue: [
            ^recoveredBlock392Stack0
        ].
        recoveredBlock392Step = 442 ifTrue: [
            recoveredBlock392Stack0 := controller.
            recoveredBlock392PC := 444.
        ].
        recoveredBlock392Step = 444 ifTrue: [
            recoveredBlock392Stack1 := recoveredBlock392Local2.
            recoveredBlock392PC := 445.
        ].
        recoveredBlock392Step = 445 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) xmlOID.
            recoveredBlock392PC := 449.
        ].
        recoveredBlock392Step = 449 ifTrue: [
            recoveredBlock392Stack0 := (recoveredBlock392Stack0) makeDBProxy: (recoveredBlock392Stack1).
            recoveredBlock392PC := 453.
        ].
        recoveredBlock392Step = 453 ifTrue: [
            recoveredBlock392Local1 := recoveredBlock392Stack0.
            recoveredBlock392PC := 454.
        ].
        recoveredBlock392Step = 454 ifTrue: [
            recoveredBlock392Stack0 := recoveredLocal2.
            recoveredBlock392PC := 457.
        ].
        recoveredBlock392Step = 457 ifTrue: [
            recoveredBlock392Stack1 := 'Signal'.
            recoveredBlock392PC := 459.
        ].
        recoveredBlock392Step = 459 ifTrue: [
            recoveredBlock392Stack2 := recoveredBlock392Local1.
            recoveredBlock392PC := 460.
        ].
        recoveredBlock392Step = 460 ifTrue: [
            recoveredBlock392Stack0 := (recoveredBlock392Stack0) at: (recoveredBlock392Stack1) put: (recoveredBlock392Stack2).
            recoveredBlock392PC := 462.
        ].
        recoveredBlock392Step = 462 ifTrue: [
            recoveredBlock392Result := recoveredBlock392Stack0.
            recoveredBlock392Done := true.
        ].
    ].
    recoveredBlock392Result
].
    (recoveredValue22) optional: ('Signal') do: (recoveredValue23).
    recoveredValue24 := recoveredLocal2.
    ^recoveredValue24
! !

"ASDBase.ic method 0x20628f34; bytecode file offset 0xf25910"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
readExperiments: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EE_GUI'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'Experiment'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Local1 recoveredBlock20Local2 recoveredBlock20Local3 recoveredBlock20Local4 recoveredBlock20Local5 recoveredBlock20Local6 recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20Stack4 recoveredBlock20Stack5 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := LookupTable.
            recoveredBlock20PC := 28.
        ].
        recoveredBlock20Step = 28 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) new.
            recoveredBlock20PC := 30.
        ].
        recoveredBlock20Step = 30 ifTrue: [
            elements := recoveredBlock20Stack1.
            recoveredBlock20PC := 32.
        ].
        recoveredBlock20Step = 32 ifTrue: [
            recoveredBlock20Stack1 := SGSimExperiment.
            recoveredBlock20PC := 34.
        ].
        recoveredBlock20Step = 34 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) new.
            recoveredBlock20PC := 36.
        ].
        recoveredBlock20Step = 36 ifTrue: [
            recoveredBlock20Local6 := recoveredBlock20Stack1.
            recoveredBlock20PC := 39.
        ].
        recoveredBlock20Step = 39 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Local6.
            recoveredBlock20PC := 42.
        ].
        recoveredBlock20Step = 42 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 45.
        ].
        recoveredBlock20Step = 45 ifTrue: [
            recoveredBlock20Stack3 := 'Name'.
            recoveredBlock20PC := 47.
        ].
        recoveredBlock20Step = 47 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) getString: (recoveredBlock20Stack3).
            recoveredBlock20PC := 49.
        ].
        recoveredBlock20Step = 49 ifTrue: [
            (recoveredBlock20Stack1) name: (recoveredBlock20Stack2).
            recoveredBlock20PC := 51.
        ].
        recoveredBlock20Step = 51 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Local6.
            recoveredBlock20PC := 54.
        ].
        recoveredBlock20Step = 54 ifTrue: [
            recoveredBlock20Stack2 := SGTimeStamp.
            recoveredBlock20PC := 56.
        ].
        recoveredBlock20Step = 56 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Arg1.
            recoveredBlock20PC := 59.
        ].
        recoveredBlock20Step = 59 ifTrue: [
            recoveredBlock20Stack4 := 'timestamp'.
            recoveredBlock20PC := 61.
        ].
        recoveredBlock20Step = 61 ifTrue: [
            recoveredBlock20Stack3 := (recoveredBlock20Stack3) getDateTime: (recoveredBlock20Stack4).
            recoveredBlock20PC := 63.
        ].
        recoveredBlock20Step = 63 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) new: (recoveredBlock20Stack3).
            recoveredBlock20PC := 65.
        ].
        recoveredBlock20Step = 65 ifTrue: [
            (recoveredBlock20Stack1) timeStamp: (recoveredBlock20Stack2).
            recoveredBlock20PC := 67.
        ].
        recoveredBlock20Step = 67 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Local6.
            recoveredBlock20PC := 70.
        ].
        recoveredBlock20Step = 70 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 73.
        ].
        recoveredBlock20Step = 73 ifTrue: [
            recoveredBlock20Stack3 := 'comment'.
            recoveredBlock20PC := 75.
        ].
        recoveredBlock20Step = 75 ifTrue: [
            recoveredBlock20Stack4 := ''.
            recoveredBlock20PC := 77.
        ].
        recoveredBlock20Step = 77 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) getString: (recoveredBlock20Stack3) default: (recoveredBlock20Stack4).
            recoveredBlock20PC := 79.
        ].
        recoveredBlock20Step = 79 ifTrue: [
            (recoveredBlock20Stack1) comment: (recoveredBlock20Stack2).
            recoveredBlock20PC := 81.
        ].
        recoveredBlock20Step = 81 ifTrue: [
            recoveredBlock20Stack1 := LookupTable.
            recoveredBlock20PC := 83.
        ].
        recoveredBlock20Step = 83 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) new.
            recoveredBlock20PC := 85.
        ].
        recoveredBlock20Step = 85 ifTrue: [
            recoveredBlock20Local1 := recoveredBlock20Stack1.
            recoveredBlock20PC := 88.
        ].
        recoveredBlock20Step = 88 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 91.
        ].
        recoveredBlock20Step = 91 ifTrue: [
            recoveredBlock20Stack2 := 'collapsedView'.
            recoveredBlock20PC := 93.
        ].
        recoveredBlock20Step = 93 ifTrue: [
            recoveredBlock20Stack3 := nil.
            recoveredBlock20PC := 94.
        ].
        recoveredBlock20Step = 94 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) getBoolean: (recoveredBlock20Stack2) default: (recoveredBlock20Stack3).
            recoveredBlock20PC := 96.
        ].
        recoveredBlock20Step = 96 ifTrue: [
            recoveredBlock20Stack2 := [:recoveredBlock20Block96Arg1 | 
    | recoveredBlock20Block96Value0 recoveredBlock20Block96Value1 recoveredBlock20Block96Value2 |
    recoveredBlock20Block96Value0 := recoveredBlock20Local1.
    recoveredBlock20Block96Value1 := recoveredBlock20Block96Arg1.
    recoveredBlock20Block96Value2 := (recoveredBlock20Block96Value0) at: ('collapsedView') put: (recoveredBlock20Block96Value1).
    recoveredBlock20Block96Value2
].
            recoveredBlock20PC := 111.
        ].
        recoveredBlock20Step = 111 ifTrue: [
            (recoveredBlock20Stack1) ifNotNil: (recoveredBlock20Stack2).
            recoveredBlock20PC := 113.
        ].
        recoveredBlock20Step = 113 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 116.
        ].
        recoveredBlock20Step = 116 ifTrue: [
            recoveredBlock20Stack2 := 'animatedStates'.
            recoveredBlock20PC := 118.
        ].
        recoveredBlock20Step = 118 ifTrue: [
            recoveredBlock20Stack3 := nil.
            recoveredBlock20PC := 119.
        ].
        recoveredBlock20Step = 119 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) getBoolean: (recoveredBlock20Stack2) default: (recoveredBlock20Stack3).
            recoveredBlock20PC := 121.
        ].
        recoveredBlock20Step = 121 ifTrue: [
            recoveredBlock20Stack2 := [:recoveredBlock20Block121Arg1 | 
    | recoveredBlock20Block121Value0 recoveredBlock20Block121Value1 recoveredBlock20Block121Value2 |
    recoveredBlock20Block121Value0 := recoveredBlock20Local1.
    recoveredBlock20Block121Value1 := recoveredBlock20Block121Arg1.
    recoveredBlock20Block121Value2 := (recoveredBlock20Block121Value0) at: ('animatedStates') put: (recoveredBlock20Block121Value1).
    recoveredBlock20Block121Value2
].
            recoveredBlock20PC := 137.
        ].
        recoveredBlock20Step = 137 ifTrue: [
            (recoveredBlock20Stack1) ifNotNil: (recoveredBlock20Stack2).
            recoveredBlock20PC := 139.
        ].
        recoveredBlock20Step = 139 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 142.
        ].
        recoveredBlock20Step = 142 ifTrue: [
            recoveredBlock20Stack2 := 'offlineMeasureRate'.
            recoveredBlock20PC := 144.
        ].
        recoveredBlock20Step = 144 ifTrue: [
            recoveredBlock20Stack3 := nil.
            recoveredBlock20PC := 145.
        ].
        recoveredBlock20Step = 145 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) getNZQR: (recoveredBlock20Stack2) default: (recoveredBlock20Stack3).
            recoveredBlock20PC := 147.
        ].
        recoveredBlock20Step = 147 ifTrue: [
            recoveredBlock20Stack2 := [:recoveredBlock20Block147Arg1 | 
    | recoveredBlock20Block147Value0 recoveredBlock20Block147Value1 recoveredBlock20Block147Value2 |
    recoveredBlock20Block147Value0 := recoveredBlock20Local1.
    recoveredBlock20Block147Value1 := recoveredBlock20Block147Arg1.
    recoveredBlock20Block147Value2 := (recoveredBlock20Block147Value0) at: ('offlineMeasureRate') put: (recoveredBlock20Block147Value1).
    recoveredBlock20Block147Value2
].
            recoveredBlock20PC := 163.
        ].
        recoveredBlock20Step = 163 ifTrue: [
            (recoveredBlock20Stack1) ifNotNil: (recoveredBlock20Stack2).
            recoveredBlock20PC := 165.
        ].
        recoveredBlock20Step = 165 ifTrue: [
            recoveredBlock20Stack1 := 'Kli'.
            recoveredBlock20PC := 167.
        ].
        recoveredBlock20Step = 167 ifTrue: [
            recoveredBlock20Stack2 := 'Call_389889'.
            recoveredBlock20PC := 169.
        ].
        recoveredBlock20Step = 169 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) == (recoveredBlock20Stack2).
            recoveredBlock20PC := 170.
        ].
        recoveredBlock20Step = 170 ifTrue: [
            recoveredBlock20PC := 171.
        ].
        recoveredBlock20Step = 171 ifTrue: [
            recoveredBlock20Stack1 := 'Kli'.
            recoveredBlock20PC := 173.
        ].
        recoveredBlock20Step = 173 ifTrue: [
            recoveredBlock20Stack2 := 'DET102070'.
            recoveredBlock20PC := 175.
        ].
        recoveredBlock20Step = 175 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) == (recoveredBlock20Stack2).
            recoveredBlock20PC := 176.
        ].
        recoveredBlock20Step = 176 ifTrue: [
            recoveredBlock20PC := 177.
        ].
        recoveredBlock20Step = 177 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 180.
        ].
        recoveredBlock20Step = 180 ifTrue: [
            recoveredBlock20Stack2 := 'acquisitionTaskID'.
            recoveredBlock20PC := 182.
        ].
        recoveredBlock20Step = 182 ifTrue: [
            recoveredBlock20Stack3 := nil.
            recoveredBlock20PC := 183.
        ].
        recoveredBlock20Step = 183 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) getNNInt: (recoveredBlock20Stack2) default: (recoveredBlock20Stack3).
            recoveredBlock20PC := 185.
        ].
        recoveredBlock20Step = 185 ifTrue: [
            recoveredBlock20Stack2 := [:recoveredBlock20Block185Arg1 | 
    | recoveredBlock20Block185Value0 recoveredBlock20Block185Value1 recoveredBlock20Block185Value2 |
    recoveredBlock20Block185Value0 := recoveredBlock20Local1.
    recoveredBlock20Block185Value1 := recoveredBlock20Block185Arg1.
    recoveredBlock20Block185Value2 := (recoveredBlock20Block185Value0) at: ('measureTask') put: (recoveredBlock20Block185Value1).
    recoveredBlock20Block185Value2
].
            recoveredBlock20PC := 201.
        ].
        recoveredBlock20Step = 201 ifTrue: [
            (recoveredBlock20Stack1) ifNotNil: (recoveredBlock20Stack2).
            recoveredBlock20PC := 203.
        ].
        recoveredBlock20Step = 203 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 206.
        ].
        recoveredBlock20Step = 206 ifTrue: [
            recoveredBlock20Stack2 := 'acquisitionTaskName'.
            recoveredBlock20PC := 208.
        ].
        recoveredBlock20Step = 208 ifTrue: [
            recoveredBlock20Stack3 := nil.
            recoveredBlock20PC := 209.
        ].
        recoveredBlock20Step = 209 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) getString: (recoveredBlock20Stack2) default: (recoveredBlock20Stack3).
            recoveredBlock20PC := 211.
        ].
        recoveredBlock20Step = 211 ifTrue: [
            recoveredBlock20Stack2 := [:recoveredBlock20Block211Arg1 | 
    | recoveredBlock20Block211Value0 recoveredBlock20Block211Value1 recoveredBlock20Block211Value2 |
    recoveredBlock20Block211Value0 := recoveredBlock20Local1.
    recoveredBlock20Block211Value1 := recoveredBlock20Block211Arg1.
    recoveredBlock20Block211Value2 := (recoveredBlock20Block211Value0) at: ('measureTask') put: (recoveredBlock20Block211Value1).
    recoveredBlock20Block211Value2
].
            recoveredBlock20PC := 227.
        ].
        recoveredBlock20Step = 227 ifTrue: [
            (recoveredBlock20Stack1) ifNotNil: (recoveredBlock20Stack2).
            recoveredBlock20PC := 229.
        ].
        recoveredBlock20Step = 229 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 232.
        ].
        recoveredBlock20Step = 232 ifTrue: [
            recoveredBlock20Stack2 := 'Position'.
            recoveredBlock20PC := 234.
        ].
        recoveredBlock20Step = 234 ifTrue: [
            recoveredBlock20Stack3 := [:recoveredBlock20Block234Arg1 | 
    | recoveredBlock20Block234Value0 recoveredBlock20Block234Value1 recoveredBlock20Block234Value2 recoveredBlock20Block234Value3 |
    recoveredBlock20Block234Value0 := recoveredBlock20Local1.
    recoveredBlock20Block234Value1 := recoveredBlock20Block234Arg1.
    recoveredBlock20Block234Value2 := (recoveredBlock20Block234Value1) asPoint.
    recoveredBlock20Block234Value3 := (recoveredBlock20Block234Value0) at: ('simViewPos') put: (recoveredBlock20Block234Value2).
    recoveredBlock20Block234Value3
].
            recoveredBlock20PC := 251.
        ].
        recoveredBlock20Step = 251 ifTrue: [
            (recoveredBlock20Stack1) optional: (recoveredBlock20Stack2) do: (recoveredBlock20Stack3).
            recoveredBlock20PC := 253.
        ].
        recoveredBlock20Step = 253 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 256.
        ].
        recoveredBlock20Step = 256 ifTrue: [
            recoveredBlock20Stack2 := 'Size'.
            recoveredBlock20PC := 258.
        ].
        recoveredBlock20Step = 258 ifTrue: [
            recoveredBlock20Stack3 := [:recoveredBlock20Block258Arg1 | 
    | recoveredBlock20Block258Value0 recoveredBlock20Block258Value1 recoveredBlock20Block258Value2 recoveredBlock20Block258Value3 |
    recoveredBlock20Block258Value0 := recoveredBlock20Local1.
    recoveredBlock20Block258Value1 := recoveredBlock20Block258Arg1.
    recoveredBlock20Block258Value2 := (recoveredBlock20Block258Value1) asSize.
    recoveredBlock20Block258Value3 := (recoveredBlock20Block258Value0) at: ('simViewSize') put: (recoveredBlock20Block258Value2).
    recoveredBlock20Block258Value3
].
            recoveredBlock20PC := 275.
        ].
        recoveredBlock20Step = 275 ifTrue: [
            (recoveredBlock20Stack1) optional: (recoveredBlock20Stack2) do: (recoveredBlock20Stack3).
            recoveredBlock20PC := 277.
        ].
        recoveredBlock20Step = 277 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Local6.
            recoveredBlock20PC := 280.
        ].
        recoveredBlock20Step = 280 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local1.
            recoveredBlock20PC := 283.
        ].
        recoveredBlock20Step = 283 ifTrue: [
            (recoveredBlock20Stack1) simViewConfig: (recoveredBlock20Stack2).
            recoveredBlock20PC := 285.
        ].
        recoveredBlock20Step = 285 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 288.
        ].
        recoveredBlock20Step = 288 ifTrue: [
            recoveredBlock20Stack2 := 'DataGenerator'.
            recoveredBlock20PC := 290.
        ].
        recoveredBlock20Step = 290 ifTrue: [
            recoveredBlock20Stack3 := [:block2811f710Arg1 | 
    | block2811f710Value0 |
    block2811f710Value0 := block2811f710Arg1.
    block2811f710Value0
].
            recoveredBlock20PC := 292.
        ].
        recoveredBlock20Step = 292 ifTrue: [
            recoveredBlock20PC := 298.
        ].
        recoveredBlock20Step = 298 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) optional: (recoveredBlock20Stack2) do: (recoveredBlock20Stack3).
            recoveredBlock20PC := 300.
        ].
        recoveredBlock20Step = 300 ifTrue: [
            recoveredBlock20Local5 := recoveredBlock20Stack1.
            recoveredBlock20PC := 303.
        ].
        recoveredBlock20Step = 303 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 306.
        ].
        recoveredBlock20Step = 306 ifTrue: [
            recoveredBlock20Stack2 := 'EventGenerator'.
            recoveredBlock20PC := 308.
        ].
        recoveredBlock20Step = 308 ifTrue: [
            recoveredBlock20Stack3 := [:block2811f734Arg1 | 
    | block2811f734Value0 |
    block2811f734Value0 := block2811f734Arg1.
    block2811f734Value0
].
            recoveredBlock20PC := 310.
        ].
        recoveredBlock20Step = 310 ifTrue: [
            recoveredBlock20PC := 316.
        ].
        recoveredBlock20Step = 316 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) optional: (recoveredBlock20Stack2) do: (recoveredBlock20Stack3).
            recoveredBlock20PC := 318.
        ].
        recoveredBlock20Step = 318 ifTrue: [
            recoveredBlock20Local4 := recoveredBlock20Stack1.
            recoveredBlock20PC := 321.
        ].
        recoveredBlock20Step = 321 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 324.
        ].
        recoveredBlock20Step = 324 ifTrue: [
            recoveredBlock20Stack2 := 'Layers'.
            recoveredBlock20PC := 326.
        ].
        recoveredBlock20Step = 326 ifTrue: [
            recoveredBlock20Stack3 := [:block2811f758Arg1 | 
    | block2811f758Value0 |
    block2811f758Value0 := block2811f758Arg1.
    block2811f758Value0
].
            recoveredBlock20PC := 328.
        ].
        recoveredBlock20Step = 328 ifTrue: [
            recoveredBlock20PC := 334.
        ].
        recoveredBlock20Step = 334 ifTrue: [
            recoveredBlock20Stack4 := handler.
            recoveredBlock20PC := 336.
        ].
        recoveredBlock20Step = 336 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) required: (recoveredBlock20Stack2) do: (recoveredBlock20Stack3) ifNot: (recoveredBlock20Stack4).
            recoveredBlock20PC := 339.
        ].
        recoveredBlock20Step = 339 ifTrue: [
            recoveredBlock20Local3 := recoveredBlock20Stack1.
            recoveredBlock20PC := 342.
        ].
        recoveredBlock20Step = 342 ifTrue: [
            recoveredBlock20Stack1 := 'Kli'.
            recoveredBlock20PC := 344.
        ].
        recoveredBlock20Step = 344 ifTrue: [
            recoveredBlock20Stack2 := 'Call_93130'.
            recoveredBlock20PC := 346.
        ].
        recoveredBlock20Step = 346 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) == (recoveredBlock20Stack2).
            recoveredBlock20PC := 347.
        ].
        recoveredBlock20Step = 347 ifTrue: [
            recoveredBlock20PC := 348.
        ].
        recoveredBlock20Step = 348 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Local6.
            recoveredBlock20PC := 351.
        ].
        recoveredBlock20Step = 351 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 354.
        ].
        recoveredBlock20Step = 354 ifTrue: [
            recoveredBlock20Stack3 := 'MonitoredDiagramElements'.
            recoveredBlock20PC := 356.
        ].
        recoveredBlock20Step = 356 ifTrue: [
            recoveredBlock20Stack4 := [:recoveredBlock20Block356Arg1 | 
    | recoveredBlock20Block356Value0 recoveredBlock20Block356Value1 |
    recoveredBlock20Block356Value0 := recoveredBlock20Block356Arg1.
    recoveredBlock20Block356Value1 := (self) readMonitorConfig: (recoveredBlock20Block356Value0).
    recoveredBlock20Block356Value1
].
            recoveredBlock20PC := 366.
        ].
        recoveredBlock20Step = 366 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) optional: (recoveredBlock20Stack3) do: (recoveredBlock20Stack4).
            recoveredBlock20PC := 368.
        ].
        recoveredBlock20Step = 368 ifTrue: [
            (recoveredBlock20Stack1) monitorBDEConfig: (recoveredBlock20Stack2).
            recoveredBlock20PC := 370.
        ].
        recoveredBlock20Step = 370 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Local6.
            recoveredBlock20PC := 373.
        ].
        recoveredBlock20Step = 373 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 376.
        ].
        recoveredBlock20Step = 376 ifTrue: [
            recoveredBlock20Stack3 := 'CTSolvers'.
            recoveredBlock20PC := 378.
        ].
        recoveredBlock20Step = 378 ifTrue: [
            recoveredBlock20Stack4 := [:recoveredBlock20Block378Arg1 | 
    | recoveredBlock20Block378Value0 recoveredBlock20Block378Value1 |
    recoveredBlock20Block378Value0 := recoveredBlock20Block378Arg1.
    recoveredBlock20Block378Value1 := (self) readCTSolvers: (recoveredBlock20Block378Value0).
    recoveredBlock20Block378Value1
].
            recoveredBlock20PC := 388.
        ].
        recoveredBlock20Step = 388 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) optional: (recoveredBlock20Stack3) do: (recoveredBlock20Stack4).
            recoveredBlock20PC := 390.
        ].
        recoveredBlock20Step = 390 ifTrue: [
            (recoveredBlock20Stack1) solverConfig: (recoveredBlock20Stack2).
            recoveredBlock20PC := 392.
        ].
        recoveredBlock20Step = 392 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 395.
        ].
        recoveredBlock20Step = 395 ifTrue: [
            recoveredBlock20Stack2 := 'DataLogger'.
            recoveredBlock20PC := 397.
        ].
        recoveredBlock20Step = 397 ifTrue: [
            recoveredBlock20Stack3 := [:block2811f77cArg1 | 
    | block2811f77cValue0 |
    block2811f77cValue0 := block2811f77cArg1.
    block2811f77cValue0
].
            recoveredBlock20PC := 399.
        ].
        recoveredBlock20Step = 399 ifTrue: [
            recoveredBlock20PC := 404.
        ].
        recoveredBlock20Step = 404 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) optional: (recoveredBlock20Stack2) do: (recoveredBlock20Stack3).
            recoveredBlock20PC := 406.
        ].
        recoveredBlock20Step = 406 ifTrue: [
            recoveredBlock20Local2 := recoveredBlock20Stack1.
            recoveredBlock20PC := 409.
        ].
        recoveredBlock20Step = 409 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 412.
        ].
        recoveredBlock20Step = 412 ifTrue: [
            recoveredBlock20Stack2 := 'Elements'.
            recoveredBlock20PC := 416.
        ].
        recoveredBlock20Step = 416 ifTrue: [
            recoveredBlock20Stack3 := [:recoveredBlock20Block416Arg1 | 
    | recoveredBlock20Block416Value0 recoveredBlock20Block416Value1 |
    recoveredBlock20Block416Value0 := recoveredBlock20Block416Arg1.
    recoveredBlock20Block416Value1 := (self) readElements: (recoveredBlock20Block416Value0).
    recoveredBlock20Block416Value1
].
            recoveredBlock20PC := 428.
        ].
        recoveredBlock20Step = 428 ifTrue: [
            recoveredBlock20Stack4 := handler.
            recoveredBlock20PC := 430.
        ].
        recoveredBlock20Step = 430 ifTrue: [
            (recoveredBlock20Stack1) required: (recoveredBlock20Stack2) do: (recoveredBlock20Stack3) ifNot: (recoveredBlock20Stack4).
            recoveredBlock20PC := 433.
        ].
        recoveredBlock20Step = 433 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Local6.
            recoveredBlock20PC := 436.
        ].
        recoveredBlock20Step = 436 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local5.
            recoveredBlock20PC := 439.
        ].
        recoveredBlock20Step = 439 ifTrue: [
            (recoveredBlock20Stack2 == nil) ifTrue: [recoveredBlock20PC := 454] ifFalse: [recoveredBlock20PC := 442].
        ].
        recoveredBlock20Step = 442 ifTrue: [
            recoveredBlock20Stack2 := self.
            recoveredBlock20PC := 443.
        ].
        recoveredBlock20Step = 443 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Local5.
            recoveredBlock20PC := 446.
        ].
        recoveredBlock20Step = 446 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) readDataGenerator: (recoveredBlock20Stack3).
            recoveredBlock20PC := 451.
        ].
        recoveredBlock20Step = 451 ifTrue: [
            recoveredBlock20PC := 458.
        ].
        recoveredBlock20Step = 454 ifTrue: [
            recoveredBlock20Stack2 := LookupTable.
            recoveredBlock20PC := 456.
        ].
        recoveredBlock20Step = 456 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) new.
            recoveredBlock20PC := 458.
        ].
        recoveredBlock20Step = 458 ifTrue: [
            (recoveredBlock20Stack1) dataGeneratorConfig: (recoveredBlock20Stack2).
            recoveredBlock20PC := 463.
        ].
        recoveredBlock20Step = 463 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Local6.
            recoveredBlock20PC := 466.
        ].
        recoveredBlock20Step = 466 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local4.
            recoveredBlock20PC := 469.
        ].
        recoveredBlock20Step = 469 ifTrue: [
            (recoveredBlock20Stack2 == nil) ifTrue: [recoveredBlock20PC := 484] ifFalse: [recoveredBlock20PC := 472].
        ].
        recoveredBlock20Step = 472 ifTrue: [
            recoveredBlock20Stack2 := self.
            recoveredBlock20PC := 473.
        ].
        recoveredBlock20Step = 473 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Local4.
            recoveredBlock20PC := 476.
        ].
        recoveredBlock20Step = 476 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) readEventGenerator: (recoveredBlock20Stack3).
            recoveredBlock20PC := 481.
        ].
        recoveredBlock20Step = 481 ifTrue: [
            recoveredBlock20PC := 488.
        ].
        recoveredBlock20Step = 484 ifTrue: [
            recoveredBlock20Stack2 := LookupTable.
            recoveredBlock20PC := 486.
        ].
        recoveredBlock20Step = 486 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) new.
            recoveredBlock20PC := 488.
        ].
        recoveredBlock20Step = 488 ifTrue: [
            (recoveredBlock20Stack1) eventGeneratorConfig: (recoveredBlock20Stack2).
            recoveredBlock20PC := 493.
        ].
        recoveredBlock20Step = 493 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Local3.
            recoveredBlock20PC := 496.
        ].
        recoveredBlock20Step = 496 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local6.
            recoveredBlock20PC := 499.
        ].
        recoveredBlock20Step = 499 ifTrue: [
            (recoveredBlock20Stack0) readLayers: (recoveredBlock20Stack1) sim: (recoveredBlock20Stack2).
            recoveredBlock20PC := 503.
        ].
        recoveredBlock20Step = 503 ifTrue: [
            recoveredBlock20Stack0 := recoveredBlock20Local2.
            recoveredBlock20PC := 506.
        ].
        recoveredBlock20Step = 506 ifTrue: [
            (recoveredBlock20Stack0 == nil) ifTrue: [recoveredBlock20PC := 525] ifFalse: [recoveredBlock20PC := 510].
        ].
        recoveredBlock20Step = 510 ifTrue: [
            recoveredBlock20Stack0 := recoveredBlock20Local6.
            recoveredBlock20PC := 513.
        ].
        recoveredBlock20Step = 513 ifTrue: [
            recoveredBlock20Stack1 := self.
            recoveredBlock20PC := 514.
        ].
        recoveredBlock20Step = 514 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local2.
            recoveredBlock20PC := 517.
        ].
        recoveredBlock20Step = 517 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) readDataLogger: (recoveredBlock20Stack2).
            recoveredBlock20PC := 521.
        ].
        recoveredBlock20Step = 521 ifTrue: [
            (recoveredBlock20Stack0) dataloggerConfig: (recoveredBlock20Stack1).
            recoveredBlock20PC := 525.
        ].
        recoveredBlock20Step = 525 ifTrue: [
            recoveredBlock20Stack0 := recoveredBlock20Local6.
            recoveredBlock20PC := 528.
        ].
        recoveredBlock20Step = 528 ifTrue: [
            recoveredBlock20Stack1 := controller.
            recoveredBlock20PC := 530.
        ].
        recoveredBlock20Step = 530 ifTrue: [
            recoveredBlock20Stack2 := protoClass.
            recoveredBlock20PC := 532.
        ].
        recoveredBlock20Step = 532 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) xmlOID.
            recoveredBlock20PC := 537.
        ].
        recoveredBlock20Step = 537 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) makeDBProxy: (recoveredBlock20Stack2).
            recoveredBlock20PC := 541.
        ].
        recoveredBlock20Step = 541 ifTrue: [
            (recoveredBlock20Stack0) xmlSgClass: (recoveredBlock20Stack1).
            recoveredBlock20PC := 545.
        ].
        recoveredBlock20Step = 545 ifTrue: [
            recoveredBlock20Stack0 := recoveredBlock20Local6.
            recoveredBlock20PC := 548.
        ].
        recoveredBlock20Step = 548 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack0.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack1 := (recoveredStack1) multiple: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack2 := 'Signature'.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack3 := [:block2811f7a0Arg1 | 
    nil
].
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack2 := handler.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            (recoveredStack1) doneIfNot: (recoveredStack2).
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            (recoveredStack0) handleExperiments: (recoveredStack1).
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20657080; bytecode file offset 0xf53a70"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
readCalibrationConfig: recoveredArg1 forElement: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'BackgroundColor'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredArg1.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) asColor.
    recoveredBlock15Value3 := (recoveredBlock15Value0) backgroundColor: (recoveredBlock15Value2).
    recoveredBlock15Value3
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 'Color'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 recoveredBlock40Value3 |
    recoveredBlock40Value0 := recoveredArg1.
    recoveredBlock40Value1 := recoveredBlock40Arg1.
    recoveredBlock40Value2 := (recoveredBlock40Value1) asColor.
    recoveredBlock40Value3 := (recoveredBlock40Value0) color: (recoveredBlock40Value2).
    recoveredBlock40Value3
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 'ActiveCursor'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 |
    recoveredBlock64Value0 := recoveredLocal1.
    recoveredBlock64Value1 := recoveredBlock64Arg1.
    recoveredBlock64Value2 := (recoveredBlock64Value1) asColor.
    recoveredBlock64Value3 := (recoveredBlock64Value0) at: ('activeCursor') put: (recoveredBlock64Value2).
    recoveredBlock64Value3
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := 'AxisGrid'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := [:recoveredBlock90Arg1 | 
    | recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 recoveredBlock90Value3 |
    recoveredBlock90Value0 := recoveredLocal1.
    recoveredBlock90Value1 := recoveredBlock90Arg1.
    recoveredBlock90Value2 := (recoveredBlock90Value1) asColor.
    recoveredBlock90Value3 := (recoveredBlock90Value0) at: ('axisGrid') put: (recoveredBlock90Value2).
    recoveredBlock90Value3
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := 'AxisLine'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := [:recoveredBlock116Arg1 | 
    | recoveredBlock116Value0 recoveredBlock116Value1 recoveredBlock116Value2 recoveredBlock116Value3 |
    recoveredBlock116Value0 := recoveredLocal1.
    recoveredBlock116Value1 := recoveredBlock116Arg1.
    recoveredBlock116Value2 := (recoveredBlock116Value1) asColor.
    recoveredBlock116Value3 := (recoveredBlock116Value0) at: ('axisLine') put: (recoveredBlock116Value2).
    recoveredBlock116Value3
].
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := 'InactiveCursor'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := [:recoveredBlock142Arg1 | 
    | recoveredBlock142Value0 recoveredBlock142Value1 recoveredBlock142Value2 recoveredBlock142Value3 |
    recoveredBlock142Value0 := recoveredLocal1.
    recoveredBlock142Value1 := recoveredBlock142Arg1.
    recoveredBlock142Value2 := (recoveredBlock142Value1) asColor.
    recoveredBlock142Value3 := (recoveredBlock142Value0) at: ('inactiveCursor') put: (recoveredBlock142Value2).
    recoveredBlock142Value3
].
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := 'TriggerMarker'.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := [:recoveredBlock168Arg1 | 
    | recoveredBlock168Value0 recoveredBlock168Value1 recoveredBlock168Value2 recoveredBlock168Value3 |
    recoveredBlock168Value0 := recoveredLocal1.
    recoveredBlock168Value1 := recoveredBlock168Arg1.
    recoveredBlock168Value2 := (recoveredBlock168Value1) asColor.
    recoveredBlock168Value3 := (recoveredBlock168Value0) at: ('triggerMarker') put: (recoveredBlock168Value2).
    recoveredBlock168Value3
].
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 198] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack1) colorDict: (recoveredStack2).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := 'wDecimals'.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) getInt: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := [:recoveredBlock214Arg1 | 
    | recoveredBlock214Value0 recoveredBlock214Value1 recoveredBlock214Value2 |
    recoveredBlock214Value0 := recoveredArg1.
    recoveredBlock214Value1 := recoveredBlock214Arg1.
    recoveredBlock214Value2 := (recoveredBlock214Value0) wDecimals: (recoveredBlock214Value1).
    recoveredBlock214Value2
].
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := 'xDecimals'.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := (recoveredStack1) getInt: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack2 := [:recoveredBlock237Arg1 | 
    | recoveredBlock237Value0 recoveredBlock237Value1 recoveredBlock237Value2 |
    recoveredBlock237Value0 := recoveredArg1.
    recoveredBlock237Value1 := recoveredBlock237Arg1.
    recoveredBlock237Value2 := (recoveredBlock237Value0) xDecimals: (recoveredBlock237Value1).
    recoveredBlock237Value2
].
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack2 := 'yDecimals'.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := (recoveredStack1) getInt: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := [:recoveredBlock261Arg1 | 
    | recoveredBlock261Value0 recoveredBlock261Value1 recoveredBlock261Value2 |
    recoveredBlock261Value0 := recoveredArg1.
    recoveredBlock261Value1 := recoveredBlock261Arg1.
    recoveredBlock261Value2 := (recoveredBlock261Value0) yDecimals: (recoveredBlock261Value1).
    recoveredBlock261Value2
].
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack2 := 'displayType'.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack2 := [:recoveredBlock285Arg1 | 
    | recoveredBlock285Value0 recoveredBlock285Value1 recoveredBlock285Value2 |
    recoveredBlock285Value0 := recoveredArg1.
    recoveredBlock285Value1 := recoveredBlock285Arg1.
    recoveredBlock285Value2 := (recoveredBlock285Value0) displayType: (recoveredBlock285Value1).
    recoveredBlock285Value2
].
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := 'hexView'.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := [:recoveredBlock309Arg1 | 
    | recoveredBlock309Value0 recoveredBlock309Value1 recoveredBlock309Value2 |
    recoveredBlock309Value0 := recoveredArg1.
    recoveredBlock309Value1 := recoveredBlock309Arg1.
    recoveredBlock309Value2 := (recoveredBlock309Value0) hexView: (recoveredBlock309Value1).
    recoveredBlock309Value2
].
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack2 := 'showGrid'.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack2 := [:recoveredBlock333Arg1 | 
    | recoveredBlock333Value0 recoveredBlock333Value1 recoveredBlock333Value2 |
    recoveredBlock333Value0 := recoveredArg1.
    recoveredBlock333Value1 := recoveredBlock333Arg1.
    recoveredBlock333Value2 := (recoveredBlock333Value0) showGrid: (recoveredBlock333Value1).
    recoveredBlock333Value2
].
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack2 := 'symbolicName'.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack2 := [:recoveredBlock357Arg1 | 
    | recoveredBlock357Value0 recoveredBlock357Value1 recoveredBlock357Value2 |
    recoveredBlock357Value0 := recoveredArg1.
    recoveredBlock357Value1 := recoveredBlock357Arg1.
    recoveredBlock357Value2 := (recoveredBlock357Value0) symbolicName: (recoveredBlock357Value1).
    recoveredBlock357Value2
].
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack2 := 'incDecStep'.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDouble: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack2 := [:recoveredBlock381Arg1 | 
    | recoveredBlock381Value0 recoveredBlock381Value1 recoveredBlock381Value2 |
    recoveredBlock381Value0 := recoveredArg1.
    recoveredBlock381Value1 := recoveredBlock381Arg1.
    recoveredBlock381Value2 := (recoveredBlock381Value0) incDecStep: (recoveredBlock381Value1).
    recoveredBlock381Value2
].
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack2 := 'decimals'.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack1 := (recoveredStack1) getInt: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack2 := [:recoveredBlock405Arg1 | 
    | recoveredBlock405Value0 recoveredBlock405Value1 recoveredBlock405Value2 |
    recoveredBlock405Value0 := recoveredArg1.
    recoveredBlock405Value1 := recoveredBlock405Arg1.
    recoveredBlock405Value2 := (recoveredBlock405Value0) decimals: (recoveredBlock405Value1).
    recoveredBlock405Value2
].
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack2 := 'columnWidth'.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack1 := (recoveredStack1) getInt: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack2 := [:recoveredBlock429Arg1 | 
    | recoveredBlock429Value0 recoveredBlock429Value1 recoveredBlock429Value2 |
    recoveredBlock429Value0 := recoveredArg1.
    recoveredBlock429Value1 := recoveredBlock429Arg1.
    recoveredBlock429Value2 := (recoveredBlock429Value0) columnWidth: (recoveredBlock429Value1).
    recoveredBlock429Value2
].
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack2 := 'displayedGONumber'.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack1 := (recoveredStack1) getInt: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack2 := [:recoveredBlock453Arg1 | 
    | recoveredBlock453Stack0 recoveredBlock453Stack1 recoveredBlock453Stack2 recoveredBlock453Stack3 recoveredBlock453PC recoveredBlock453Step recoveredBlock453Done recoveredBlock453Result |
    recoveredBlock453Stack0 := self.
    recoveredBlock453PC := 460.
    recoveredBlock453Done := false.
    [recoveredBlock453Done not] whileTrue: [
        recoveredBlock453Step := recoveredBlock453PC.
        recoveredBlock453Step = 460 ifTrue: [
            recoveredBlock453Stack1 := recoveredBlock453Arg1.
            recoveredBlock453PC := 461.
        ].
        recoveredBlock453Step = 461 ifTrue: [
            recoveredBlock453Stack2 := -1.
            recoveredBlock453PC := 463.
        ].
        recoveredBlock453Step = 463 ifTrue: [
            recoveredBlock453Stack1 := (recoveredBlock453Stack1) = (recoveredBlock453Stack2).
            recoveredBlock453PC := 464.
        ].
        recoveredBlock453Step = 464 ifTrue: [
            (recoveredBlock453Stack1) ifTrue: [recoveredBlock453PC := 468] ifFalse: [recoveredBlock453PC := 478].
        ].
        recoveredBlock453Step = 468 ifTrue: [
            recoveredBlock453Stack1 := recoveredArg1.
            recoveredBlock453PC := 471.
        ].
        recoveredBlock453Step = 471 ifTrue: [
            recoveredBlock453Stack2 := 'all'.
            recoveredBlock453PC := 473.
        ].
        recoveredBlock453Step = 473 ifTrue: [
            recoveredBlock453Stack1 := (recoveredBlock453Stack1) displayedGONumber: (recoveredBlock453Stack2).
            recoveredBlock453PC := 475.
        ].
        recoveredBlock453Step = 475 ifTrue: [
            recoveredBlock453PC := 484.
        ].
        recoveredBlock453Step = 478 ifTrue: [
            recoveredBlock453Stack1 := recoveredArg1.
            recoveredBlock453PC := 481.
        ].
        recoveredBlock453Step = 481 ifTrue: [
            recoveredBlock453Stack2 := recoveredBlock453Arg1.
            recoveredBlock453PC := 482.
        ].
        recoveredBlock453Step = 482 ifTrue: [
            recoveredBlock453Stack1 := (recoveredBlock453Stack1) displayedGONumber: (recoveredBlock453Stack2).
            recoveredBlock453PC := 484.
        ].
        recoveredBlock453Step = 484 ifTrue: [
            recoveredBlock453Result := recoveredBlock453Stack1.
            recoveredBlock453Done := true.
        ].
    ].
    recoveredBlock453Result
].
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack2 := 'largeFont'.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack2 := [:recoveredBlock495Arg1 | 
    | recoveredBlock495Value0 recoveredBlock495Value1 recoveredBlock495Value2 |
    recoveredBlock495Value0 := recoveredArg1.
    recoveredBlock495Value1 := recoveredBlock495Arg1.
    recoveredBlock495Value2 := (recoveredBlock495Value0) largeFont: (recoveredBlock495Value1).
    recoveredBlock495Value2
].
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack2 := 'numberRepresentation'.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack1 := (recoveredStack1) getEnum: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack2 := [:recoveredBlock519Arg1 | 
    | recoveredBlock519Value0 recoveredBlock519Value1 recoveredBlock519Value2 |
    recoveredBlock519Value0 := recoveredArg1.
    recoveredBlock519Value1 := recoveredBlock519Arg1.
    recoveredBlock519Value2 := (recoveredBlock519Value0) numberRepresentation: (recoveredBlock519Value1).
    recoveredBlock519Value2
].
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack2 := 'min'.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDouble: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack2 := [:recoveredBlock543Arg1 | 
    | recoveredBlock543Value0 recoveredBlock543Value1 recoveredBlock543Value2 |
    recoveredBlock543Value0 := recoveredArg1.
    recoveredBlock543Value1 := recoveredBlock543Arg1.
    recoveredBlock543Value2 := (recoveredBlock543Value0) min: (recoveredBlock543Value1).
    recoveredBlock543Value2
].
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack2 := 'max'.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDouble: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack2 := [:recoveredBlock569Arg1 | 
    | recoveredBlock569Value0 recoveredBlock569Value1 recoveredBlock569Value2 |
    recoveredBlock569Value0 := recoveredArg1.
    recoveredBlock569Value1 := recoveredBlock569Arg1.
    recoveredBlock569Value2 := (recoveredBlock569Value0) max: (recoveredBlock569Value1).
    recoveredBlock569Value2
].
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack2 := 'wMin'.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDouble: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack2 := [:recoveredBlock597Arg1 | 
    | recoveredBlock597Value0 recoveredBlock597Value1 recoveredBlock597Value2 |
    recoveredBlock597Value0 := recoveredArg1.
    recoveredBlock597Value1 := recoveredBlock597Arg1.
    recoveredBlock597Value2 := (recoveredBlock597Value0) wMin: (recoveredBlock597Value1).
    recoveredBlock597Value2
].
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack2 := 'wMax'.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDouble: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            recoveredStack2 := [:recoveredBlock625Arg1 | 
    | recoveredBlock625Value0 recoveredBlock625Value1 recoveredBlock625Value2 |
    recoveredBlock625Value0 := recoveredArg1.
    recoveredBlock625Value1 := recoveredBlock625Arg1.
    recoveredBlock625Value2 := (recoveredBlock625Value0) wMax: (recoveredBlock625Value1).
    recoveredBlock625Value2
].
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            recoveredStack2 := 'xMin'.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDouble: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredStack2 := [:recoveredBlock653Arg1 | 
    | recoveredBlock653Value0 recoveredBlock653Value1 recoveredBlock653Value2 |
    recoveredBlock653Value0 := recoveredArg1.
    recoveredBlock653Value1 := recoveredBlock653Arg1.
    recoveredBlock653Value2 := (recoveredBlock653Value0) xMin: (recoveredBlock653Value1).
    recoveredBlock653Value2
].
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            recoveredStack2 := 'xMax'.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDouble: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 681.
        ].
        recoveredStep = 681 ifTrue: [
            recoveredStack2 := [:recoveredBlock681Arg1 | 
    | recoveredBlock681Value0 recoveredBlock681Value1 recoveredBlock681Value2 |
    recoveredBlock681Value0 := recoveredArg1.
    recoveredBlock681Value1 := recoveredBlock681Arg1.
    recoveredBlock681Value2 := (recoveredBlock681Value0) xMax: (recoveredBlock681Value1).
    recoveredBlock681Value2
].
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 700.
        ].
        recoveredStep = 700 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack2 := 'yMin'.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDouble: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack2 := [:recoveredBlock709Arg1 | 
    | recoveredBlock709Value0 recoveredBlock709Value1 recoveredBlock709Value2 |
    recoveredBlock709Value0 := recoveredArg1.
    recoveredBlock709Value1 := recoveredBlock709Arg1.
    recoveredBlock709Value2 := (recoveredBlock709Value0) yMin: (recoveredBlock709Value1).
    recoveredBlock709Value2
].
            recoveredPC := 726.
        ].
        recoveredStep = 726 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 731.
        ].
        recoveredStep = 731 ifTrue: [
            recoveredStack2 := 'yMax'.
            recoveredPC := 734.
        ].
        recoveredStep = 734 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 735.
        ].
        recoveredStep = 735 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDouble: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 737.
        ].
        recoveredStep = 737 ifTrue: [
            recoveredStack2 := [:recoveredBlock737Arg1 | 
    | recoveredBlock737Value0 recoveredBlock737Value1 recoveredBlock737Value2 |
    recoveredBlock737Value0 := recoveredArg1.
    recoveredBlock737Value1 := recoveredBlock737Arg1.
    recoveredBlock737Value2 := (recoveredBlock737Value0) yMax: (recoveredBlock737Value1).
    recoveredBlock737Value2
].
            recoveredPC := 754.
        ].
        recoveredStep = 754 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 759.
        ].
        recoveredStep = 759 ifTrue: [
            recoveredStack2 := 'workingPoint'.
            recoveredPC := 762.
        ].
        recoveredStep = 762 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 765.
        ].
        recoveredStep = 765 ifTrue: [
            recoveredStack2 := [:recoveredBlock765Arg1 | 
    | recoveredBlock765Value0 recoveredBlock765Value1 recoveredBlock765Value2 |
    recoveredBlock765Value0 := recoveredArg1.
    recoveredBlock765Value1 := recoveredBlock765Arg1.
    recoveredBlock765Value2 := (recoveredBlock765Value0) workingPoint: (recoveredBlock765Value1).
    recoveredBlock765Value2
].
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            recoveredStack2 := 'showKeyHelp'.
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 791.
        ].
        recoveredStep = 791 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            recoveredStack2 := [:recoveredBlock793Arg1 | 
    | recoveredBlock793Value0 recoveredBlock793Value1 recoveredBlock793Value2 |
    recoveredBlock793Value0 := recoveredArg1.
    recoveredBlock793Value1 := recoveredBlock793Arg1.
    recoveredBlock793Value2 := (recoveredBlock793Value0) showKeyHelp: (recoveredBlock793Value1).
    recoveredBlock793Value2
].
            recoveredPC := 810.
        ].
        recoveredStep = 810 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 812.
        ].
        recoveredStep = 812 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 815.
        ].
        recoveredStep = 815 ifTrue: [
            recoveredStack2 := 'state'.
            recoveredPC := 818.
        ].
        recoveredStep = 818 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 819.
        ].
        recoveredStep = 819 ifTrue: [
            recoveredStack1 := (recoveredStack1) getInt: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 821.
        ].
        recoveredStep = 821 ifTrue: [
            recoveredStack2 := [:recoveredBlock821Arg1 | 
    | recoveredBlock821Value0 recoveredBlock821Value1 recoveredBlock821Value2 |
    recoveredBlock821Value0 := recoveredArg1.
    recoveredBlock821Value1 := recoveredBlock821Arg1.
    recoveredBlock821Value2 := (recoveredBlock821Value0) state: (recoveredBlock821Value1).
    recoveredBlock821Value2
].
            recoveredPC := 838.
        ].
        recoveredStep = 838 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 840.
        ].
        recoveredStep = 840 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 843.
        ].
        recoveredStep = 843 ifTrue: [
            recoveredStack2 := 'viewPoint'.
            recoveredPC := 846.
        ].
        recoveredStep = 846 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 847.
        ].
        recoveredStep = 847 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 849.
        ].
        recoveredStep = 849 ifTrue: [
            recoveredStack2 := [:recoveredBlock849Arg1 | 
    | recoveredBlock849Value0 recoveredBlock849Value1 recoveredBlock849Value2 |
    recoveredBlock849Value0 := recoveredArg1.
    recoveredBlock849Value1 := recoveredBlock849Arg1.
    recoveredBlock849Value2 := (recoveredBlock849Value0) viewPoint: (recoveredBlock849Value1).
    recoveredBlock849Value2
].
            recoveredPC := 866.
        ].
        recoveredStep = 866 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 868.
        ].
        recoveredStep = 868 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 871.
        ].
        recoveredStep = 871 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2066beb0; bytecode file offset 0xf688ec"
!ASDXMLImportStepExperimentBase methodsFor: 'recovered'!
readMeasureConfig: recoveredArg1 forElement: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'ForegroundColor'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredArg1.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) asColor.
    recoveredBlock15Value3 := (recoveredBlock15Value0) foregroundColor: (recoveredBlock15Value2).
    recoveredBlock15Value3
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 'Color'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 recoveredBlock40Value3 |
    recoveredBlock40Value0 := recoveredArg1.
    recoveredBlock40Value1 := recoveredBlock40Arg1.
    recoveredBlock40Value2 := (recoveredBlock40Value1) asColor.
    recoveredBlock40Value3 := (recoveredBlock40Value0) color: (recoveredBlock40Value2).
    recoveredBlock40Value3
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 'ActiveCursor'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 |
    recoveredBlock64Value0 := recoveredLocal1.
    recoveredBlock64Value1 := recoveredBlock64Arg1.
    recoveredBlock64Value2 := (recoveredBlock64Value1) asColor.
    recoveredBlock64Value3 := (recoveredBlock64Value0) at: ('activeCursor') put: (recoveredBlock64Value2).
    recoveredBlock64Value3
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := 'AxisGrid'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := [:recoveredBlock90Arg1 | 
    | recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 recoveredBlock90Value3 |
    recoveredBlock90Value0 := recoveredLocal1.
    recoveredBlock90Value1 := recoveredBlock90Arg1.
    recoveredBlock90Value2 := (recoveredBlock90Value1) asColor.
    recoveredBlock90Value3 := (recoveredBlock90Value0) at: ('axisGrid') put: (recoveredBlock90Value2).
    recoveredBlock90Value3
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := 'AxisLine'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := [:recoveredBlock116Arg1 | 
    | recoveredBlock116Value0 recoveredBlock116Value1 recoveredBlock116Value2 recoveredBlock116Value3 |
    recoveredBlock116Value0 := recoveredLocal1.
    recoveredBlock116Value1 := recoveredBlock116Arg1.
    recoveredBlock116Value2 := (recoveredBlock116Value1) asColor.
    recoveredBlock116Value3 := (recoveredBlock116Value0) at: ('axisLine') put: (recoveredBlock116Value2).
    recoveredBlock116Value3
].
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := 'InactiveCursor'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := [:recoveredBlock142Arg1 | 
    | recoveredBlock142Value0 recoveredBlock142Value1 recoveredBlock142Value2 recoveredBlock142Value3 |
    recoveredBlock142Value0 := recoveredLocal1.
    recoveredBlock142Value1 := recoveredBlock142Arg1.
    recoveredBlock142Value2 := (recoveredBlock142Value1) asColor.
    recoveredBlock142Value3 := (recoveredBlock142Value0) at: ('inactiveCursor') put: (recoveredBlock142Value2).
    recoveredBlock142Value3
].
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := 'TriggerMarker'.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := [:recoveredBlock168Arg1 | 
    | recoveredBlock168Value0 recoveredBlock168Value1 recoveredBlock168Value2 recoveredBlock168Value3 |
    recoveredBlock168Value0 := recoveredLocal1.
    recoveredBlock168Value1 := recoveredBlock168Arg1.
    recoveredBlock168Value2 := (recoveredBlock168Value1) asColor.
    recoveredBlock168Value3 := (recoveredBlock168Value0) at: ('triggerMarker') put: (recoveredBlock168Value2).
    recoveredBlock168Value3
].
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := 'BackgroundColor'.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := [:recoveredBlock194Arg1 | 
    | recoveredBlock194Value0 recoveredBlock194Value1 recoveredBlock194Value2 recoveredBlock194Value3 |
    recoveredBlock194Value0 := recoveredArg1.
    recoveredBlock194Value1 := recoveredBlock194Arg1.
    recoveredBlock194Value2 := (recoveredBlock194Value1) asColor.
    recoveredBlock194Value3 := (recoveredBlock194Value0) backgroundColor: (recoveredBlock194Value2).
    recoveredBlock194Value3
].
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 222] ifFalse: [recoveredPC := 230].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack1) colorDict: (recoveredStack2).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := 'decimals'.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) getInt: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := [:recoveredBlock238Arg1 | 
    | recoveredBlock238Value0 recoveredBlock238Value1 recoveredBlock238Value2 |
    recoveredBlock238Value0 := recoveredArg1.
    recoveredBlock238Value1 := recoveredBlock238Arg1.
    recoveredBlock238Value2 := (recoveredBlock238Value0) decimals: (recoveredBlock238Value1).
    recoveredBlock238Value2
].
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack2 := 'displayType'.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := [:recoveredBlock261Arg1 | 
    | recoveredBlock261Value0 recoveredBlock261Value1 recoveredBlock261Value2 |
    recoveredBlock261Value0 := recoveredArg1.
    recoveredBlock261Value1 := recoveredBlock261Arg1.
    recoveredBlock261Value2 := (recoveredBlock261Value0) displayType: (recoveredBlock261Value1).
    recoveredBlock261Value2
].
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack2 := 'hexView'.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack2 := [:recoveredBlock285Arg1 | 
    | recoveredBlock285Value0 recoveredBlock285Value1 recoveredBlock285Value2 |
    recoveredBlock285Value0 := recoveredArg1.
    recoveredBlock285Value1 := recoveredBlock285Arg1.
    recoveredBlock285Value2 := (recoveredBlock285Value0) hexView: (recoveredBlock285Value1).
    recoveredBlock285Value2
].
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := 'showGrid'.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := [:recoveredBlock309Arg1 | 
    | recoveredBlock309Value0 recoveredBlock309Value1 recoveredBlock309Value2 |
    recoveredBlock309Value0 := recoveredArg1.
    recoveredBlock309Value1 := recoveredBlock309Arg1.
    recoveredBlock309Value2 := (recoveredBlock309Value0) showGrid: (recoveredBlock309Value1).
    recoveredBlock309Value2
].
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack2 := 'symbolicName'.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack2 := [:recoveredBlock333Arg1 | 
    | recoveredBlock333Value0 recoveredBlock333Value1 recoveredBlock333Value2 |
    recoveredBlock333Value0 := recoveredArg1.
    recoveredBlock333Value1 := recoveredBlock333Arg1.
    recoveredBlock333Value2 := (recoveredBlock333Value0) symbolicName: (recoveredBlock333Value1).
    recoveredBlock333Value2
].
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack2 := 'highBound'.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDouble: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack2 := [:recoveredBlock357Arg1 | 
    | recoveredBlock357Value0 recoveredBlock357Value1 recoveredBlock357Value2 |
    recoveredBlock357Value0 := recoveredArg1.
    recoveredBlock357Value1 := recoveredBlock357Arg1.
    recoveredBlock357Value2 := (recoveredBlock357Value0) highBound: (recoveredBlock357Value1).
    recoveredBlock357Value2
].
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack2 := 'lowBound'.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDouble: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack2 := [:recoveredBlock381Arg1 | 
    | recoveredBlock381Value0 recoveredBlock381Value1 recoveredBlock381Value2 |
    recoveredBlock381Value0 := recoveredArg1.
    recoveredBlock381Value1 := recoveredBlock381Arg1.
    recoveredBlock381Value2 := (recoveredBlock381Value0) lowBound: (recoveredBlock381Value1).
    recoveredBlock381Value2
].
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack2 := 'largeFont'.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack2 := [:recoveredBlock405Arg1 | 
    | recoveredBlock405Value0 recoveredBlock405Value1 recoveredBlock405Value2 |
    recoveredBlock405Value0 := recoveredArg1.
    recoveredBlock405Value1 := recoveredBlock405Arg1.
    recoveredBlock405Value2 := (recoveredBlock405Value0) largeFont: (recoveredBlock405Value1).
    recoveredBlock405Value2
].
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack2 := 'numberRepresentation'.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack1 := (recoveredStack1) getEnum: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack2 := [:recoveredBlock429Arg1 | 
    | recoveredBlock429Value0 recoveredBlock429Value1 recoveredBlock429Value2 |
    recoveredBlock429Value0 := recoveredArg1.
    recoveredBlock429Value1 := recoveredBlock429Arg1.
    recoveredBlock429Value2 := (recoveredBlock429Value0) numberRepresentation: (recoveredBlock429Value1).
    recoveredBlock429Value2
].
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack2 := 'min'.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDouble: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack2 := [:recoveredBlock453Arg1 | 
    | recoveredBlock453Value0 recoveredBlock453Value1 recoveredBlock453Value2 |
    recoveredBlock453Value0 := recoveredArg1.
    recoveredBlock453Value1 := recoveredBlock453Arg1.
    recoveredBlock453Value2 := (recoveredBlock453Value0) wMin: (recoveredBlock453Value1).
    recoveredBlock453Value2
].
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack2 := 'max'.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDouble: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack2 := [:recoveredBlock477Arg1 | 
    | recoveredBlock477Value0 recoveredBlock477Value1 recoveredBlock477Value2 |
    recoveredBlock477Value0 := recoveredArg1.
    recoveredBlock477Value1 := recoveredBlock477Arg1.
    recoveredBlock477Value2 := (recoveredBlock477Value0) wMax: (recoveredBlock477Value1).
    recoveredBlock477Value2
].
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack2 := 'xMin'.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDouble: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack2 := [:recoveredBlock501Arg1 | 
    | recoveredBlock501Value0 recoveredBlock501Value1 recoveredBlock501Value2 |
    recoveredBlock501Value0 := recoveredArg1.
    recoveredBlock501Value1 := recoveredBlock501Arg1.
    recoveredBlock501Value2 := (recoveredBlock501Value0) xMin: (recoveredBlock501Value1).
    recoveredBlock501Value2
].
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack2 := 'xMax'.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDouble: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack2 := [:recoveredBlock525Arg1 | 
    | recoveredBlock525Value0 recoveredBlock525Value1 recoveredBlock525Value2 |
    recoveredBlock525Value0 := recoveredArg1.
    recoveredBlock525Value1 := recoveredBlock525Arg1.
    recoveredBlock525Value2 := (recoveredBlock525Value0) xMax: (recoveredBlock525Value1).
    recoveredBlock525Value2
].
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack2 := 'autoActivate'.
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack2 := [:recoveredBlock549Arg1 | 
    | recoveredBlock549Value0 recoveredBlock549Value1 recoveredBlock549Value2 |
    recoveredBlock549Value0 := recoveredArg1.
    recoveredBlock549Value1 := recoveredBlock549Arg1.
    recoveredBlock549Value2 := (recoveredBlock549Value0) autoActivateFlag: (recoveredBlock549Value1).
    recoveredBlock549Value2
].
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack2 := 'preTriggerRatio'.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack1 := (recoveredStack1) getInt: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack2 := [:recoveredBlock577Arg1 | 
    | recoveredBlock577Value0 recoveredBlock577Value1 recoveredBlock577Value2 |
    recoveredBlock577Value0 := recoveredArg1.
    recoveredBlock577Value1 := recoveredBlock577Arg1.
    recoveredBlock577Value2 := (recoveredBlock577Value0) preTriggerRatio: (recoveredBlock577Value1).
    recoveredBlock577Value2
].
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack2 := 'showKeyHelp'.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack2 := [:recoveredBlock605Arg1 | 
    | recoveredBlock605Value0 recoveredBlock605Value1 recoveredBlock605Value2 |
    recoveredBlock605Value0 := recoveredArg1.
    recoveredBlock605Value1 := recoveredBlock605Arg1.
    recoveredBlock605Value2 := (recoveredBlock605Value0) showKeyHelp: (recoveredBlock605Value1).
    recoveredBlock605Value2
].
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack2 := 'showSetupPanel'.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack2 := [:recoveredBlock633Arg1 | 
    | recoveredBlock633Value0 recoveredBlock633Value1 recoveredBlock633Value2 |
    recoveredBlock633Value0 := recoveredArg1.
    recoveredBlock633Value1 := recoveredBlock633Arg1.
    recoveredBlock633Value2 := (recoveredBlock633Value0) showSetupPanel: (recoveredBlock633Value1).
    recoveredBlock633Value2
].
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack2 := 'singleWAxis'.
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 661.
        ].
        recoveredStep = 661 ifTrue: [
            recoveredStack2 := [:recoveredBlock661Arg1 | 
    | recoveredBlock661Value0 recoveredBlock661Value1 recoveredBlock661Value2 |
    recoveredBlock661Value0 := recoveredArg1.
    recoveredBlock661Value1 := recoveredBlock661Arg1.
    recoveredBlock661Value2 := (recoveredBlock661Value0) singleWAxis: (recoveredBlock661Value1).
    recoveredBlock661Value2
].
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack2 := 'state'.
            recoveredPC := 686.
        ].
        recoveredStep = 686 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            recoveredStack1 := (recoveredStack1) getInt: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredStack2 := [:recoveredBlock689Arg1 | 
    | recoveredBlock689Value0 recoveredBlock689Value1 recoveredBlock689Value2 |
    recoveredBlock689Value0 := recoveredArg1.
    recoveredBlock689Value1 := recoveredBlock689Arg1.
    recoveredBlock689Value2 := (recoveredBlock689Value0) state: (recoveredBlock689Value1).
    recoveredBlock689Value2
].
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 708.
        ].
        recoveredStep = 708 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredStack2 := 'triggerCondition'.
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 715.
        ].
        recoveredStep = 715 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack2 := [:recoveredBlock717Arg1 | 
    | recoveredBlock717Value0 recoveredBlock717Value1 recoveredBlock717Value2 |
    recoveredBlock717Value0 := recoveredArg1.
    recoveredBlock717Value1 := recoveredBlock717Arg1.
    recoveredBlock717Value2 := (recoveredBlock717Value0) triggerCondition: (recoveredBlock717Value1).
    recoveredBlock717Value2
].
            recoveredPC := 734.
        ].
        recoveredStep = 734 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 739.
        ].
        recoveredStep = 739 ifTrue: [
            recoveredStack2 := 'triggerActive'.
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 745.
        ].
        recoveredStep = 745 ifTrue: [
            recoveredStack2 := [:recoveredBlock745Arg1 | 
    | recoveredBlock745Value0 recoveredBlock745Value1 recoveredBlock745Value2 |
    recoveredBlock745Value0 := recoveredArg1.
    recoveredBlock745Value1 := recoveredBlock745Arg1.
    recoveredBlock745Value2 := (recoveredBlock745Value0) triggerActive: (recoveredBlock745Value1).
    recoveredBlock745Value2
].
            recoveredPC := 762.
        ].
        recoveredStep = 762 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 764.
        ].
        recoveredStep = 764 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            recoveredStack2 := 'triggerType'.
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack1 := (recoveredStack1) getEnum: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredStack2 := [:recoveredBlock773Arg1 | 
    | recoveredBlock773Value0 recoveredBlock773Value1 recoveredBlock773Value2 |
    recoveredBlock773Value0 := recoveredArg1.
    recoveredBlock773Value1 := recoveredBlock773Arg1.
    recoveredBlock773Value2 := (recoveredBlock773Value0) triggerType: (recoveredBlock773Value1).
    recoveredBlock773Value2
].
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 792.
        ].
        recoveredStep = 792 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 795.
        ].
        recoveredStep = 795 ifTrue: [
            recoveredStack2 := 'viewMinMax'.
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 799.
        ].
        recoveredStep = 799 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack2 := [:recoveredBlock801Arg1 | 
    | recoveredBlock801Value0 recoveredBlock801Value1 recoveredBlock801Value2 |
    recoveredBlock801Value0 := recoveredArg1.
    recoveredBlock801Value1 := recoveredBlock801Arg1.
    recoveredBlock801Value2 := (recoveredBlock801Value0) viewMinMax: (recoveredBlock801Value1).
    recoveredBlock801Value2
].
            recoveredPC := 818.
        ].
        recoveredStep = 818 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 820.
        ].
        recoveredStep = 820 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 823.
        ].
        recoveredStep = 823 ifTrue: [
            recoveredStack2 := 'viewRate'.
            recoveredPC := 826.
        ].
        recoveredStep = 826 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 827.
        ].
        recoveredStep = 827 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 829.
        ].
        recoveredStep = 829 ifTrue: [
            recoveredStack2 := [:recoveredBlock829Arg1 | 
    | recoveredBlock829Value0 recoveredBlock829Value1 recoveredBlock829Value2 |
    recoveredBlock829Value0 := recoveredArg1.
    recoveredBlock829Value1 := recoveredBlock829Arg1.
    recoveredBlock829Value2 := (recoveredBlock829Value0) viewRate: (recoveredBlock829Value1).
    recoveredBlock829Value2
].
            recoveredPC := 846.
        ].
        recoveredStep = 846 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 848.
        ].
        recoveredStep = 848 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 851.
        ].
        recoveredStep = 851 ifTrue: [
            recoveredStack2 := 'jumpToNextTimeMode'.
            recoveredPC := 854.
        ].
        recoveredStep = 854 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 855.
        ].
        recoveredStep = 855 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 857.
        ].
        recoveredStep = 857 ifTrue: [
            recoveredStack2 := [:recoveredBlock857Arg1 | 
    | recoveredBlock857Value0 recoveredBlock857Value1 recoveredBlock857Value2 |
    recoveredBlock857Value0 := recoveredArg1.
    recoveredBlock857Value1 := recoveredBlock857Arg1.
    recoveredBlock857Value2 := (recoveredBlock857Value0) jumpToNextTimeMode: (recoveredBlock857Value1).
    recoveredBlock857Value2
].
            recoveredPC := 874.
        ].
        recoveredStep = 874 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 876.
        ].
        recoveredStep = 876 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 879.
        ].
        recoveredStep = 879 ifTrue: [
            recoveredStack2 := 'jumpDistance'.
            recoveredPC := 882.
        ].
        recoveredStep = 882 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 883.
        ].
        recoveredStep = 883 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDouble: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 885.
        ].
        recoveredStep = 885 ifTrue: [
            recoveredStack2 := [:recoveredBlock885Arg1 | 
    | recoveredBlock885Value0 recoveredBlock885Value1 recoveredBlock885Value2 |
    recoveredBlock885Value0 := recoveredArg1.
    recoveredBlock885Value1 := recoveredBlock885Arg1.
    recoveredBlock885Value2 := (recoveredBlock885Value0) jumpDistance: (recoveredBlock885Value1).
    recoveredBlock885Value2
].
            recoveredPC := 902.
        ].
        recoveredStep = 902 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 904.
        ].
        recoveredStep = 904 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 907.
        ].
        recoveredStep = 907 ifTrue: [
            recoveredStack2 := 'bigJumpDistance'.
            recoveredPC := 910.
        ].
        recoveredStep = 910 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 911.
        ].
        recoveredStep = 911 ifTrue: [
            recoveredStack1 := (recoveredStack1) getInt: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 913.
        ].
        recoveredStep = 913 ifTrue: [
            recoveredStack2 := [:recoveredBlock913Arg1 | 
    | recoveredBlock913Value0 recoveredBlock913Value1 recoveredBlock913Value2 |
    recoveredBlock913Value0 := recoveredArg1.
    recoveredBlock913Value1 := recoveredBlock913Arg1.
    recoveredBlock913Value2 := (recoveredBlock913Value0) bigJumpDistance: (recoveredBlock913Value1).
    recoveredBlock913Value2
].
            recoveredPC := 930.
        ].
        recoveredStep = 930 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 932.
        ].
        recoveredStep = 932 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 935.
        ].
        recoveredStep = 935 ifTrue: [
            recoveredStack2 := 'timePrecision'.
            recoveredPC := 938.
        ].
        recoveredStep = 938 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 939.
        ].
        recoveredStep = 939 ifTrue: [
            recoveredStack1 := (recoveredStack1) getInt: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 941.
        ].
        recoveredStep = 941 ifTrue: [
            recoveredStack2 := [:recoveredBlock941Arg1 | 
    | recoveredBlock941Value0 recoveredBlock941Value1 recoveredBlock941Value2 |
    recoveredBlock941Value0 := recoveredArg1.
    recoveredBlock941Value1 := recoveredBlock941Arg1.
    recoveredBlock941Value2 := (recoveredBlock941Value0) timePrecision: (recoveredBlock941Value1).
    recoveredBlock941Value2
].
            recoveredPC := 958.
        ].
        recoveredStep = 958 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 960.
        ].
        recoveredStep = 960 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 963.
        ].
        recoveredStep = 963 ifTrue: [
            recoveredStack2 := 'valPrecision'.
            recoveredPC := 966.
        ].
        recoveredStep = 966 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 967.
        ].
        recoveredStep = 967 ifTrue: [
            recoveredStack1 := (recoveredStack1) getInt: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 969.
        ].
        recoveredStep = 969 ifTrue: [
            recoveredStack2 := [:recoveredBlock969Arg1 | 
    | recoveredBlock969Value0 recoveredBlock969Value1 recoveredBlock969Value2 |
    recoveredBlock969Value0 := recoveredArg1.
    recoveredBlock969Value1 := recoveredBlock969Arg1.
    recoveredBlock969Value2 := (recoveredBlock969Value0) valuePrecision: (recoveredBlock969Value1).
    recoveredBlock969Value2
].
            recoveredPC := 986.
        ].
        recoveredStep = 986 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 988.
        ].
        recoveredStep = 988 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 991.
        ].
        recoveredStep = 991 ifTrue: [
            recoveredStack2 := 'splitbarChildProportions'.
            recoveredPC := 994.
        ].
        recoveredStep = 994 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 995.
        ].
        recoveredStep = 995 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNZQR: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 999.
        ].
        recoveredStep = 999 ifTrue: [
            recoveredStack2 := [:recoveredBlock999Arg1 | 
    | recoveredBlock999Local1 recoveredBlock999Stack0 recoveredBlock999Stack1 recoveredBlock999Stack2 recoveredBlock999Stack3 recoveredBlock999Stack4 recoveredBlock999Stack5 recoveredBlock999Stack6 recoveredBlock999PC recoveredBlock999Step recoveredBlock999Done recoveredBlock999Result |
    recoveredBlock999Stack0 := self.
    recoveredBlock999PC := 1006.
    recoveredBlock999Done := false.
    [recoveredBlock999Done not] whileTrue: [
        recoveredBlock999Step := recoveredBlock999PC.
        recoveredBlock999Step = 1006 ifTrue: [
            recoveredBlock999Stack1 := nil.
            recoveredBlock999PC := 1007.
        ].
        recoveredBlock999Step = 1007 ifTrue: [
            recoveredBlock999Stack2 := recoveredBlock999Arg1.
            recoveredBlock999PC := 1008.
        ].
        recoveredBlock999Step = 1008 ifTrue: [
            recoveredBlock999Stack2 := (recoveredBlock999Stack2) isFraction.
            recoveredBlock999PC := 1013.
        ].
        recoveredBlock999Step = 1013 ifTrue: [
            (recoveredBlock999Stack2) ifTrue: [recoveredBlock999PC := 1016] ifFalse: [recoveredBlock999PC := 1109].
        ].
        recoveredBlock999Step = 1016 ifTrue: [
            recoveredBlock999PC := 1017.
        ].
        recoveredBlock999Step = 1017 ifTrue: [
            recoveredBlock999Stack1 := Array.
            recoveredBlock999PC := 1020.
        ].
        recoveredBlock999Step = 1020 ifTrue: [
            recoveredBlock999Stack2 := 2.
            recoveredBlock999PC := 1022.
        ].
        recoveredBlock999Step = 1022 ifTrue: [
            recoveredBlock999Stack1 := (recoveredBlock999Stack1) new: (recoveredBlock999Stack2).
            recoveredBlock999PC := 1027.
        ].
        recoveredBlock999Step = 1027 ifTrue: [
            recoveredBlock999Local1 := recoveredBlock999Stack1.
            recoveredBlock999PC := 1028.
        ].
        recoveredBlock999Step = 1028 ifTrue: [
            recoveredBlock999Stack1 := recoveredBlock999Local1.
            recoveredBlock999PC := 1029.
        ].
        recoveredBlock999Step = 1029 ifTrue: [
            recoveredBlock999Stack2 := 1.
            recoveredBlock999PC := 1031.
        ].
        recoveredBlock999Step = 1031 ifTrue: [
            recoveredBlock999Stack3 := 100.
            recoveredBlock999PC := 1034.
        ].
        recoveredBlock999Step = 1034 ifTrue: [
            recoveredBlock999Stack4 := recoveredBlock999Arg1.
            recoveredBlock999PC := 1035.
        ].
        recoveredBlock999Step = 1035 ifTrue: [
            recoveredBlock999Stack4 := (recoveredBlock999Stack4) numerator.
            recoveredBlock999PC := 1039.
        ].
        recoveredBlock999Step = 1039 ifTrue: [
            recoveredBlock999Stack3 := (recoveredBlock999Stack3) * (recoveredBlock999Stack4).
            recoveredBlock999PC := 1040.
        ].
        recoveredBlock999Step = 1040 ifTrue: [
            recoveredBlock999Stack4 := recoveredBlock999Arg1.
            recoveredBlock999PC := 1041.
        ].
        recoveredBlock999Step = 1041 ifTrue: [
            recoveredBlock999Stack4 := (recoveredBlock999Stack4) numerator.
            recoveredBlock999PC := 1045.
        ].
        recoveredBlock999Step = 1045 ifTrue: [
            recoveredBlock999Stack5 := recoveredBlock999Arg1.
            recoveredBlock999PC := 1046.
        ].
        recoveredBlock999Step = 1046 ifTrue: [
            recoveredBlock999Stack5 := (recoveredBlock999Stack5) denominator.
            recoveredBlock999PC := 1051.
        ].
        recoveredBlock999Step = 1051 ifTrue: [
            recoveredBlock999Stack4 := (recoveredBlock999Stack4) + (recoveredBlock999Stack5).
            recoveredBlock999PC := 1052.
        ].
        recoveredBlock999Step = 1052 ifTrue: [
            recoveredBlock999Stack3 := (recoveredBlock999Stack3) / (recoveredBlock999Stack4).
            recoveredBlock999PC := 1057.
        ].
        recoveredBlock999Step = 1057 ifTrue: [
            recoveredBlock999Stack3 := (recoveredBlock999Stack3) asInteger.
            recoveredBlock999PC := 1061.
        ].
        recoveredBlock999Step = 1061 ifTrue: [
            (recoveredBlock999Stack1) at: (recoveredBlock999Stack2) put: (recoveredBlock999Stack3).
            recoveredBlock999PC := 1063.
        ].
        recoveredBlock999Step = 1063 ifTrue: [
            recoveredBlock999Stack1 := recoveredBlock999Local1.
            recoveredBlock999PC := 1064.
        ].
        recoveredBlock999Step = 1064 ifTrue: [
            recoveredBlock999Stack2 := 2.
            recoveredBlock999PC := 1066.
        ].
        recoveredBlock999Step = 1066 ifTrue: [
            recoveredBlock999Stack3 := 100.
            recoveredBlock999PC := 1070.
        ].
        recoveredBlock999Step = 1070 ifTrue: [
            recoveredBlock999Stack4 := recoveredBlock999Arg1.
            recoveredBlock999PC := 1071.
        ].
        recoveredBlock999Step = 1071 ifTrue: [
            recoveredBlock999Stack4 := (recoveredBlock999Stack4) denominator.
            recoveredBlock999PC := 1075.
        ].
        recoveredBlock999Step = 1075 ifTrue: [
            recoveredBlock999Stack3 := (recoveredBlock999Stack3) * (recoveredBlock999Stack4).
            recoveredBlock999PC := 1076.
        ].
        recoveredBlock999Step = 1076 ifTrue: [
            recoveredBlock999Stack4 := recoveredBlock999Arg1.
            recoveredBlock999PC := 1077.
        ].
        recoveredBlock999Step = 1077 ifTrue: [
            recoveredBlock999Stack4 := (recoveredBlock999Stack4) numerator.
            recoveredBlock999PC := 1081.
        ].
        recoveredBlock999Step = 1081 ifTrue: [
            recoveredBlock999Stack5 := recoveredBlock999Arg1.
            recoveredBlock999PC := 1082.
        ].
        recoveredBlock999Step = 1082 ifTrue: [
            recoveredBlock999Stack5 := (recoveredBlock999Stack5) denominator.
            recoveredBlock999PC := 1087.
        ].
        recoveredBlock999Step = 1087 ifTrue: [
            recoveredBlock999Stack4 := (recoveredBlock999Stack4) + (recoveredBlock999Stack5).
            recoveredBlock999PC := 1088.
        ].
        recoveredBlock999Step = 1088 ifTrue: [
            recoveredBlock999Stack3 := (recoveredBlock999Stack3) / (recoveredBlock999Stack4).
            recoveredBlock999PC := 1093.
        ].
        recoveredBlock999Step = 1093 ifTrue: [
            recoveredBlock999Stack3 := (recoveredBlock999Stack3) asInteger.
            recoveredBlock999PC := 1097.
        ].
        recoveredBlock999Step = 1097 ifTrue: [
            (recoveredBlock999Stack1) at: (recoveredBlock999Stack2) put: (recoveredBlock999Stack3).
            recoveredBlock999PC := 1099.
        ].
        recoveredBlock999Step = 1099 ifTrue: [
            recoveredBlock999Stack1 := recoveredArg1.
            recoveredBlock999PC := 1102.
        ].
        recoveredBlock999Step = 1102 ifTrue: [
            recoveredBlock999Stack2 := recoveredBlock999Local1.
            recoveredBlock999PC := 1103.
        ].
        recoveredBlock999Step = 1103 ifTrue: [
            recoveredBlock999Stack1 := (recoveredBlock999Stack1) splitbarChildProportions: (recoveredBlock999Stack2).
            recoveredBlock999PC := 1107.
        ].
        recoveredBlock999Step = 1107 ifTrue: [
            recoveredBlock999Stack2 := nil.
            recoveredBlock999PC := 1108.
        ].
        recoveredBlock999Step = 1108 ifTrue: [
            recoveredBlock999Local1 := recoveredBlock999Stack2.
            recoveredBlock999PC := 1109.
        ].
        recoveredBlock999Step = 1109 ifTrue: [
            recoveredBlock999Result := recoveredBlock999Stack1.
            recoveredBlock999Done := true.
        ].
    ].
    recoveredBlock999Result
].
            recoveredPC := 1110.
        ].
        recoveredStep = 1110 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 1112.
        ].
        recoveredStep = 1112 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 1115.
        ].
        recoveredStep = 1115 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

