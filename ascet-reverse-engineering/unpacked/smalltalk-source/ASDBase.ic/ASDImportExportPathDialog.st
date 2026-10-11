"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200c7738; bytecode file offset 0x9c400c"
!ASDImportExportPathDialog methodsFor: 'recovered'!
formatDictionary: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    formatDictionary := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c779c; bytecode file offset 0x9c4068"
!ASDImportExportPathDialog methodsFor: 'recovered'!
activeFormat: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    activeFormat := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201d6214; bytecode file offset 0xad2ae4"
!ASDImportExportPathDialog methodsFor: 'recovered'!
setFileType
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) widgetAt: ('fileTypeComboBox').
    recoveredValue1 := formatDictionary.
    recoveredValue2 := activeFormat.
    recoveredValue3 := (recoveredValue1) at: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , (' (').
    recoveredValue5 := activeFormat.
    recoveredValue6 := (recoveredValue4) , (recoveredValue5).
    recoveredValue7 := (recoveredValue6) , (')').
    (recoveredValue0) setString: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20204a94; bytecode file offset 0xb0135c"
!ASDImportExportPathDialog methodsFor: 'recovered'!
aFileTypeComboBoxSingle: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) item.
    recoveredValue4 := (recoveredValue3) indexOf: ($().
    recoveredValue5 := (recoveredValue4) + (1).
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (recoveredValue6) item.
    recoveredValue8 := (recoveredValue7) indexOf: ($)).
    recoveredValue9 := (recoveredValue8) + (-1).
    recoveredValue10 := (recoveredValue1) copyFrom: (recoveredValue5) to: (recoveredValue9).
    (self) activeFormat: (recoveredValue10).
    (self) setFileType.
    ^self
! !

"ASDBase.ic method 0x20254930; bytecode file offset 0xb5120c"
!ASDImportExportPathDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initializeAfterCreate.
    (self) setFileType.
    recoveredValue0 := (self) widgetAt: ('fileTypeComboBox').
    recoveredValue1 := formatDictionary.
    recoveredValue2 := activeFormat.
    recoveredValue3 := (recoveredValue1) at: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , (' (').
    recoveredValue5 := activeFormat.
    recoveredValue6 := (recoveredValue4) , (recoveredValue5).
    recoveredValue7 := (recoveredValue6) , (')').
    (recoveredValue0) setString: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x202e5620; bytecode file offset 0xbe1ef0"
!ASDImportExportPathDialog methodsFor: 'recovered'!
ok
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super ok.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := activeFormat.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := result.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := result.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) path.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            result := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := result.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) path.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := '\'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            result := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2069efb8; bytecode file offset 0xf9ba98"
!ASDImportExportPathDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block2812dc6cArg1 | 
    | block2812dc6cValue0 block2812dc6cValue1 block2812dc6cValue2 block2812dc6cValue3 block2812dc6cValue4 block2812dc6cValue5 block2812dc6cValue6 block2812dc6cValue7 block2812dc6cValue8 block2812dc6cValue9 block2812dc6cValue10 block2812dc6cValue11 |
    block2812dc6cValue0 := block2812dc6cArg1.
    block2812dc6cValue1 := block2812dc6cValue0.
    block2812dc6cValue2 := MWMINPUTSYSTEMMODAL.
    (block2812dc6cValue1) mwmInputMode: (block2812dc6cValue2).
    block2812dc6cValue3 := block2812dc6cValue0.
    (block2812dc6cValue3) title: ('Path Selection ').
    block2812dc6cValue4 := block2812dc6cValue0.
    block2812dc6cValue5 := MWMDECORALL.
    block2812dc6cValue6 := MWMDECORMINIMIZE.
    block2812dc6cValue7 := (block2812dc6cValue5) | (block2812dc6cValue6).
    block2812dc6cValue8 := MWMDECORMAXIMIZE.
    block2812dc6cValue9 := (block2812dc6cValue7) | (block2812dc6cValue8).
    (block2812dc6cValue4) mwmDecorations: (block2812dc6cValue9).
    block2812dc6cValue10 := block2812dc6cValue0.
    (block2812dc6cValue10) height: (404).
    block2812dc6cValue11 := (block2812dc6cValue0) width: (443).
    block2812dc6cValue11
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := [:block2812dc90Arg1 | 
    | block2812dc90Value0 block2812dc90Value1 block2812dc90Value2 block2812dc90Value3 block2812dc90Value4 block2812dc90Value5 |
    block2812dc90Value0 := block2812dc90Arg1.
    block2812dc90Value1 := block2812dc90Value0.
    (block2812dc90Value1) x: (318).
    block2812dc90Value2 := block2812dc90Value0.
    block2812dc90Value3 := XmVERTICAL.
    (block2812dc90Value2) orientation: (block2812dc90Value3).
    block2812dc90Value4 := block2812dc90Value0.
    (block2812dc90Value4) height: (250).
    block2812dc90Value5 := (block2812dc90Value0) width: (20).
    block2812dc90Value5
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := 'okPushButton'.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := [:block2812dcb4Arg1 | 
    | block2812dcb4Value0 block2812dcb4Value1 block2812dcb4Value2 block2812dcb4Value3 block2812dcb4Value4 block2812dcb4Value5 |
    block2812dcb4Value0 := block2812dcb4Arg1.
    block2812dcb4Value1 := block2812dcb4Value0.
    (block2812dcb4Value1) x: (251).
    block2812dcb4Value2 := block2812dcb4Value0.
    (block2812dcb4Value2) labelString: ('&Ok').
    block2812dcb4Value3 := block2812dcb4Value0.
    (block2812dcb4Value3) y: (10).
    block2812dcb4Value4 := block2812dcb4Value0.
    (block2812dcb4Value4) height: (25).
    block2812dcb4Value5 := (block2812dcb4Value0) width: (110).
    block2812dcb4Value5
].
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := 'okPushButton'.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := 'cancelPushButton'.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := [:block2812dcd8Arg1 | 
    | block2812dcd8Value0 block2812dcd8Value1 block2812dcd8Value2 block2812dcd8Value3 block2812dcd8Value4 block2812dcd8Value5 |
    block2812dcd8Value0 := block2812dcd8Arg1.
    block2812dcd8Value1 := block2812dcd8Value0.
    (block2812dcd8Value1) x: (251).
    block2812dcd8Value2 := block2812dcd8Value0.
    (block2812dcd8Value2) labelString: ('&Cancel').
    block2812dcd8Value3 := block2812dcd8Value0.
    (block2812dcd8Value3) y: (45).
    block2812dcd8Value4 := block2812dcd8Value0.
    (block2812dcd8Value4) height: (25).
    block2812dcd8Value5 := (block2812dcd8Value0) width: (110).
    block2812dcd8Value5
].
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := 'cancelPushButton'.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := 'newDirPushButton'.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack3 := [:block2812dcfcArg1 | 
    | block2812dcfcValue0 block2812dcfcValue1 block2812dcfcValue2 block2812dcfcValue3 block2812dcfcValue4 block2812dcfcValue5 |
    block2812dcfcValue0 := block2812dcfcArg1.
    block2812dcfcValue1 := block2812dcfcValue0.
    (block2812dcfcValue1) x: (251).
    block2812dcfcValue2 := block2812dcfcValue0.
    (block2812dcfcValue2) labelString: ('&New...').
    block2812dcfcValue3 := block2812dcfcValue0.
    (block2812dcfcValue3) y: (283).
    block2812dcfcValue4 := block2812dcfcValue0.
    (block2812dcfcValue4) height: (25).
    block2812dcfcValue5 := (block2812dcfcValue0) width: (110).
    block2812dcfcValue5
].
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack2 := 'newDirPushButton'.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack2 := 'volumeLabel'.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack3 := [:recoveredBlock343Arg1 | 
    | recoveredBlock343Value0 recoveredBlock343Value1 recoveredBlock343Value2 recoveredBlock343Value3 recoveredBlock343Value4 recoveredBlock343Value5 recoveredBlock343Value6 recoveredBlock343Value7 recoveredBlock343Value8 recoveredBlock343Value9 |
    recoveredBlock343Value0 := recoveredBlock343Arg1.
    recoveredBlock343Value1 := recoveredBlock343Value0.
    (recoveredBlock343Value1) x: (10).
    recoveredBlock343Value2 := recoveredBlock343Value0.
    recoveredBlock343Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock343Value2) alignment: (recoveredBlock343Value3).
    recoveredBlock343Value4 := recoveredBlock343Value0.
    (recoveredBlock343Value4) labelString: ('&Volume').
    recoveredBlock343Value5 := recoveredBlock343Value0.
    (recoveredBlock343Value5) marginWidth: (0).
    recoveredBlock343Value6 := recoveredBlock343Value0.
    (recoveredBlock343Value6) marginHeight: (0).
    recoveredBlock343Value7 := recoveredBlock343Value0.
    (recoveredBlock343Value7) y: (262).
    recoveredBlock343Value8 := (self) defaultLabelBlue.
    recoveredBlock343Value9 := (recoveredBlock343Value0) foregroundColor: (recoveredBlock343Value8).
    recoveredBlock343Value9
].
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack2 := 'volumeLabel'.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack2 := 'fileTypeLabel'.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack3 := [:recoveredBlock412Arg1 | 
    | recoveredBlock412Value0 recoveredBlock412Value1 recoveredBlock412Value2 recoveredBlock412Value3 recoveredBlock412Value4 recoveredBlock412Value5 recoveredBlock412Value6 recoveredBlock412Value7 recoveredBlock412Value8 recoveredBlock412Value9 |
    recoveredBlock412Value0 := recoveredBlock412Arg1.
    recoveredBlock412Value1 := recoveredBlock412Value0.
    (recoveredBlock412Value1) x: (120).
    recoveredBlock412Value2 := recoveredBlock412Value0.
    recoveredBlock412Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock412Value2) alignment: (recoveredBlock412Value3).
    recoveredBlock412Value4 := recoveredBlock412Value0.
    (recoveredBlock412Value4) labelString: ('&Export Format').
    recoveredBlock412Value5 := recoveredBlock412Value0.
    (recoveredBlock412Value5) marginWidth: (0).
    recoveredBlock412Value6 := recoveredBlock412Value0.
    (recoveredBlock412Value6) marginHeight: (0).
    recoveredBlock412Value7 := recoveredBlock412Value0.
    (recoveredBlock412Value7) y: (262).
    recoveredBlock412Value8 := (self) defaultLabelBlue.
    recoveredBlock412Value9 := (recoveredBlock412Value0) foregroundColor: (recoveredBlock412Value8).
    recoveredBlock412Value9
].
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack2 := 'fileTypeLabel'.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack2 := 'directoryIconTree'.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack3 := [:recoveredBlock486Arg1 | 
    | recoveredBlock486Value0 recoveredBlock486Value1 recoveredBlock486Value2 recoveredBlock486Value3 recoveredBlock486Value4 recoveredBlock486Value5 |
    recoveredBlock486Value0 := recoveredBlock486Arg1.
    recoveredBlock486Value1 := recoveredBlock486Value0.
    (recoveredBlock486Value1) itemWidth: (3).
    recoveredBlock486Value2 := recoveredBlock486Value0.
    (recoveredBlock486Value2) innerMargin: (1).
    recoveredBlock486Value3 := recoveredBlock486Value0.
    recoveredBlock486Value4 := (self) items.
    (recoveredBlock486Value3) items: (recoveredBlock486Value4).
    recoveredBlock486Value5 := (recoveredBlock486Value0) itemHeight: (20).
    recoveredBlock486Value5
].
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconTree: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack2 := 'aScrolledIconTree1'.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack2 := 'directoryIconTree'.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack2 := 'volumeComboBox'.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack3 := [:block2812dd20Arg1 | 
    | block2812dd20Stack0 block2812dd20Stack1 block2812dd20Stack2 block2812dd20Stack3 block2812dd20Stack4 block2812dd20Stack5 block2812dd20PC block2812dd20Step block2812dd20Done block2812dd20Result |
    block2812dd20Stack0 := self.
    block2812dd20PC := 4.
    block2812dd20Done := false.
    [block2812dd20Done not] whileTrue: [
        block2812dd20Step := block2812dd20PC.
        block2812dd20Step = 4 ifTrue: [
            block2812dd20Stack1 := block2812dd20Arg1.
            block2812dd20PC := 5.
        ].
        block2812dd20Step = 5 ifTrue: [
            block2812dd20Stack2 := block2812dd20Stack1.
            block2812dd20PC := 6.
        ].
        block2812dd20Step = 6 ifTrue: [
            block2812dd20Stack3 := 10.
            block2812dd20PC := 8.
        ].
        block2812dd20Step = 8 ifTrue: [
            (block2812dd20Stack2) x: (block2812dd20Stack3).
            block2812dd20Stack2 := block2812dd20Stack1.
            block2812dd20PC := 11.
        ].
        block2812dd20Step = 11 ifTrue: [
            block2812dd20Stack3 := 1.
            block2812dd20PC := 13.
        ].
        block2812dd20Step = 13 ifTrue: [
            (block2812dd20Stack2) borderWidth: (block2812dd20Stack3).
            block2812dd20Stack2 := block2812dd20Stack1.
            block2812dd20PC := 17.
        ].
        block2812dd20Step = 17 ifTrue: [
            block2812dd20Stack3 := 229.
            block2812dd20PC := 20.
        ].
        block2812dd20Step = 20 ifTrue: [
            (block2812dd20Stack2) y: (block2812dd20Stack3).
            block2812dd20Stack2 := block2812dd20Stack1.
            block2812dd20PC := 23.
        ].
        block2812dd20Step = 23 ifTrue: [
            block2812dd20Stack3 := 25.
            block2812dd20PC := 25.
        ].
        block2812dd20Step = 25 ifTrue: [
            (block2812dd20Stack2) height: (block2812dd20Stack3).
            block2812dd20Stack2 := block2812dd20Stack1.
            block2812dd20PC := 28.
        ].
        block2812dd20Step = 28 ifTrue: [
            block2812dd20Stack3 := CfsDirectoryDescriptor.
            block2812dd20PC := 32.
        ].
        block2812dd20Step = 32 ifTrue: [
            block2812dd20Stack3 := (block2812dd20Stack3) rootDirectories.
            block2812dd20PC := 37.
        ].
        block2812dd20Step = 37 ifTrue: [
            block2812dd20Stack4 := [:block2812dd44Arg1 | 
    | block2812dd44Stack0 block2812dd44Stack1 block2812dd44Stack2 block2812dd44PC block2812dd44Step block2812dd44Done block2812dd44Result |
    block2812dd44Stack0 := self.
    block2812dd44PC := 4.
    block2812dd44Done := false.
    [block2812dd44Done not] whileTrue: [
        block2812dd44Step := block2812dd44PC.
        block2812dd44Step = 4 ifTrue: [
            block2812dd44Stack1 := block2812dd44Arg1.
            block2812dd44PC := 5.
        ].
        block2812dd44Step = 5 ifTrue: [
            block2812dd44Stack1 := (block2812dd44Stack1) isString.
            block2812dd44PC := 9.
        ].
        block2812dd44Step = 9 ifTrue: [
            (block2812dd44Stack1) ifTrue: [block2812dd44PC := 12] ifFalse: [block2812dd44PC := 16].
        ].
        block2812dd44Step = 12 ifTrue: [
            block2812dd44Stack1 := block2812dd44Arg1.
            block2812dd44PC := 13.
        ].
        block2812dd44Step = 13 ifTrue: [
            block2812dd44PC := 21.
        ].
        block2812dd44Step = 16 ifTrue: [
            block2812dd44Stack1 := block2812dd44Arg1.
            block2812dd44PC := 17.
        ].
        block2812dd44Step = 17 ifTrue: [
            block2812dd44Stack1 := (block2812dd44Stack1) printString.
            block2812dd44PC := 21.
        ].
        block2812dd44Step = 21 ifTrue: [
            block2812dd44Result := block2812dd44Stack1.
            block2812dd44Done := true.
        ].
    ].
    block2812dd44Result
].
            block2812dd20PC := 40.
        ].
        block2812dd20Step = 40 ifTrue: [
            block2812dd20PC := 62.
        ].
        block2812dd20Step = 62 ifTrue: [
            block2812dd20Stack3 := (block2812dd20Stack3) collect: (block2812dd20Stack4).
            block2812dd20PC := 67.
        ].
        block2812dd20Step = 67 ifTrue: [
            (block2812dd20Stack2) items: (block2812dd20Stack3).
            block2812dd20PC := 71.
        ].
        block2812dd20Step = 71 ifTrue: [
            block2812dd20Stack2 := 100.
            block2812dd20PC := 74.
        ].
        block2812dd20Step = 74 ifTrue: [
            block2812dd20Stack1 := (block2812dd20Stack1) width: (block2812dd20Stack2).
            block2812dd20PC := 76.
        ].
        block2812dd20Step = 76 ifTrue: [
            block2812dd20Result := block2812dd20Stack1.
            block2812dd20Done := true.
        ].
    ].
    block2812dd20Result
].
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 661.
        ].
        recoveredStep = 661 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack2 := 'volumeComboBox'.
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack2 := 'fileTypeComboBox'.
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack3 := [:recoveredBlock682Arg1 | 
    | recoveredBlock682Value0 recoveredBlock682Value1 recoveredBlock682Value2 recoveredBlock682Value3 recoveredBlock682Value4 recoveredBlock682Value5 recoveredBlock682Value6 recoveredBlock682Value7 recoveredBlock682Value8 recoveredBlock682Value9 recoveredBlock682Value10 |
    recoveredBlock682Value0 := recoveredBlock682Arg1.
    recoveredBlock682Value1 := recoveredBlock682Value0.
    (recoveredBlock682Value1) x: (120).
    recoveredBlock682Value2 := recoveredBlock682Value0.
    (recoveredBlock682Value2) borderWidth: (1).
    recoveredBlock682Value3 := recoveredBlock682Value0.
    (recoveredBlock682Value3) y: (229).
    recoveredBlock682Value4 := recoveredBlock682Value0.
    (recoveredBlock682Value4) height: (25).
    recoveredBlock682Value5 := recoveredBlock682Value0.
    recoveredBlock682Value6 := formatDictionary.
    recoveredBlock682Value7 := (recoveredBlock682Value6) keys.
    recoveredBlock682Value8 := [:recoveredBlock682Block721Arg1 | 
    | recoveredBlock682Block721Value0 recoveredBlock682Block721Value1 recoveredBlock682Block721Value2 recoveredBlock682Block721Value3 recoveredBlock682Block721Value4 recoveredBlock682Block721Value5 recoveredBlock682Block721Value6 |
    recoveredBlock682Block721Value0 := formatDictionary.
    recoveredBlock682Block721Value1 := recoveredBlock682Block721Arg1.
    recoveredBlock682Block721Value2 := (recoveredBlock682Block721Value0) at: (recoveredBlock682Block721Value1).
    recoveredBlock682Block721Value3 := (recoveredBlock682Block721Value2) , (' (').
    recoveredBlock682Block721Value4 := recoveredBlock682Block721Arg1.
    recoveredBlock682Block721Value5 := (recoveredBlock682Block721Value3) , (recoveredBlock682Block721Value4).
    recoveredBlock682Block721Value6 := (recoveredBlock682Block721Value5) , (')').
    recoveredBlock682Block721Value6
].
    recoveredBlock682Value9 := (recoveredBlock682Value7) collect: (recoveredBlock682Value8).
    (recoveredBlock682Value5) items: (recoveredBlock682Value9).
    recoveredBlock682Value10 := (recoveredBlock682Value0) width: (150).
    recoveredBlock682Value10
].
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 777.
        ].
        recoveredStep = 777 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 779.
        ].
        recoveredStep = 779 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 785.
        ].
        recoveredStep = 785 ifTrue: [
            recoveredStack2 := 'fileTypeComboBox'.
            recoveredPC := 788.
        ].
        recoveredStep = 788 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 791.
        ].
        recoveredStep = 791 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            recoveredStack2 := 'directoryLabel'.
            recoveredPC := 800.
        ].
        recoveredStep = 800 ifTrue: [
            recoveredStack3 := [:recoveredBlock800Arg1 | 
    | recoveredBlock800Value0 recoveredBlock800Value1 recoveredBlock800Value2 recoveredBlock800Value3 recoveredBlock800Value4 recoveredBlock800Value5 recoveredBlock800Value6 recoveredBlock800Value7 recoveredBlock800Value8 |
    recoveredBlock800Value0 := recoveredBlock800Arg1.
    recoveredBlock800Value1 := recoveredBlock800Value0.
    (recoveredBlock800Value1) x: (10).
    recoveredBlock800Value2 := recoveredBlock800Value0.
    (recoveredBlock800Value2) labelString: ('&Directories').
    recoveredBlock800Value3 := recoveredBlock800Value0.
    (recoveredBlock800Value3) marginWidth: (0).
    recoveredBlock800Value4 := recoveredBlock800Value0.
    (recoveredBlock800Value4) marginHeight: (0).
    recoveredBlock800Value5 := recoveredBlock800Value0.
    (recoveredBlock800Value5) y: (10).
    recoveredBlock800Value6 := recoveredBlock800Value0.
    (recoveredBlock800Value6) height: (20).
    recoveredBlock800Value7 := (self) defaultLabelBlue.
    recoveredBlock800Value8 := (recoveredBlock800Value0) foregroundColor: (recoveredBlock800Value7).
    recoveredBlock800Value8
].
            recoveredPC := 844.
        ].
        recoveredStep = 844 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 846.
        ].
        recoveredStep = 846 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 848.
        ].
        recoveredStep = 848 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 851.
        ].
        recoveredStep = 851 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 854.
        ].
        recoveredStep = 854 ifTrue: [
            recoveredStack2 := 'directoryLabel'.
            recoveredPC := 858.
        ].
        recoveredStep = 858 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 861.
        ].
        recoveredStep = 861 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 863.
        ].
        recoveredStep = 863 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 866.
        ].
        recoveredStep = 866 ifTrue: [
            recoveredStack2 := 'currentDirectoryLabel'.
            recoveredPC := 870.
        ].
        recoveredStep = 870 ifTrue: [
            recoveredStack3 := [:block2812dd68Arg1 | 
    | block2812dd68Value0 block2812dd68Value1 block2812dd68Value2 block2812dd68Value3 block2812dd68Value4 block2812dd68Value5 block2812dd68Value6 block2812dd68Value7 block2812dd68Value8 |
    block2812dd68Value0 := block2812dd68Arg1.
    block2812dd68Value1 := block2812dd68Value0.
    (block2812dd68Value1) x: (10).
    block2812dd68Value2 := block2812dd68Value0.
    block2812dd68Value3 := XmALIGNMENTBEGINNING.
    (block2812dd68Value2) alignment: (block2812dd68Value3).
    block2812dd68Value4 := block2812dd68Value0.
    (block2812dd68Value4) labelString: (' ').
    block2812dd68Value5 := block2812dd68Value0.
    (block2812dd68Value5) marginHeight: (0).
    block2812dd68Value6 := block2812dd68Value0.
    (block2812dd68Value6) y: (40).
    block2812dd68Value7 := block2812dd68Value0.
    (block2812dd68Value7) height: (20).
    block2812dd68Value8 := (block2812dd68Value0) width: (100).
    block2812dd68Value8
].
            recoveredPC := 874.
        ].
        recoveredStep = 874 ifTrue: [
            recoveredPC := 917.
        ].
        recoveredStep = 917 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 919.
        ].
        recoveredStep = 919 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 921.
        ].
        recoveredStep = 921 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 924.
        ].
        recoveredStep = 924 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 927.
        ].
        recoveredStep = 927 ifTrue: [
            recoveredStack2 := 'currentDirectoryLabel'.
            recoveredPC := 930.
        ].
        recoveredStep = 930 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 933.
        ].
        recoveredStep = 933 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 935.
        ].
        recoveredStep = 935 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 938.
        ].
        recoveredStep = 938 ifTrue: [
            recoveredStack2 := [:recoveredBlock938Arg1 | 
    | recoveredBlock938Value0 recoveredBlock938Value1 recoveredBlock938Value2 |
    recoveredBlock938Value0 := recoveredBlock938Arg1.
    recoveredBlock938Value1 := recoveredLocal13.
    recoveredBlock938Value2 := (recoveredBlock938Value0) workWindow: (recoveredBlock938Value1).
    recoveredBlock938Value2
].
            recoveredPC := 954.
        ].
        recoveredStep = 954 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 959.
        ].
        recoveredStep = 959 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 962.
        ].
        recoveredStep = 962 ifTrue: [
            recoveredStack2 := [:block2812dd8cArg1 | 
    | block2812dd8cValue0 block2812dd8cValue1 block2812dd8cValue2 block2812dd8cValue3 block2812dd8cValue4 block2812dd8cValue5 block2812dd8cValue6 block2812dd8cValue7 |
    block2812dd8cValue0 := block2812dd8cArg1.
    block2812dd8cValue1 := block2812dd8cValue0.
    block2812dd8cValue2 := XmATTACHFORM.
    (block2812dd8cValue1) bottomAttachment: (block2812dd8cValue2).
    block2812dd8cValue3 := block2812dd8cValue0.
    block2812dd8cValue4 := XmATTACHFORM.
    (block2812dd8cValue3) topAttachment: (block2812dd8cValue4).
    block2812dd8cValue5 := block2812dd8cValue0.
    block2812dd8cValue6 := XmATTACHFORM.
    (block2812dd8cValue5) rightAttachment: (block2812dd8cValue6).
    block2812dd8cValue7 := (block2812dd8cValue0) rightOffset: (120).
    block2812dd8cValue7
].
            recoveredPC := 966.
        ].
        recoveredStep = 966 ifTrue: [
            recoveredPC := 1006.
        ].
        recoveredStep = 1006 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1011.
        ].
        recoveredStep = 1011 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1014.
        ].
        recoveredStep = 1014 ifTrue: [
            recoveredStack2 := [:block2812ddb0Arg1 | 
    | block2812ddb0Value0 block2812ddb0Value1 block2812ddb0Value2 block2812ddb0Value3 block2812ddb0Value4 block2812ddb0Value5 block2812ddb0Value6 |
    block2812ddb0Value0 := block2812ddb0Arg1.
    block2812ddb0Value1 := block2812ddb0Value0.
    block2812ddb0Value2 := XmATTACHOPPOSITEFORM.
    (block2812ddb0Value1) leftAttachment: (block2812ddb0Value2).
    block2812ddb0Value3 := block2812ddb0Value0.
    (block2812ddb0Value3) leftOffset: (-120).
    block2812ddb0Value4 := block2812ddb0Value0.
    block2812ddb0Value5 := XmATTACHFORM.
    (block2812ddb0Value4) rightAttachment: (block2812ddb0Value5).
    block2812ddb0Value6 := (block2812ddb0Value0) rightOffset: (10).
    block2812ddb0Value6
].
            recoveredPC := 1018.
        ].
        recoveredStep = 1018 ifTrue: [
            recoveredPC := 1056.
        ].
        recoveredStep = 1056 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1061.
        ].
        recoveredStep = 1061 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1064.
        ].
        recoveredStep = 1064 ifTrue: [
            recoveredStack2 := [:recoveredBlock1064Arg1 | 
    | recoveredBlock1064Value0 recoveredBlock1064Value1 recoveredBlock1064Value2 recoveredBlock1064Value3 recoveredBlock1064Value4 recoveredBlock1064Value5 recoveredBlock1064Value6 recoveredBlock1064Value7 recoveredBlock1064Value8 |
    recoveredBlock1064Value0 := recoveredBlock1064Arg1.
    recoveredBlock1064Value1 := recoveredBlock1064Value0.
    recoveredBlock1064Value2 := XmATTACHWIDGET.
    (recoveredBlock1064Value1) topAttachment: (recoveredBlock1064Value2).
    recoveredBlock1064Value3 := recoveredBlock1064Value0.
    recoveredBlock1064Value4 := recoveredLocal11.
    (recoveredBlock1064Value3) topWidget: (recoveredBlock1064Value4).
    recoveredBlock1064Value5 := recoveredBlock1064Value0.
    (recoveredBlock1064Value5) topOffset: (10).
    recoveredBlock1064Value6 := recoveredBlock1064Value0.
    recoveredBlock1064Value7 := XmATTACHFORM.
    (recoveredBlock1064Value6) rightAttachment: (recoveredBlock1064Value7).
    recoveredBlock1064Value8 := (recoveredBlock1064Value0) rightOffset: (10).
    recoveredBlock1064Value8
].
            recoveredPC := 1110.
        ].
        recoveredStep = 1110 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1115.
        ].
        recoveredStep = 1115 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1118.
        ].
        recoveredStep = 1118 ifTrue: [
            recoveredStack2 := [:block2812ddd4Arg1 | 
    | block2812ddd4Value0 block2812ddd4Value1 block2812ddd4Value2 block2812ddd4Value3 block2812ddd4Value4 block2812ddd4Value5 block2812ddd4Value6 block2812ddd4Value7 block2812ddd4Value8 block2812ddd4Value9 |
    block2812ddd4Value0 := block2812ddd4Arg1.
    block2812ddd4Value1 := block2812ddd4Value0.
    block2812ddd4Value2 := XmATTACHFORM.
    (block2812ddd4Value1) bottomAttachment: (block2812ddd4Value2).
    block2812ddd4Value3 := block2812ddd4Value0.
    (block2812ddd4Value3) bottomOffset: (10).
    block2812ddd4Value4 := block2812ddd4Value0.
    block2812ddd4Value5 := XmATTACHOPPOSITEFORM.
    (block2812ddd4Value4) leftAttachment: (block2812ddd4Value5).
    block2812ddd4Value6 := block2812ddd4Value0.
    (block2812ddd4Value6) leftOffset: (-120).
    block2812ddd4Value7 := block2812ddd4Value0.
    block2812ddd4Value8 := XmATTACHFORM.
    (block2812ddd4Value7) rightAttachment: (block2812ddd4Value8).
    block2812ddd4Value9 := (block2812ddd4Value0) rightOffset: (10).
    block2812ddd4Value9
].
            recoveredPC := 1122.
        ].
        recoveredStep = 1122 ifTrue: [
            recoveredPC := 1174.
        ].
        recoveredStep = 1174 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1179.
        ].
        recoveredStep = 1179 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1182.
        ].
        recoveredStep = 1182 ifTrue: [
            recoveredStack2 := [:recoveredBlock1182Arg1 | 
    | recoveredBlock1182Value0 recoveredBlock1182Value1 recoveredBlock1182Value2 recoveredBlock1182Value3 recoveredBlock1182Value4 recoveredBlock1182Value5 recoveredBlock1182Value6 recoveredBlock1182Value7 recoveredBlock1182Value8 |
    recoveredBlock1182Value0 := recoveredBlock1182Arg1.
    recoveredBlock1182Value1 := recoveredBlock1182Value0.
    recoveredBlock1182Value2 := XmATTACHWIDGET.
    (recoveredBlock1182Value1) bottomAttachment: (recoveredBlock1182Value2).
    recoveredBlock1182Value3 := recoveredBlock1182Value0.
    recoveredBlock1182Value4 := recoveredLocal4.
    (recoveredBlock1182Value3) bottomWidget: (recoveredBlock1182Value4).
    recoveredBlock1182Value5 := recoveredBlock1182Value0.
    (recoveredBlock1182Value5) bottomOffset: (5).
    recoveredBlock1182Value6 := recoveredBlock1182Value0.
    recoveredBlock1182Value7 := XmATTACHFORM.
    (recoveredBlock1182Value6) leftAttachment: (recoveredBlock1182Value7).
    recoveredBlock1182Value8 := (recoveredBlock1182Value0) leftOffset: (10).
    recoveredBlock1182Value8
].
            recoveredPC := 1228.
        ].
        recoveredStep = 1228 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1233.
        ].
        recoveredStep = 1233 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1236.
        ].
        recoveredStep = 1236 ifTrue: [
            recoveredStack2 := [:recoveredBlock1236Arg1 | 
    | recoveredBlock1236Value0 recoveredBlock1236Value1 recoveredBlock1236Value2 recoveredBlock1236Value3 recoveredBlock1236Value4 recoveredBlock1236Value5 recoveredBlock1236Value6 recoveredBlock1236Value7 recoveredBlock1236Value8 |
    recoveredBlock1236Value0 := recoveredBlock1236Arg1.
    recoveredBlock1236Value1 := recoveredBlock1236Value0.
    recoveredBlock1236Value2 := XmATTACHWIDGET.
    (recoveredBlock1236Value1) bottomAttachment: (recoveredBlock1236Value2).
    recoveredBlock1236Value3 := recoveredBlock1236Value0.
    recoveredBlock1236Value4 := recoveredLocal3.
    (recoveredBlock1236Value3) bottomWidget: (recoveredBlock1236Value4).
    recoveredBlock1236Value5 := recoveredBlock1236Value0.
    (recoveredBlock1236Value5) bottomOffset: (5).
    recoveredBlock1236Value6 := recoveredBlock1236Value0.
    recoveredBlock1236Value7 := XmATTACHFORM.
    (recoveredBlock1236Value6) leftAttachment: (recoveredBlock1236Value7).
    recoveredBlock1236Value8 := (recoveredBlock1236Value0) leftOffset: (120).
    recoveredBlock1236Value8
].
            recoveredPC := 1284.
        ].
        recoveredStep = 1284 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1289.
        ].
        recoveredStep = 1289 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1292.
        ].
        recoveredStep = 1292 ifTrue: [
            recoveredStack2 := [:recoveredBlock1292Arg1 | 
    | recoveredBlock1292Value0 recoveredBlock1292Value1 recoveredBlock1292Value2 recoveredBlock1292Value3 recoveredBlock1292Value4 recoveredBlock1292Value5 recoveredBlock1292Value6 recoveredBlock1292Value7 recoveredBlock1292Value8 recoveredBlock1292Value9 recoveredBlock1292Value10 recoveredBlock1292Value11 recoveredBlock1292Value12 recoveredBlock1292Value13 recoveredBlock1292Value14 recoveredBlock1292Value15 recoveredBlock1292Value16 recoveredBlock1292Value17 recoveredBlock1292Value18 recoveredBlock1292Value19 recoveredBlock1292Value20 recoveredBlock1292Value21 recoveredBlock1292Value22 |
    recoveredBlock1292Value0 := recoveredBlock1292Arg1.
    recoveredBlock1292Value1 := recoveredBlock1292Value0.
    recoveredBlock1292Value2 := XmATTACHWIDGET.
    (recoveredBlock1292Value1) bottomAttachment: (recoveredBlock1292Value2).
    recoveredBlock1292Value3 := recoveredBlock1292Value0.
    recoveredBlock1292Value4 := recoveredLocal8.
    (recoveredBlock1292Value3) bottomWidget: (recoveredBlock1292Value4).
    recoveredBlock1292Value5 := recoveredBlock1292Value0.
    (recoveredBlock1292Value5) bottomOffset: (10).
    recoveredBlock1292Value6 := recoveredBlock1292Value0.
    recoveredBlock1292Value7 := XmATTACHFORM.
    (recoveredBlock1292Value6) topAttachment: (recoveredBlock1292Value7).
    recoveredBlock1292Value8 := recoveredBlock1292Value0.
    (recoveredBlock1292Value8) topOffset: (65).
    recoveredBlock1292Value9 := recoveredBlock1292Value0.
    recoveredBlock1292Value10 := XmATTACHFORM.
    (recoveredBlock1292Value9) leftAttachment: (recoveredBlock1292Value10).
    recoveredBlock1292Value11 := recoveredBlock1292Value0.
    (recoveredBlock1292Value11) leftOffset: (10).
    recoveredBlock1292Value12 := recoveredBlock1292Value0.
    recoveredBlock1292Value13 := XmATTACHWIDGET.
    (recoveredBlock1292Value12) rightAttachment: (recoveredBlock1292Value13).
    recoveredBlock1292Value14 := recoveredBlock1292Value0.
    recoveredBlock1292Value15 := recoveredLocal12.
    (recoveredBlock1292Value14) rightWidget: (recoveredBlock1292Value15).
    recoveredBlock1292Value16 := recoveredBlock1292Value0.
    (recoveredBlock1292Value16) rightOffset: (5).
    recoveredBlock1292Value17 := recoveredBlock1292Value0.
    (recoveredBlock1292Value17) x: (10).
    recoveredBlock1292Value18 := recoveredBlock1292Value0.
    (recoveredBlock1292Value18) y: (35).
    recoveredBlock1292Value19 := recoveredBlock1292Value0.
    recoveredBlock1292Value20 := XmASNEEDED.
    (recoveredBlock1292Value19) scrollBarDisplayPolicy: (recoveredBlock1292Value20).
    recoveredBlock1292Value21 := recoveredBlock1292Value0.
    (recoveredBlock1292Value21) height: (250).
    recoveredBlock1292Value22 := (recoveredBlock1292Value0) width: (270).
    recoveredBlock1292Value22
].
            recoveredPC := 1405.
        ].
        recoveredStep = 1405 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1409.
        ].
        recoveredStep = 1409 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1412.
        ].
        recoveredStep = 1412 ifTrue: [
            recoveredStack2 := [:block2812ddf8Arg1 | 
    | block2812ddf8Value0 block2812ddf8Value1 block2812ddf8Value2 block2812ddf8Value3 block2812ddf8Value4 block2812ddf8Value5 block2812ddf8Value6 |
    block2812ddf8Value0 := block2812ddf8Arg1.
    block2812ddf8Value1 := block2812ddf8Value0.
    block2812ddf8Value2 := XmATTACHFORM.
    (block2812ddf8Value1) bottomAttachment: (block2812ddf8Value2).
    block2812ddf8Value3 := block2812ddf8Value0.
    (block2812ddf8Value3) bottomOffset: (10).
    block2812ddf8Value4 := block2812ddf8Value0.
    block2812ddf8Value5 := XmATTACHFORM.
    (block2812ddf8Value4) leftAttachment: (block2812ddf8Value5).
    block2812ddf8Value6 := (block2812ddf8Value0) leftOffset: (10).
    block2812ddf8Value6
].
            recoveredPC := 1416.
        ].
        recoveredStep = 1416 ifTrue: [
            recoveredPC := 1452.
        ].
        recoveredStep = 1452 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1457.
        ].
        recoveredStep = 1457 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1460.
        ].
        recoveredStep = 1460 ifTrue: [
            recoveredStack2 := [:recoveredBlock1460Arg1 | 
    | recoveredBlock1460Value0 recoveredBlock1460Value1 recoveredBlock1460Value2 recoveredBlock1460Value3 recoveredBlock1460Value4 recoveredBlock1460Value5 recoveredBlock1460Value6 recoveredBlock1460Value7 recoveredBlock1460Value8 recoveredBlock1460Value9 recoveredBlock1460Value10 recoveredBlock1460Value11 |
    recoveredBlock1460Value0 := recoveredBlock1460Arg1.
    recoveredBlock1460Value1 := recoveredBlock1460Value0.
    recoveredBlock1460Value2 := XmATTACHFORM.
    (recoveredBlock1460Value1) bottomAttachment: (recoveredBlock1460Value2).
    recoveredBlock1460Value3 := recoveredBlock1460Value0.
    (recoveredBlock1460Value3) bottomOffset: (10).
    recoveredBlock1460Value4 := recoveredBlock1460Value0.
    recoveredBlock1460Value5 := XmATTACHFORM.
    (recoveredBlock1460Value4) leftAttachment: (recoveredBlock1460Value5).
    recoveredBlock1460Value6 := recoveredBlock1460Value0.
    (recoveredBlock1460Value6) leftOffset: (120).
    recoveredBlock1460Value7 := recoveredBlock1460Value0.
    recoveredBlock1460Value8 := XmATTACHWIDGET.
    (recoveredBlock1460Value7) rightAttachment: (recoveredBlock1460Value8).
    recoveredBlock1460Value9 := recoveredBlock1460Value0.
    recoveredBlock1460Value10 := recoveredLocal12.
    (recoveredBlock1460Value9) rightWidget: (recoveredBlock1460Value10).
    recoveredBlock1460Value11 := (recoveredBlock1460Value0) rightOffset: (5).
    recoveredBlock1460Value11
].
            recoveredPC := 1522.
        ].
        recoveredStep = 1522 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1527.
        ].
        recoveredStep = 1527 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1530.
        ].
        recoveredStep = 1530 ifTrue: [
            recoveredStack2 := [:block2812de1cArg1 | 
    | block2812de1cValue0 block2812de1cValue1 block2812de1cValue2 block2812de1cValue3 block2812de1cValue4 block2812de1cValue5 block2812de1cValue6 |
    block2812de1cValue0 := block2812de1cArg1.
    block2812de1cValue1 := block2812de1cValue0.
    block2812de1cValue2 := XmATTACHFORM.
    (block2812de1cValue1) topAttachment: (block2812de1cValue2).
    block2812de1cValue3 := block2812de1cValue0.
    (block2812de1cValue3) topOffset: (10).
    block2812de1cValue4 := block2812de1cValue0.
    block2812de1cValue5 := XmATTACHFORM.
    (block2812de1cValue4) leftAttachment: (block2812de1cValue5).
    block2812de1cValue6 := (block2812de1cValue0) leftOffset: (10).
    block2812de1cValue6
].
            recoveredPC := 1534.
        ].
        recoveredStep = 1534 ifTrue: [
            recoveredPC := 1570.
        ].
        recoveredStep = 1570 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1575.
        ].
        recoveredStep = 1575 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1578.
        ].
        recoveredStep = 1578 ifTrue: [
            recoveredStack2 := [:recoveredBlock1578Arg1 | 
    | recoveredBlock1578Value0 recoveredBlock1578Value1 recoveredBlock1578Value2 recoveredBlock1578Value3 recoveredBlock1578Value4 recoveredBlock1578Value5 recoveredBlock1578Value6 recoveredBlock1578Value7 recoveredBlock1578Value8 recoveredBlock1578Value9 recoveredBlock1578Value10 recoveredBlock1578Value11 recoveredBlock1578Value12 |
    recoveredBlock1578Value0 := recoveredBlock1578Arg1.
    recoveredBlock1578Value1 := recoveredBlock1578Value0.
    recoveredBlock1578Value2 := XmATTACHWIDGET.
    (recoveredBlock1578Value1) topAttachment: (recoveredBlock1578Value2).
    recoveredBlock1578Value3 := recoveredBlock1578Value0.
    recoveredBlock1578Value4 := recoveredLocal2.
    (recoveredBlock1578Value3) topWidget: (recoveredBlock1578Value4).
    recoveredBlock1578Value5 := recoveredBlock1578Value0.
    (recoveredBlock1578Value5) topOffset: (5).
    recoveredBlock1578Value6 := recoveredBlock1578Value0.
    recoveredBlock1578Value7 := XmATTACHFORM.
    (recoveredBlock1578Value6) leftAttachment: (recoveredBlock1578Value7).
    recoveredBlock1578Value8 := recoveredBlock1578Value0.
    (recoveredBlock1578Value8) leftOffset: (10).
    recoveredBlock1578Value9 := recoveredBlock1578Value0.
    recoveredBlock1578Value10 := XmATTACHWIDGET.
    (recoveredBlock1578Value9) rightAttachment: (recoveredBlock1578Value10).
    recoveredBlock1578Value11 := recoveredLocal12.
    recoveredBlock1578Value12 := (recoveredBlock1578Value0) rightWidget: (recoveredBlock1578Value11).
    recoveredBlock1578Value12
].
            recoveredPC := 1640.
        ].
        recoveredStep = 1640 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1645.
        ].
        recoveredStep = 1645 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1648.
        ].
        recoveredStep = 1648 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1652.
        ].
        recoveredStep = 1652 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1653.
        ].
        recoveredStep = 1653 ifTrue: [
            recoveredStack4 := 'aOkPushButtonActivate:clientData:callData:'.
            recoveredPC := 1656.
        ].
        recoveredStep = 1656 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1657.
        ].
        recoveredStep = 1657 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1661.
        ].
        recoveredStep = 1661 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1664.
        ].
        recoveredStep = 1664 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1668.
        ].
        recoveredStep = 1668 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1669.
        ].
        recoveredStep = 1669 ifTrue: [
            recoveredStack4 := 'aCancelPushButtonActivate:clientData:callData:'.
            recoveredPC := 1672.
        ].
        recoveredStep = 1672 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1673.
        ].
        recoveredStep = 1673 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1677.
        ].
        recoveredStep = 1677 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1680.
        ].
        recoveredStep = 1680 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1684.
        ].
        recoveredStep = 1684 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1685.
        ].
        recoveredStep = 1685 ifTrue: [
            recoveredStack4 := 'aNewDirPushButtonActivate:clientData:callData:'.
            recoveredPC := 1688.
        ].
        recoveredStep = 1688 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1689.
        ].
        recoveredStep = 1689 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1693.
        ].
        recoveredStep = 1693 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1696.
        ].
        recoveredStep = 1696 ifTrue: [
            recoveredStack2 := XmNdefaultActionCallback.
            recoveredPC := 1700.
        ].
        recoveredStep = 1700 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1701.
        ].
        recoveredStep = 1701 ifTrue: [
            recoveredStack4 := 'anDirectoryIconTreeDefault:clientData:callData:'.
            recoveredPC := 1704.
        ].
        recoveredStep = 1704 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1705.
        ].
        recoveredStep = 1705 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1709.
        ].
        recoveredStep = 1709 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1712.
        ].
        recoveredStep = 1712 ifTrue: [
            recoveredStack2 := XmNvisualInfoCallback.
            recoveredPC := 1716.
        ].
        recoveredStep = 1716 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1717.
        ].
        recoveredStep = 1717 ifTrue: [
            recoveredStack4 := 'anDirectoryIconTreeVisual:clientData:callData:'.
            recoveredPC := 1720.
        ].
        recoveredStep = 1720 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1721.
        ].
        recoveredStep = 1721 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1725.
        ].
        recoveredStep = 1725 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1728.
        ].
        recoveredStep = 1728 ifTrue: [
            recoveredStack2 := XmNexpandCollapseCallback.
            recoveredPC := 1732.
        ].
        recoveredStep = 1732 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1733.
        ].
        recoveredStep = 1733 ifTrue: [
            recoveredStack4 := 'anDirectoryIconTreeExpand:clientData:callData:'.
            recoveredPC := 1736.
        ].
        recoveredStep = 1736 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1737.
        ].
        recoveredStep = 1737 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1741.
        ].
        recoveredStep = 1741 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1744.
        ].
        recoveredStep = 1744 ifTrue: [
            recoveredStack2 := XmNchildrenCallback.
            recoveredPC := 1748.
        ].
        recoveredStep = 1748 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1749.
        ].
        recoveredStep = 1749 ifTrue: [
            recoveredStack4 := 'anDirectoryIconTreeChildren:clientData:callData:'.
            recoveredPC := 1752.
        ].
        recoveredStep = 1752 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1753.
        ].
        recoveredStep = 1753 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1757.
        ].
        recoveredStep = 1757 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1760.
        ].
        recoveredStep = 1760 ifTrue: [
            recoveredStack2 := XmNbrowseSelectionCallback.
            recoveredPC := 1764.
        ].
        recoveredStep = 1764 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1765.
        ].
        recoveredStep = 1765 ifTrue: [
            recoveredStack4 := 'anDirectoryIconTreebrowseSelectionCallback:clientData:callData:'.
            recoveredPC := 1768.
        ].
        recoveredStep = 1768 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1769.
        ].
        recoveredStep = 1769 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1773.
        ].
        recoveredStep = 1773 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1776.
        ].
        recoveredStep = 1776 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 1780.
        ].
        recoveredStep = 1780 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1781.
        ].
        recoveredStep = 1781 ifTrue: [
            recoveredStack4 := 'aVolumeComboBoxSingle:clientData:callData:'.
            recoveredPC := 1784.
        ].
        recoveredStep = 1784 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1785.
        ].
        recoveredStep = 1785 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1789.
        ].
        recoveredStep = 1789 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1792.
        ].
        recoveredStep = 1792 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 1796.
        ].
        recoveredStep = 1796 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1797.
        ].
        recoveredStep = 1797 ifTrue: [
            recoveredStack4 := 'aFileTypeComboBoxSingle:clientData:callData:'.
            recoveredPC := 1800.
        ].
        recoveredStep = 1800 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1801.
        ].
        recoveredStep = 1801 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1805.
        ].
        recoveredStep = 1805 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1808.
        ].
        recoveredStep = 1808 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1813.
        ].
        recoveredStep = 1813 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1816.
        ].
        recoveredStep = 1816 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1821.
        ].
        recoveredStep = 1821 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1824.
        ].
        recoveredStep = 1824 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1829.
        ].
        recoveredStep = 1829 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1832.
        ].
        recoveredStep = 1832 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1837.
        ].
        recoveredStep = 1837 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1840.
        ].
        recoveredStep = 1840 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1845.
        ].
        recoveredStep = 1845 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1848.
        ].
        recoveredStep = 1848 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 1851.
        ].
        recoveredStep = 1851 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 1854.
        ].
        recoveredStep = 1854 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1859.
        ].
        recoveredStep = 1859 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

