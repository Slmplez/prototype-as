"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20019a18; bytecode file offset 0x92209c"
!SGSimEventTracerWindow methodsFor: 'recovered'!
defaultIcon
    ^'EditorEventTracer32'
! !

"ASDBase.ic method 0x20044bdc; bytecode file offset 0x9451f8"
!SGSimEventTracerWindow methodsFor: 'recovered'!
widgetText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('text').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200471dc; bytecode file offset 0x9451f8"
!SGSimEventTracerWindow methodsFor: 'recovered'!
widgetToolBar
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('toolBar').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004f314; bytecode file offset 0x94d048"
!SGSimEventTracerWindow methodsFor: 'recovered'!
tracerReset
    (self) activateClearList.
    ^self
! !

"ASDBase.ic method 0x2006199c; bytecode file offset 0x95e838"
!SGSimEventTracerWindow methodsFor: 'recovered'!
widgetStopTracer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetToolBar.
    recoveredValue1 := (recoveredValue0) toolNamed: ('StopTracer').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061cbc; bytecode file offset 0x95e838"
!SGSimEventTracerWindow methodsFor: 'recovered'!
widgetStartTracer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetToolBar.
    recoveredValue1 := (recoveredValue0) toolNamed: ('StartTracer').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20063944; bytecode file offset 0x961970"
!SGSimEventTracerWindow methodsFor: 'recovered'!
tracerCR
    | recoveredValue0 |
    recoveredValue0 := (self) widgetText.
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x200648b4; bytecode file offset 0x961970"
!SGSimEventTracerWindow methodsFor: 'recovered'!
activateStartTracer
    | recoveredValue0 |
    recoveredValue0 := (self) uiController.
    (recoveredValue0) tracerOn.
    ^self
! !

"ASDBase.ic method 0x20064b74; bytecode file offset 0x961970"
!SGSimEventTracerWindow methodsFor: 'recovered'!
activateStopTracer
    | recoveredValue0 |
    recoveredValue0 := (self) uiController.
    (recoveredValue0) tracerOff.
    ^self
! !

"ASDBase.ic method 0x2008d0e4; bytecode file offset 0x989db0"
!SGSimEventTracerWindow methodsFor: 'recovered'!
createToolBars
    | recoveredValue0 |
    recoveredValue0 := (self) widgetToolBar.
    (self) createTools: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200917d0; bytecode file offset 0x98e0cc"
!SGSimEventTracerWindow methodsFor: 'recovered'!
initialize
    super initialize.
    ^self
! !

"ASDBase.ic method 0x2009bb34; bytecode file offset 0x998444"
!SGSimEventTracerWindow methodsFor: 'recovered'!
initFonts
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGUserInterfaceSettings.
    recoveredValue1 := (self) widgetText.
    (recoveredValue0) updateCodeFont: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200da368; bytecode file offset 0x9d6c28"
!SGSimEventTracerWindow methodsFor: 'recovered'!
tracerAppend: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widgetText.
    recoveredValue1 := (self) widgetText.
    recoveredValue2 := (recoveredValue1) getLastPosition.
    recoveredValue3 := recoveredArg1.
    (recoveredValue0) insertAndShow: (recoveredValue2) value: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201114c0; bytecode file offset 0xa0ddcc"
!SGSimEventTracerWindow methodsFor: 'recovered'!
activate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) value.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := ('activate') , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asSymbol.
    (self) perform: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2013780c; bytecode file offset 0xa340d0"
!SGSimEventTracerWindow methodsFor: 'recovered'!
activateClearList
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widgetText.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) getLastPosition.
    (recoveredValue1) replace: (0) toPos: (recoveredValue3) value: ('').
    ^self
! !

"ASDBase.ic method 0x2018500c; bytecode file offset 0xa818d4"
!SGSimEventTracerWindow methodsFor: 'recovered'!
createTools: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) createControlGroup: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) createClearGroup: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := XmNetasSingleSelectionCallback.
    (recoveredValue2) addCallback: (recoveredValue3) receiver: (self) selector: ('activateToggled:clientData:callData:') clientData: (nil).
    ^self
! !

"ASDBase.ic method 0x201f7dd4; bytecode file offset 0xaf46a0"
!SGSimEventTracerWindow methodsFor: 'recovered'!
activateToggled: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) buttonType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := XmPUSHBUTTON.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) activate: (recoveredStack2) clientData: (recoveredStack3) callData: (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20218f78; bytecode file offset 0xb15848"
!SGSimEventTracerWindow methodsFor: 'recovered'!
preClosingActivities
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) tracerOff.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := Delay.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 100.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) forMilliseconds: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) wait.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) shutDown.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := bubbleHelpManager.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := bubbleHelpManager.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            bubbleHelpManager := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023de4c; bytecode file offset 0xb3a724"
!SGSimEventTracerWindow methodsFor: 'recovered'!
createClearGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredBlock7Value0.
    recoveredBlock7Value2 := (self) returnIconWithName: ('GeneralFileDelete').
    (recoveredBlock7Value1) image: (recoveredBlock7Value2).
    recoveredBlock7Value3 := recoveredBlock7Value0.
    (recoveredBlock7Value3) toolTipText: ('Reset Tracer').
    recoveredBlock7Value4 := recoveredBlock7Value0.
    (recoveredBlock7Value4) userData: ('').
    recoveredBlock7Value0
].
    (recoveredValue0) createToolButton: ('ClearList') argBlock: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20249c90; bytecode file offset 0xb46570"
!SGSimEventTracerWindow methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 |
    super initializeAfterCreate.
    recoveredValue0 := (self) shell.
    (recoveredValue0) width: (500).
    (self) iconSmall: ('EditorEventTracer') large: ('EditorEventTracer32').
    (self) initFonts.
    (self) createToolBars.
    recoveredValue1 := (self) widgetStopTracer.
    (recoveredValue1) set: (true).
    ^self
! !

"ASDBase.ic method 0x203a19e4; bytecode file offset 0xc9e2d0"
!SGSimEventTracerWindow methodsFor: 'recovered'!
createControlGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredBlock7Value0.
    recoveredBlock7Value2 := XmRADIOBUTTON.
    (recoveredBlock7Value1) buttonType: (recoveredBlock7Value2).
    recoveredBlock7Value3 := recoveredBlock7Value0.
    recoveredBlock7Value4 := (self) returnIconWithName: ('EditorPositionStopBlue').
    (recoveredBlock7Value3) image: (recoveredBlock7Value4).
    recoveredBlock7Value5 := recoveredBlock7Value0.
    (recoveredBlock7Value5) toolTipText: ('Stop Tracer').
    recoveredBlock7Value6 := (recoveredBlock7Value0) userData: ('').
    recoveredBlock7Value6
].
    (recoveredValue0) createToolButton: ('StopTracer') argBlock: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 recoveredBlock43Value3 recoveredBlock43Value4 recoveredBlock43Value5 recoveredBlock43Value6 |
    recoveredBlock43Value0 := recoveredBlock43Arg1.
    recoveredBlock43Value1 := recoveredBlock43Value0.
    recoveredBlock43Value2 := XmRADIOBUTTON.
    (recoveredBlock43Value1) buttonType: (recoveredBlock43Value2).
    recoveredBlock43Value3 := recoveredBlock43Value0.
    recoveredBlock43Value4 := (self) returnIconWithName: ('EditorPositionStartBlue').
    (recoveredBlock43Value3) image: (recoveredBlock43Value4).
    recoveredBlock43Value5 := recoveredBlock43Value0.
    (recoveredBlock43Value5) toolTipText: ('Start Tracer').
    recoveredBlock43Value6 := (recoveredBlock43Value0) userData: ('').
    recoveredBlock43Value6
].
    (recoveredValue2) createToolButton: ('StartTracer') argBlock: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x205f984c; bytecode file offset 0xef61d0"
!SGSimEventTracerWindow methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := CwTopLevelShell.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'aTopLevelShell1'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 recoveredBlock24Value6 recoveredBlock24Value7 recoveredBlock24Value8 recoveredBlock24Value9 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := recoveredBlock24Value0.
    (recoveredBlock24Value1) title: ('Event Tracer').
    recoveredBlock24Value2 := recoveredBlock24Value0.
    recoveredBlock24Value3 := recoveredLocal8.
    recoveredBlock24Value4 := (255) * (recoveredBlock24Value3).
    recoveredBlock24Value5 := (recoveredBlock24Value4) rounded.
    (recoveredBlock24Value2) height: (recoveredBlock24Value5).
    recoveredBlock24Value6 := recoveredLocal9.
    recoveredBlock24Value7 := (347) * (recoveredBlock24Value6).
    recoveredBlock24Value8 := (recoveredBlock24Value7) rounded.
    recoveredBlock24Value9 := (recoveredBlock24Value0) width: (recoveredBlock24Value8).
    recoveredBlock24Value9
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 'aTopLevelShell1'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := 'toolBar'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := [:block2811bfccArg1 | 
    | block2811bfccValue0 |
    block2811bfccValue0 := block2811bfccArg1.
    block2811bfccValue0
].
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasToolBar: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := 'toolBar'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := 'sepToolBar'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := [:block2811bff0Arg1 | 
    | block2811bff0Value0 block2811bff0Value1 |
    block2811bff0Value0 := block2811bff0Arg1.
    block2811bff0Value1 := (block2811bff0Value0) height: (0).
    block2811bff0Value1
].
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasToolBar: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := 'text'.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack3 := [:block2811c014Arg1 | 
    | block2811c014Value0 block2811c014Value1 block2811c014Value2 block2811c014Value3 |
    block2811c014Value0 := block2811c014Arg1.
    block2811c014Value1 := block2811c014Value0.
    (block2811c014Value1) editable: (false).
    block2811c014Value2 := XmMULTILINEEDIT.
    block2811c014Value3 := (block2811c014Value0) editMode: (block2811c014Value2).
    block2811c014Value3
].
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := 'aScrolledText1'.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := 'text'.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := [:recoveredBlock234Arg1 | 
    | recoveredBlock234Value0 recoveredBlock234Value1 recoveredBlock234Value2 |
    recoveredBlock234Value0 := recoveredBlock234Arg1.
    recoveredBlock234Value1 := recoveredLocal5.
    recoveredBlock234Value2 := (recoveredBlock234Value0) workWindow: (recoveredBlock234Value1).
    recoveredBlock234Value2
].
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack2 := [:block2811c038Arg1 | 
    | block2811c038Value0 block2811c038Value1 block2811c038Value2 block2811c038Value3 block2811c038Value4 block2811c038Value5 block2811c038Value6 |
    block2811c038Value0 := block2811c038Arg1.
    block2811c038Value1 := block2811c038Value0.
    block2811c038Value2 := XmATTACHFORM.
    (block2811c038Value1) topAttachment: (block2811c038Value2).
    block2811c038Value3 := block2811c038Value0.
    block2811c038Value4 := XmATTACHFORM.
    (block2811c038Value3) leftAttachment: (block2811c038Value4).
    block2811c038Value5 := XmATTACHFORM.
    block2811c038Value6 := (block2811c038Value0) rightAttachment: (block2811c038Value5).
    block2811c038Value6
].
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := [:recoveredBlock279Arg1 | 
    | recoveredBlock279Value0 recoveredBlock279Value1 recoveredBlock279Value2 recoveredBlock279Value3 recoveredBlock279Value4 recoveredBlock279Value5 recoveredBlock279Value6 recoveredBlock279Value7 recoveredBlock279Value8 |
    recoveredBlock279Value0 := recoveredBlock279Arg1.
    recoveredBlock279Value1 := recoveredBlock279Value0.
    recoveredBlock279Value2 := XmATTACHWIDGET.
    (recoveredBlock279Value1) topAttachment: (recoveredBlock279Value2).
    recoveredBlock279Value3 := recoveredBlock279Value0.
    recoveredBlock279Value4 := recoveredLocal4.
    (recoveredBlock279Value3) topWidget: (recoveredBlock279Value4).
    recoveredBlock279Value5 := recoveredBlock279Value0.
    recoveredBlock279Value6 := XmATTACHFORM.
    (recoveredBlock279Value5) leftAttachment: (recoveredBlock279Value6).
    recoveredBlock279Value7 := XmATTACHFORM.
    recoveredBlock279Value8 := (recoveredBlock279Value0) rightAttachment: (recoveredBlock279Value7).
    recoveredBlock279Value8
].
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack2 := [:recoveredBlock313Arg1 | 
    | recoveredBlock313Value0 recoveredBlock313Value1 recoveredBlock313Value2 recoveredBlock313Value3 recoveredBlock313Value4 recoveredBlock313Value5 recoveredBlock313Value6 recoveredBlock313Value7 recoveredBlock313Value8 recoveredBlock313Value9 recoveredBlock313Value10 recoveredBlock313Value11 recoveredBlock313Value12 recoveredBlock313Value13 recoveredBlock313Value14 recoveredBlock313Value15 recoveredBlock313Value16 recoveredBlock313Value17 recoveredBlock313Value18 recoveredBlock313Value19 recoveredBlock313Value20 recoveredBlock313Value21 recoveredBlock313Value22 recoveredBlock313Value23 recoveredBlock313Value24 recoveredBlock313Value25 recoveredBlock313Value26 recoveredBlock313Value27 recoveredBlock313Value28 recoveredBlock313Value29 recoveredBlock313Value30 |
    recoveredBlock313Value0 := recoveredBlock313Arg1.
    recoveredBlock313Value1 := recoveredBlock313Value0.
    recoveredBlock313Value2 := XmATTACHFORM.
    (recoveredBlock313Value1) bottomAttachment: (recoveredBlock313Value2).
    recoveredBlock313Value3 := recoveredBlock313Value0.
    (recoveredBlock313Value3) bottomOffset: (5).
    recoveredBlock313Value4 := recoveredBlock313Value0.
    recoveredBlock313Value5 := XmATTACHWIDGET.
    (recoveredBlock313Value4) topAttachment: (recoveredBlock313Value5).
    recoveredBlock313Value6 := recoveredBlock313Value0.
    recoveredBlock313Value7 := recoveredLocal4.
    (recoveredBlock313Value6) topWidget: (recoveredBlock313Value7).
    recoveredBlock313Value8 := recoveredBlock313Value0.
    (recoveredBlock313Value8) topOffset: (5).
    recoveredBlock313Value9 := recoveredBlock313Value0.
    recoveredBlock313Value10 := XmATTACHFORM.
    (recoveredBlock313Value9) leftAttachment: (recoveredBlock313Value10).
    recoveredBlock313Value11 := recoveredBlock313Value0.
    (recoveredBlock313Value11) leftOffset: (5).
    recoveredBlock313Value12 := recoveredBlock313Value0.
    recoveredBlock313Value13 := XmATTACHFORM.
    (recoveredBlock313Value12) rightAttachment: (recoveredBlock313Value13).
    recoveredBlock313Value14 := recoveredBlock313Value0.
    (recoveredBlock313Value14) rightOffset: (5).
    recoveredBlock313Value15 := recoveredBlock313Value0.
    recoveredBlock313Value16 := recoveredLocal9.
    recoveredBlock313Value17 := (5) * (recoveredBlock313Value16).
    recoveredBlock313Value18 := (recoveredBlock313Value17) rounded.
    (recoveredBlock313Value15) x: (recoveredBlock313Value18).
    recoveredBlock313Value19 := recoveredBlock313Value0.
    recoveredBlock313Value20 := recoveredLocal8.
    recoveredBlock313Value21 := (37) * (recoveredBlock313Value20).
    recoveredBlock313Value22 := (recoveredBlock313Value21) rounded.
    (recoveredBlock313Value19) y: (recoveredBlock313Value22).
    recoveredBlock313Value23 := recoveredBlock313Value0.
    recoveredBlock313Value24 := recoveredLocal8.
    recoveredBlock313Value25 := (200) * (recoveredBlock313Value24).
    recoveredBlock313Value26 := (recoveredBlock313Value25) rounded.
    (recoveredBlock313Value23) height: (recoveredBlock313Value26).
    recoveredBlock313Value27 := recoveredLocal9.
    recoveredBlock313Value28 := (380) * (recoveredBlock313Value27).
    recoveredBlock313Value29 := (recoveredBlock313Value28) rounded.
    recoveredBlock313Value30 := (recoveredBlock313Value0) width: (recoveredBlock313Value29).
    recoveredBlock313Value30
].
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

