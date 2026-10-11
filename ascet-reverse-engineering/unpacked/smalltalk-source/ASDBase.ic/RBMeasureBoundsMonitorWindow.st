"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20018e60; bytecode file offset 0x92209c"
!RBMeasureBoundsMonitorWindow methodsFor: 'recovered'!
defaultIcon
    ^'EditorEEMeasurementWatch32'
! !

"ASDBase.ic method 0x20090ce0; bytecode file offset 0x98d690"
!RBMeasureBoundsMonitorWindow methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := (recoveredValue0) osWidget.
    (recoveredValue1) enable.
    ^self
! !

"ASDBase.ic method 0x200b9624; bytecode file offset 0x9b5ee4"
!RBMeasureBoundsMonitorWindow methodsFor: 'recovered'!
contents: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetAt: ('textWindow').
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) setString: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2029dc9c; bytecode file offset 0xb9a574"
!RBMeasureBoundsMonitorWindow methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) globalActionKeys.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := XKF5.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'bringToFrontMain'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) widgetKeyActions: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a1344; bytecode file offset 0xc9dc58"
!RBMeasureBoundsMonitorWindow methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := SCMonitorBoundsExceeded.
    (recoveredValue0) title: (recoveredValue1).
    recoveredValue2 := (self) widgetAt: ('aForm1').
    recoveredValue3 := CgScreen.
    recoveredValue4 := (recoveredValue3) default.
    recoveredValue5 := (recoveredValue4) lookupColor: ('red').
    (recoveredValue2) backgroundColor: (recoveredValue5).
    recoveredValue6 := (self) widgetAt: ('textWindow').
    recoveredValue7 := (self) defaultBackgroundGray.
    (recoveredValue6) backgroundColor: (recoveredValue7).
    (self) installActionKeys.
    recoveredValue8 := (self) class.
    recoveredValue9 := (100) @ (50).
    (recoveredValue8) minSize: (recoveredValue9).
    (self) iconSmall: ('EditorEEMeasurementWatch') large: ('EditorEEMeasurementWatch32').
    (self) displayInCenter.
    recoveredValue10 := SGUserInterfaceSettings.
    recoveredValue11 := (self) widgetAt: ('textWindow').
    (recoveredValue10) updateFont: (recoveredValue11).
    recoveredValue12 := (self) shell.
    recoveredValue13 := (recoveredValue12) osWidget.
    (recoveredValue13) disable.
    ^self
! !

"ASDBase.ic method 0x205b0cf4; bytecode file offset 0xead688"
!RBMeasureBoundsMonitorWindow methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CwTopLevelShell.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'aTopLevelShell1'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [:block28116b6cArg1 | 
    | block28116b6cValue0 block28116b6cValue1 block28116b6cValue2 block28116b6cValue3 block28116b6cValue4 block28116b6cValue5 block28116b6cValue6 block28116b6cValue7 block28116b6cValue8 block28116b6cValue9 |
    block28116b6cValue0 := block28116b6cArg1.
    block28116b6cValue1 := block28116b6cValue0.
    (block28116b6cValue1) title: ('Window').
    block28116b6cValue2 := block28116b6cValue0.
    block28116b6cValue3 := MWMDECORMENU.
    block28116b6cValue4 := MWMDECORTITLE.
    block28116b6cValue5 := (block28116b6cValue3) | (block28116b6cValue4).
    block28116b6cValue6 := MWMDECORMINIMIZE.
    block28116b6cValue7 := (block28116b6cValue5) | (block28116b6cValue6).
    (block28116b6cValue2) mwmDecorations: (block28116b6cValue7).
    block28116b6cValue8 := block28116b6cValue0.
    (block28116b6cValue8) height: (72).
    block28116b6cValue9 := (block28116b6cValue0) width: (343).
    block28116b6cValue9
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := 'aTopLevelShell1'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := [:block28116b90Arg1 | 
    | block28116b90Value0 block28116b90Value1 block28116b90Value2 block28116b90Value3 block28116b90Value4 block28116b90Value5 block28116b90Value6 |
    block28116b90Value0 := block28116b90Arg1.
    block28116b90Value1 := CgRGBColor.
    block28116b90Value2 := (block28116b90Value1) basicNew.
    block28116b90Value3 := block28116b90Value2.
    (block28116b90Value3) instVarAt: (1) put: (65535).
    block28116b90Value4 := block28116b90Value2.
    (block28116b90Value4) instVarAt: (2) put: (0).
    block28116b90Value5 := block28116b90Value2.
    (block28116b90Value5) instVarAt: (3) put: (0).
    block28116b90Value6 := (block28116b90Value0) backgroundColor: (block28116b90Value2).
    block28116b90Value6
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := 'textWindow'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := [:block28116bb4Arg1 | 
    | block28116bb4Value0 block28116bb4Value1 block28116bb4Value2 block28116bb4Value3 block28116bb4Value4 block28116bb4Value5 block28116bb4Value6 |
    block28116bb4Value0 := block28116bb4Arg1.
    block28116bb4Value1 := block28116bb4Value0.
    (block28116bb4Value1) editable: (false).
    block28116bb4Value2 := block28116bb4Value0.
    (block28116bb4Value2) verifyBell: (false).
    block28116bb4Value3 := block28116bb4Value0.
    (block28116bb4Value3) wordWrap: (true).
    block28116bb4Value4 := block28116bb4Value0.
    block28116bb4Value5 := XmMULTILINEEDIT.
    (block28116bb4Value4) editMode: (block28116bb4Value5).
    block28116bb4Value6 := (block28116bb4Value0) scrollHorizontal: (false).
    block28116bb4Value6
].
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := 'aScrolledText1'.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := 'textWindow'.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := [:recoveredBlock218Arg1 | 
    | recoveredBlock218Value0 recoveredBlock218Value1 recoveredBlock218Value2 |
    recoveredBlock218Value0 := recoveredBlock218Arg1.
    recoveredBlock218Value1 := recoveredLocal3.
    recoveredBlock218Value2 := (recoveredBlock218Value0) workWindow: (recoveredBlock218Value1).
    recoveredBlock218Value2
].
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := [:block28116bd8Arg1 | 
    | block28116bd8Value0 block28116bd8Value1 block28116bd8Value2 block28116bd8Value3 block28116bd8Value4 block28116bd8Value5 block28116bd8Value6 block28116bd8Value7 block28116bd8Value8 block28116bd8Value9 block28116bd8Value10 block28116bd8Value11 block28116bd8Value12 block28116bd8Value13 block28116bd8Value14 |
    block28116bd8Value0 := block28116bd8Arg1.
    block28116bd8Value1 := block28116bd8Value0.
    block28116bd8Value2 := XmATTACHFORM.
    (block28116bd8Value1) bottomAttachment: (block28116bd8Value2).
    block28116bd8Value3 := block28116bd8Value0.
    (block28116bd8Value3) bottomOffset: (3).
    block28116bd8Value4 := block28116bd8Value0.
    block28116bd8Value5 := XmATTACHFORM.
    (block28116bd8Value4) topAttachment: (block28116bd8Value5).
    block28116bd8Value6 := block28116bd8Value0.
    (block28116bd8Value6) topOffset: (3).
    block28116bd8Value7 := block28116bd8Value0.
    block28116bd8Value8 := XmATTACHFORM.
    (block28116bd8Value7) leftAttachment: (block28116bd8Value8).
    block28116bd8Value9 := block28116bd8Value0.
    (block28116bd8Value9) leftOffset: (3).
    block28116bd8Value10 := block28116bd8Value0.
    block28116bd8Value11 := XmATTACHFORM.
    (block28116bd8Value10) rightAttachment: (block28116bd8Value11).
    block28116bd8Value12 := block28116bd8Value0.
    (block28116bd8Value12) rightOffset: (3).
    block28116bd8Value13 := block28116bd8Value0.
    (block28116bd8Value13) height: (132).
    block28116bd8Value14 := (block28116bd8Value0) width: (401).
    block28116bd8Value14
].
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

