"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001b20; bytecode file offset 0x8ffcfc"
!SGSimCTSolverWindow methodsFor: 'recovered'!
initializeAfterOpen
    ^self
! !

"ASDBase.ic method 0x20006650; bytecode file offset 0x902f04"
!SGSimCTSolverWindow methodsFor: 'recovered'!
resize
    | recoveredLocal1 |
    ^self
! !

"ASDBase.ic method 0x20043afc; bytecode file offset 0x9451f8"
!SGSimCTSolverWindow methodsFor: 'recovered'!
widgetMainWindow
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('mainWindow').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004552c; bytecode file offset 0x9451f8"
!SGSimCTSolverWindow methodsFor: 'recovered'!
widgetTabstrip
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('tabstrip').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045aac; bytecode file offset 0x9451f8"
!SGSimCTSolverWindow methodsFor: 'recovered'!
widgetIntegratorBox
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('integratorBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004682c; bytecode file offset 0x9451f8"
!SGSimCTSolverWindow methodsFor: 'recovered'!
widgetClassBox
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('ctClassBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047f3c; bytecode file offset 0x9451f8"
!SGSimCTSolverWindow methodsFor: 'recovered'!
widgetSolverDescription
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('lbSolverDescription').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005ac68; bytecode file offset 0x957a6c"
!SGSimCTSolverWindow methodsFor: 'recovered'!
buttonCancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x2005b190; bytecode file offset 0x957a6c"
!SGSimCTSolverWindow methodsFor: 'recovered'!
buttonOkActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x20070030; bytecode file offset 0x96cb7c"
!SGSimCTSolverWindow methodsFor: 'recovered'!
solvers
    | recoveredValue0 |
    recoveredValue0 := solvers.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070424; bytecode file offset 0x96ce40"
!SGSimCTSolverWindow methodsFor: 'recovered'!
ctParams
    | recoveredValue0 |
    recoveredValue0 := ctParams.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007465c; bytecode file offset 0x970f98"
!SGSimCTSolverWindow methodsFor: 'recovered'!
numCTParamWidgets
    ^10
! !

"ASDBase.ic method 0x20087190; bytecode file offset 0x983a48"
!SGSimCTSolverWindow methodsFor: 'recovered'!
buttonSetAsDefaultActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := ctParams.
    (recoveredValue0) setParametersAsDefault.
    ^self
! !

"ASDBase.ic method 0x200a08a0; bytecode file offset 0x99d3ac"
!SGSimCTSolverWindow methodsFor: 'recovered'!
ok
    (self) checkAndUpdateValues.
    (self) close.
    ^self
! !

"ASDBase.ic method 0x200aec28; bytecode file offset 0x9ab4e4"
!SGSimCTSolverWindow methodsFor: 'recovered'!
ctClassBoxLoseFocusCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) checkAndUpdateValues.
    (self) updateCTWidgets.
    ^self
! !

"ASDBase.ic method 0x200c68e4; bytecode file offset 0x9c3470"
!SGSimCTSolverWindow methodsFor: 'recovered'!
ctParams: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ctParams := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c98a8; bytecode file offset 0x9c6164"
!SGSimCTSolverWindow methodsFor: 'recovered'!
textFieldLosing: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := recoveredArg2.
    (self) updateFieldValue: (recoveredValue0).
    (self) updateCTWidgets.
    ^self
! !

"ASDBase.ic method 0x200c9928; bytecode file offset 0x9c61e4"
!SGSimCTSolverWindow methodsFor: 'recovered'!
buttonDefaultActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := ctParams.
    (recoveredValue0) setToDefaultParameters.
    (self) updateCTWidgets.
    ^self
! !

"ASDBase.ic method 0x200d7b78; bytecode file offset 0x9d4494"
!SGSimCTSolverWindow methodsFor: 'recovered'!
widgetLabelN: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asString.
    recoveredValue2 := ('labelField') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asAtom.
    recoveredValue4 := (self) widgetAt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d7b94; bytecode file offset 0x9d4494"
!SGSimCTSolverWindow methodsFor: 'recovered'!
widgetTextN: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asString.
    recoveredValue2 := ('textField') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asAtom.
    recoveredValue4 := (self) widgetAt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200da740; bytecode file offset 0x9d7154"
!SGSimCTSolverWindow methodsFor: 'recovered'!
changeIntegrator: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctParams.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) integrator: (recoveredValue1).
    (self) enableDisableWidgets.
    ^self
! !

"ASDBase.ic method 0x200e24dc; bytecode file offset 0x9ded94"
!SGSimCTSolverWindow methodsFor: 'recovered'!
cancel
    ctParams := nil.
    solvers := nil.
    (self) close.
    ^self
! !

"ASDBase.ic method 0x2011165c; bytecode file offset 0xa0df18"
!SGSimCTSolverWindow methodsFor: 'recovered'!
integratorsLoseFocusCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) updateCTWidgets.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20123800; bytecode file offset 0xa200c8"
!SGSimCTSolverWindow methodsFor: 'recovered'!
ctClassBoxSingleSelect: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) checkAndUpdateValues.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getObject.
    recoveredValue2 := (recoveredValue1) ctParameter.
    (self) ctParams: (recoveredValue2).
    (self) updateCTWidgets.
    ^self
! !

"ASDBase.ic method 0x20135e88; bytecode file offset 0xa32748"
!SGSimCTSolverWindow methodsFor: 'recovered'!
integratorsSingleSelectCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) changeIntegrator: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b3910; bytecode file offset 0xab01d8"
!SGSimCTSolverWindow methodsFor: 'recovered'!
openWithParent: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) openAtCurrentMousePositionWithParent: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) resize.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := OSWidget.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) readAndDispatch.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := solvers.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20209878; bytecode file offset 0xb06138"
!SGSimCTSolverWindow methodsFor: 'recovered'!
resizeTabStrip: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) selectedItems.
    recoveredValue2 := [
    ^self
].
    recoveredValue3 := (recoveredValue1) at: (1) ifAbsent: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal2.
    (recoveredValue4) resizeTab: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2028d838; bytecode file offset 0xb8a10c"
!SGSimCTSolverWindow methodsFor: 'recovered'!
setSolvers: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280e2908Arg1 :block280e2908Arg2 | 
    | block280e2908Value0 block280e2908Value1 block280e2908Value2 block280e2908Value3 block280e2908Value4 block280e2908Value5 block280e2908Value6 |
    block280e2908Value0 := block280e2908Arg1.
    block280e2908Value1 := (block280e2908Value0) simNode.
    block280e2908Value2 := (block280e2908Value1) label.
    block280e2908Value3 := block280e2908Arg2.
    block280e2908Value4 := (block280e2908Value3) simNode.
    block280e2908Value5 := (block280e2908Value4) label.
    block280e2908Value6 := (block280e2908Value2) < (block280e2908Value5).
    block280e2908Value6
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            solvers := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 |
    recoveredBlock25Value0 := solvers.
    recoveredBlock25Value1 := recoveredBlock25Arg1.
    recoveredBlock25Value2 := (recoveredBlock25Value1) getSelfWithCopiedParameters.
    recoveredBlock25Value3 := (recoveredBlock25Value0) add: (recoveredBlock25Value2).
    recoveredBlock25Value3
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033098c; bytecode file offset 0xc2d280"
!SGSimCTSolverWindow methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'EditorCTSolver'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EditorCTSolver32'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) iconSmall: (recoveredStack1) large: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := solvers.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) ctParameter.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ctParams: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetClassBox.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:block280ecd00Arg1 | 
    | block280ecd00Value0 block280ecd00Value1 block280ecd00Value2 |
    block280ecd00Value0 := block280ecd00Arg1.
    block280ecd00Value1 := (block280ecd00Value0) simNode.
    block280ecd00Value2 := (block280ecd00Value1) label.
    block280ecd00Value2
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) printBlock: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetClassBox.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := solvers.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetClassBox.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := solvers.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) installActionKeys.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) updateCTWidgets.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) updateFonts.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c9730; bytecode file offset 0xcc6024"
!SGSimCTSolverWindow methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetKeyActions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) numCTParamWidgets.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTextN: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := [
    | block280f6f24Value0 block280f6f24Value1 |
    block280f6f24Value0 := Dictionary.
    block280f6f24Value1 := (block280f6f24Value0) new.
    block280f6f24Value1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := Character.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := 13.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := 'ok'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 14] ifFalse: [recoveredLocal1 := nil. recoveredPC := 64]] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) widgetKeyActions: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := KeyPressMask.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := 'widgetKeyEventHandler:clientData:event:'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) addEventHandler: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042f610; bytecode file offset 0xd2bf18"
!SGSimCTSolverWindow methodsFor: 'recovered'!
updateCTWidgets
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EHI_79372'.
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
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOfflineExperiment.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) context.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsVariableStepSolvers.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := ctParams.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) allIntegrators.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := ctParams.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) integrator.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := ctParams.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) allIntegratorsOnline.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := ctParams.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) integrator.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := ctParams.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) integrator.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetIntegratorBox.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := [:block280fd488Arg1 | 
    | block280fd488Value0 block280fd488Value1 |
    block280fd488Value0 := block280fd488Arg1.
    block280fd488Value1 := (block280fd488Value0) key.
    block280fd488Value1
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) printBlock: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetIntegratorBox.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetIntegratorBox.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) enableDisableWidgets.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2044be78; bytecode file offset 0xd48784"
!SGSimCTSolverWindow methodsFor: 'recovered'!
enableDisableWidgets
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EHI_79372'.
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
            recoveredStack0 := (recoveredStack0) widgetIntegratorBox.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObject.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) key.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOfflineExperiment.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) context.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsVariableStepSolvers.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := ctParams.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) solverByName: (recoveredStack1) online: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            selectedSolver := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := selectedSolver.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := ctParams.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSolvers: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            selectedSolver := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) configureCTParamWidgets.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := selectedSolver.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) fieldNames.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTextN: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := selectedSolver.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) fieldValue: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) printSimMonitor: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 80] ifFalse: [recoveredLocal1 := nil. recoveredPC := 109]] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 107] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20468e5c; bytecode file offset 0xd6578c"
!SGSimCTSolverWindow methodsFor: 'recovered'!
updateFieldValue: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := Character.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 13.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := Character.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := selectedSolver.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetTextN: (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) asFloat.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) abs.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) fieldValue: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := selectedSolver.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) ctParams.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkParameters.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := ctParams.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) dt.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) dt: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := ctParams.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) h.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) h: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := ctParams.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) hMin.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) hMin: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := ctParams.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) hMax.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) hMax: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := ctParams.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) relError.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) relError: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := ctParams.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) absError.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) absError: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := ctParams.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxIterations.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) maxIterations: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := ctParams.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := (recoveredStack2) startH.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) startH: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 119].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) addErrorText: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046c094; bytecode file offset 0xd68988"
!SGSimCTSolverWindow methodsFor: 'recovered'!
configureCTParamWidgets
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedSolver.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := selectedSolver.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) fieldNames.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := selectedSolver.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) characterMethods.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) numCTParamWidgets.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            numSolverParams := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSolverDescription.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := selectedSolver.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) comment.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) numCTParamWidgets.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTextN: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetLabelN: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := numSolverParams.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack2) manageChild.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) characterMethod: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack2) manageChild.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) labelString: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) unmanageChild.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) unmanageChild.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack0) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 46] ifFalse: [recoveredLocal3 := nil. recoveredPC := 112]] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTabstrip.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) resizeTabStrip: (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204e9438; bytecode file offset 0xde5d78"
!SGSimCTSolverWindow methodsFor: 'recovered'!
checkAndUpdateValues
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := Character.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 13.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := Character.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := OS.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := VkShift.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAsyncKeyState: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) numCTParamWidgets.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := selectedSolver.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetTextN: (recoveredStack4).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) asFloat.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) abs.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) fieldValue: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 44] ifFalse: [recoveredLocal1 := nil. recoveredPC := 73]] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := selectedSolver.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) ctParams.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkParameters.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := ctParams.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) dt.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) dt: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := ctParams.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) h.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) h: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := ctParams.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) hMin.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) hMin: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := ctParams.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) hMax.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) hMax: (recoveredStack1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := ctParams.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) relError.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) relError: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := ctParams.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) absError.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) absError: (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := ctParams.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxIterations.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) maxIterations: (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := ctParams.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) startH.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) startH: (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 163].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) addErrorText: (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206b20a4; bytecode file offset 0xfaeb8c"
!SGSimCTSolverWindow methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredLocal21 recoveredLocal22 recoveredLocal23 recoveredLocal24 recoveredLocal25 recoveredLocal26 recoveredLocal27 recoveredLocal28 recoveredLocal29 recoveredLocal30 recoveredLocal31 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 100.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal25 := recoveredStack1.
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
            recoveredLocal19 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := CgScreen.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal29 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 450.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal31 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 350.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal30 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 'aTopLevelShell1'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Value0 recoveredBlock65Value1 recoveredBlock65Value2 recoveredBlock65Value3 recoveredBlock65Value4 recoveredBlock65Value5 recoveredBlock65Value6 recoveredBlock65Value7 recoveredBlock65Value8 recoveredBlock65Value9 recoveredBlock65Value10 recoveredBlock65Value11 recoveredBlock65Value12 recoveredBlock65Value13 recoveredBlock65Value14 recoveredBlock65Value15 |
    recoveredBlock65Value0 := recoveredBlock65Arg1.
    recoveredBlock65Value1 := recoveredBlock65Value0.
    (recoveredBlock65Value1) title: ('Solver configuration').
    recoveredBlock65Value2 := recoveredBlock65Value0.
    recoveredBlock65Value3 := MWMINPUTFULLAPPLICATIONMODAL.
    (recoveredBlock65Value2) mwmInputMode: (recoveredBlock65Value3).
    recoveredBlock65Value4 := recoveredBlock65Value0.
    recoveredBlock65Value5 := MWMDECORALL.
    recoveredBlock65Value6 := MWMDECORMINIMIZE.
    recoveredBlock65Value7 := (recoveredBlock65Value5) | (recoveredBlock65Value6).
    recoveredBlock65Value8 := MWMDECORMAXIMIZE.
    recoveredBlock65Value9 := (recoveredBlock65Value7) | (recoveredBlock65Value8).
    (recoveredBlock65Value4) mwmDecorations: (recoveredBlock65Value9).
    recoveredBlock65Value10 := recoveredBlock65Value0.
    (recoveredBlock65Value10) height: (350).
    recoveredBlock65Value11 := recoveredBlock65Value0.
    (recoveredBlock65Value11) width: (450).
    recoveredBlock65Value12 := recoveredBlock65Value0.
    recoveredBlock65Value13 := recoveredLocal31.
    (recoveredBlock65Value12) x: (recoveredBlock65Value13).
    recoveredBlock65Value14 := recoveredLocal30.
    recoveredBlock65Value15 := (recoveredBlock65Value0) y: (recoveredBlock65Value14).
    recoveredBlock65Value15
].
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := 'aTopLevelShell1'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredLocal24 := recoveredStack1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack3 := recoveredLocal24.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredLocal24.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := 'buttonOk'.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack3 := [:block28131368Arg1 | 
    | block28131368Value0 block28131368Value1 block28131368Value2 block28131368Value3 block28131368Value4 block28131368Value5 |
    block28131368Value0 := block28131368Arg1.
    block28131368Value1 := block28131368Value0.
    (block28131368Value1) labelString: ('OK').
    block28131368Value2 := block28131368Value0.
    (block28131368Value2) mnemonic: ($O).
    block28131368Value3 := block28131368Value0.
    (block28131368Value3) height: (25).
    block28131368Value4 := block28131368Value0.
    (block28131368Value4) width: (90).
    block28131368Value5 := (block28131368Value0) recomputeSize: (false).
    block28131368Value5
].
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := 'buttonOk'.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := recoveredLocal24.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := 'buttonCancel'.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack3 := [:block2813138cArg1 | 
    | block2813138cValue0 block2813138cValue1 block2813138cValue2 block2813138cValue3 block2813138cValue4 block2813138cValue5 |
    block2813138cValue0 := block2813138cArg1.
    block2813138cValue1 := block2813138cValue0.
    (block2813138cValue1) labelString: ('Cancel').
    block2813138cValue2 := block2813138cValue0.
    (block2813138cValue2) mnemonic: ($C).
    block2813138cValue3 := block2813138cValue0.
    (block2813138cValue3) height: (25).
    block2813138cValue4 := block2813138cValue0.
    (block2813138cValue4) width: (90).
    block2813138cValue5 := (block2813138cValue0) recomputeSize: (false).
    block2813138cValue5
].
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := 'buttonCancel'.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := recoveredLocal24.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack2 := 'buttonDefault'.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack3 := [:block281313b0Arg1 | 
    | block281313b0Value0 block281313b0Value1 block281313b0Value2 block281313b0Value3 block281313b0Value4 block281313b0Value5 |
    block281313b0Value0 := block281313b0Arg1.
    block281313b0Value1 := block281313b0Value0.
    (block281313b0Value1) labelString: ('Default').
    block281313b0Value2 := block281313b0Value0.
    (block281313b0Value2) mnemonic: ($D).
    block281313b0Value3 := block281313b0Value0.
    (block281313b0Value3) height: (25).
    block281313b0Value4 := block281313b0Value0.
    (block281313b0Value4) width: (90).
    block281313b0Value5 := (block281313b0Value0) recomputeSize: (false).
    block281313b0Value5
].
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack2 := 'buttonDefault'.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := recoveredLocal24.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack2 := 'buttonSetAsDefault'.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack3 := [:block281313d4Arg1 | 
    | block281313d4Value0 block281313d4Value1 block281313d4Value2 block281313d4Value3 block281313d4Value4 block281313d4Value5 |
    block281313d4Value0 := block281313d4Arg1.
    block281313d4Value1 := block281313d4Value0.
    (block281313d4Value1) labelString: ('Set as Default').
    block281313d4Value2 := block281313d4Value0.
    (block281313d4Value2) mnemonic: ($S).
    block281313d4Value3 := block281313d4Value0.
    (block281313d4Value3) height: (25).
    block281313d4Value4 := block281313d4Value0.
    (block281313d4Value4) width: (90).
    block281313d4Value5 := (block281313d4Value0) recomputeSize: (false).
    block281313d4Value5
].
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack2 := 'buttonSetAsDefault'.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := recoveredLocal24.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack2 := 'tabstrip'.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack3 := [:block281313f8Arg1 | 
    | block281313f8Value0 block281313f8Value1 block281313f8Value2 block281313f8Value3 block281313f8Value4 block281313f8Value5 |
    block281313f8Value0 := block281313f8Arg1.
    block281313f8Value1 := block281313f8Value0.
    (block281313f8Value1) x: (2).
    block281313f8Value2 := block281313f8Value0.
    (block281313f8Value2) y: (1).
    block281313f8Value3 := block281313f8Value0.
    (block281313f8Value3) height: (299).
    block281313f8Value4 := block281313f8Value0.
    (block281313f8Value4) width: (276).
    block281313f8Value5 := (block281313f8Value0) multiline: (true).
    block281313f8Value5
].
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasTabStrip: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredLocal27 := recoveredStack1.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack2 := 'tabstrip'.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack3 := recoveredLocal27.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack2 := 'page'.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack3 := [:block2813141cArg1 | 
    | block2813141cValue0 block2813141cValue1 |
    block2813141cValue0 := block2813141cArg1.
    block2813141cValue1 := (block2813141cValue0) labelString: ('Solver configuration').
    block2813141cValue1
].
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack1 := (recoveredStack1) createTab: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredLocal26 := recoveredStack1.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack2 := 'page'.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack3 := recoveredLocal26.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            (recoveredStack1) userData: (recoveredStack2).
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack2 := 'labelBlock'.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack3 := [:recoveredBlock544Arg1 | 
    | recoveredBlock544Value0 recoveredBlock544Value1 recoveredBlock544Value2 recoveredBlock544Value3 recoveredBlock544Value4 recoveredBlock544Value5 recoveredBlock544Value6 recoveredBlock544Value7 |
    recoveredBlock544Value0 := recoveredBlock544Arg1.
    recoveredBlock544Value1 := recoveredBlock544Value0.
    recoveredBlock544Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock544Value1) alignment: (recoveredBlock544Value2).
    recoveredBlock544Value3 := recoveredBlock544Value0.
    (recoveredBlock544Value3) labelString: ('Block').
    recoveredBlock544Value4 := recoveredBlock544Value0.
    (recoveredBlock544Value4) marginWidth: (0).
    recoveredBlock544Value5 := recoveredBlock544Value0.
    recoveredBlock544Value6 := recoveredLocal25.
    (recoveredBlock544Value5) width: (recoveredBlock544Value6).
    recoveredBlock544Value7 := recoveredBlock544Value0.
    (recoveredBlock544Value7) recomputeSize: (false).
    recoveredBlock544Value0
].
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack2 := 'labelBlock'.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack2 := 'ctClassBox'.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack3 := [:block28131440Arg1 | 
    | block28131440Value0 block28131440Value1 block28131440Value2 |
    block28131440Value0 := block28131440Arg1.
    block28131440Value1 := block28131440Value0.
    (block28131440Value1) visibleItemCount: (7).
    block28131440Value2 := block28131440Value0.
    (block28131440Value2) width: (150).
    block28131440Value0
].
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasObjectComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredStack2 := 'ctClassBox'.
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack2 := 'labelIntegrators'.
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            recoveredStack3 := [:recoveredBlock660Arg1 | 
    | recoveredBlock660Value0 recoveredBlock660Value1 recoveredBlock660Value2 recoveredBlock660Value3 recoveredBlock660Value4 recoveredBlock660Value5 recoveredBlock660Value6 recoveredBlock660Value7 |
    recoveredBlock660Value0 := recoveredBlock660Arg1.
    recoveredBlock660Value1 := recoveredBlock660Value0.
    recoveredBlock660Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock660Value1) alignment: (recoveredBlock660Value2).
    recoveredBlock660Value3 := recoveredBlock660Value0.
    (recoveredBlock660Value3) labelString: ('Integrator').
    recoveredBlock660Value4 := recoveredBlock660Value0.
    (recoveredBlock660Value4) marginWidth: (0).
    recoveredBlock660Value5 := recoveredBlock660Value0.
    recoveredBlock660Value6 := recoveredLocal25.
    (recoveredBlock660Value5) width: (recoveredBlock660Value6).
    recoveredBlock660Value7 := recoveredBlock660Value0.
    (recoveredBlock660Value7) recomputeSize: (false).
    recoveredBlock660Value0
].
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 705.
        ].
        recoveredStep = 705 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 708.
        ].
        recoveredStep = 708 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredStack2 := 'labelIntegrators'.
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 722.
        ].
        recoveredStep = 722 ifTrue: [
            recoveredStack2 := 'integratorBox'.
            recoveredPC := 726.
        ].
        recoveredStep = 726 ifTrue: [
            recoveredStack3 := [:block28131464Arg1 | 
    | block28131464Value0 block28131464Value1 block28131464Value2 |
    block28131464Value0 := block28131464Arg1.
    block28131464Value1 := block28131464Value0.
    (block28131464Value1) visibleItemCount: (7).
    block28131464Value2 := (block28131464Value0) width: (150).
    block28131464Value2
].
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasObjectComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 758.
        ].
        recoveredStep = 758 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 761.
        ].
        recoveredStep = 761 ifTrue: [
            recoveredStack2 := 'integratorBox'.
            recoveredPC := 764.
        ].
        recoveredStep = 764 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 772.
        ].
        recoveredStep = 772 ifTrue: [
            recoveredStack2 := 'lbSolverDescription'.
            recoveredPC := 776.
        ].
        recoveredStep = 776 ifTrue: [
            recoveredStack3 := [:block28131488Arg1 | 
    | block28131488Value0 block28131488Value1 block28131488Value2 block28131488Value3 |
    block28131488Value0 := block28131488Arg1.
    block28131488Value1 := block28131488Value0.
    block28131488Value2 := XmALIGNMENTBEGINNING.
    (block28131488Value1) alignment: (block28131488Value2).
    block28131488Value3 := block28131488Value0.
    (block28131488Value3) labelString: ('A short description of the currently selected solver').
    block28131488Value0
].
            recoveredPC := 780.
        ].
        recoveredStep = 780 ifTrue: [
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 805.
        ].
        recoveredStep = 805 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 807.
        ].
        recoveredStep = 807 ifTrue: [
            recoveredLocal28 := recoveredStack1.
            recoveredPC := 810.
        ].
        recoveredStep = 810 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 813.
        ].
        recoveredStep = 813 ifTrue: [
            recoveredStack2 := 'lbSolverDescription'.
            recoveredPC := 816.
        ].
        recoveredStep = 816 ifTrue: [
            recoveredStack3 := recoveredLocal28.
            recoveredPC := 819.
        ].
        recoveredStep = 819 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 821.
        ].
        recoveredStep = 821 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 824.
        ].
        recoveredStep = 824 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 825.
        ].
        recoveredStep = 825 ifTrue: [
            recoveredStack2 := (recoveredStack2) numCTParamWidgets.
            recoveredPC := 829.
        ].
        recoveredStep = 829 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 833.
        ].
        recoveredStep = 833 ifTrue: [
            recoveredLocal20 := recoveredStack1.
            recoveredPC := 836.
        ].
        recoveredStep = 836 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 840.
        ].
        recoveredStep = 840 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 841.
        ].
        recoveredStep = 841 ifTrue: [
            recoveredStack2 := (recoveredStack2) numCTParamWidgets.
            recoveredPC := 845.
        ].
        recoveredStep = 845 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 849.
        ].
        recoveredStep = 849 ifTrue: [
            recoveredLocal21 := recoveredStack1.
            recoveredPC := 852.
        ].
        recoveredStep = 852 ifTrue: [
            recoveredStack0 := (recoveredStack0) numCTParamWidgets.
            recoveredPC := 857.
        ].
        recoveredStep = 857 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 859.
        ].
        recoveredStep = 859 ifTrue: [
            recoveredPC := 1089.
        ].
        recoveredStep = 862 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 865.
        ].
        recoveredStep = 865 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 868.
        ].
        recoveredStep = 868 ifTrue: [
            recoveredStack3 := 'textField'.
            recoveredPC := 872.
        ].
        recoveredStep = 872 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 875.
        ].
        recoveredStep = 875 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 879.
        ].
        recoveredStep = 879 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 883.
        ].
        recoveredStep = 883 ifTrue: [
            recoveredStack4 := [:block281314acArg1 | 
    | block281314acValue0 block281314acValue1 |
    block281314acValue0 := block281314acArg1.
    block281314acValue1 := (block281314acValue0) width: (150).
    block281314acValue1
].
            recoveredPC := 886.
        ].
        recoveredStep = 886 ifTrue: [
            recoveredPC := 897.
        ].
        recoveredStep = 897 ifTrue: [
            recoveredStack2 := (recoveredStack2) createEnhancedText: (recoveredStack3) argBlock: (recoveredStack4).
            recoveredPC := 901.
        ].
        recoveredStep = 901 ifTrue: [
            recoveredStack2 := (recoveredStack2) manageChild.
            recoveredPC := 903.
        ].
        recoveredStep = 903 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 906.
        ].
        recoveredStep = 906 ifTrue: [
            recoveredStack2 := recoveredLocal19.
            recoveredPC := 909.
        ].
        recoveredStep = 909 ifTrue: [
            recoveredStack3 := 'textField'.
            recoveredPC := 912.
        ].
        recoveredStep = 912 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 915.
        ].
        recoveredStep = 915 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 919.
        ].
        recoveredStep = 919 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 923.
        ].
        recoveredStep = 923 ifTrue: [
            recoveredStack3 := (recoveredStack3) asAtom.
            recoveredPC := 927.
        ].
        recoveredStep = 927 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 930.
        ].
        recoveredStep = 930 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 932.
        ].
        recoveredStep = 932 ifTrue: [
            recoveredStack2 := recoveredLocal20.
            recoveredPC := 935.
        ].
        recoveredStep = 935 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 938.
        ].
        recoveredStep = 938 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 941.
        ].
        recoveredStep = 941 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 943.
        ].
        recoveredStep = 943 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 946.
        ].
        recoveredStep = 946 ifTrue: [
            (recoveredStack2) addTabGroup.
            recoveredPC := 951.
        ].
        recoveredStep = 951 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 954.
        ].
        recoveredStep = 954 ifTrue: [
            recoveredStack3 := XmNlosingFocusCallback.
            recoveredPC := 958.
        ].
        recoveredStep = 958 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 959.
        ].
        recoveredStep = 959 ifTrue: [
            recoveredStack5 := 'textFieldLosing:clientData:callData:'.
            recoveredPC := 962.
        ].
        recoveredStep = 962 ifTrue: [
            recoveredStack6 := recoveredLocal3.
            recoveredPC := 965.
        ].
        recoveredStep = 965 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 969.
        ].
        recoveredStep = 969 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 972.
        ].
        recoveredStep = 972 ifTrue: [
            recoveredStack3 := 'labelField'.
            recoveredPC := 976.
        ].
        recoveredStep = 976 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 979.
        ].
        recoveredStep = 979 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 983.
        ].
        recoveredStep = 983 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 987.
        ].
        recoveredStep = 987 ifTrue: [
            recoveredStack4 := [:recoveredBlock987Arg1 | 
    | recoveredBlock987Value0 recoveredBlock987Value1 recoveredBlock987Value2 recoveredBlock987Value3 recoveredBlock987Value4 recoveredBlock987Value5 recoveredBlock987Value6 recoveredBlock987Value7 recoveredBlock987Value8 recoveredBlock987Value9 recoveredBlock987Value10 |
    recoveredBlock987Value0 := recoveredBlock987Arg1.
    recoveredBlock987Value1 := recoveredBlock987Value0.
    recoveredBlock987Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock987Value1) alignment: (recoveredBlock987Value2).
    recoveredBlock987Value3 := recoveredBlock987Value0.
    recoveredBlock987Value4 := recoveredLocal3.
    recoveredBlock987Value5 := (recoveredBlock987Value4) asString.
    recoveredBlock987Value6 := ('label') , (recoveredBlock987Value5).
    (recoveredBlock987Value3) labelString: (recoveredBlock987Value6).
    recoveredBlock987Value7 := recoveredBlock987Value0.
    (recoveredBlock987Value7) marginWidth: (0).
    recoveredBlock987Value8 := recoveredBlock987Value0.
    recoveredBlock987Value9 := recoveredLocal25.
    (recoveredBlock987Value8) width: (recoveredBlock987Value9).
    recoveredBlock987Value10 := recoveredBlock987Value0.
    (recoveredBlock987Value10) recomputeSize: (false).
    recoveredBlock987Value0
].
            recoveredPC := 1039.
        ].
        recoveredStep = 1039 ifTrue: [
            recoveredStack2 := (recoveredStack2) createLabel: (recoveredStack3) argBlock: (recoveredStack4).
            recoveredPC := 1043.
        ].
        recoveredStep = 1043 ifTrue: [
            recoveredStack2 := (recoveredStack2) manageChild.
            recoveredPC := 1045.
        ].
        recoveredStep = 1045 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 1048.
        ].
        recoveredStep = 1048 ifTrue: [
            recoveredStack2 := recoveredLocal19.
            recoveredPC := 1051.
        ].
        recoveredStep = 1051 ifTrue: [
            recoveredStack3 := 'labelField'.
            recoveredPC := 1054.
        ].
        recoveredStep = 1054 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 1057.
        ].
        recoveredStep = 1057 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 1061.
        ].
        recoveredStep = 1061 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 1065.
        ].
        recoveredStep = 1065 ifTrue: [
            recoveredStack3 := (recoveredStack3) asAtom.
            recoveredPC := 1069.
        ].
        recoveredStep = 1069 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 1072.
        ].
        recoveredStep = 1072 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 1074.
        ].
        recoveredStep = 1074 ifTrue: [
            recoveredStack2 := recoveredLocal21.
            recoveredPC := 1077.
        ].
        recoveredStep = 1077 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 1080.
        ].
        recoveredStep = 1080 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 1083.
        ].
        recoveredStep = 1083 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 1085.
        ].
        recoveredStep = 1085 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 1086.
        ].
        recoveredStep = 1086 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 1089.
        ].
        recoveredStep = 1089 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 862] ifFalse: [recoveredPC := 1120]] ifFalse: [recoveredPC := 1093].
        ].
        recoveredStep = 1093 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 1096.
        ].
        recoveredStep = 1096 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1097.
        ].
        recoveredStep = 1097 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 1100.
        ].
        recoveredStep = 1100 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 1101.
        ].
        recoveredStep = 1101 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 1102.
        ].
        recoveredStep = 1102 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 1105.
        ].
        recoveredStep = 1105 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 1106.
        ].
        recoveredStep = 1106 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 1116] ifFalse: [recoveredPC := 1110].
        ].
        recoveredStep = 1110 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1113.
        ].
        recoveredStep = 1113 ifTrue: [
            recoveredPC := 865.
        ].
        recoveredStep = 1116 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 1117.
        ].
        recoveredStep = 1117 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 1120.
        ].
        recoveredStep = 1120 ifTrue: [
            recoveredPC := 1121.
        ].
        recoveredStep = 1121 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 1124.
        ].
        recoveredStep = 1124 ifTrue: [
            recoveredStack1 := [:recoveredBlock1124Arg1 | 
    | recoveredBlock1124Value0 recoveredBlock1124Value1 recoveredBlock1124Value2 |
    recoveredBlock1124Value0 := recoveredBlock1124Arg1.
    recoveredBlock1124Value1 := recoveredLocal24.
    recoveredBlock1124Value2 := (recoveredBlock1124Value0) workWindow: (recoveredBlock1124Value1).
    recoveredBlock1124Value2
].
            recoveredPC := 1140.
        ].
        recoveredStep = 1140 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1145.
        ].
        recoveredStep = 1145 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1148.
        ].
        recoveredStep = 1148 ifTrue: [
            recoveredStack1 := [:block281314d0Arg1 | 
    | block281314d0Value0 block281314d0Value1 block281314d0Value2 block281314d0Value3 block281314d0Value4 block281314d0Value5 block281314d0Value6 block281314d0Value7 block281314d0Value8 block281314d0Value9 block281314d0Value10 |
    block281314d0Value0 := block281314d0Arg1.
    block281314d0Value1 := block281314d0Value0.
    block281314d0Value2 := XmATTACHNONE.
    (block281314d0Value1) leftAttachment: (block281314d0Value2).
    block281314d0Value3 := block281314d0Value0.
    block281314d0Value4 := XmATTACHNONE.
    (block281314d0Value3) topAttachment: (block281314d0Value4).
    block281314d0Value5 := block281314d0Value0.
    block281314d0Value6 := XmATTACHFORM.
    (block281314d0Value5) rightAttachment: (block281314d0Value6).
    block281314d0Value7 := block281314d0Value0.
    (block281314d0Value7) rightOffset: (10).
    block281314d0Value8 := block281314d0Value0.
    block281314d0Value9 := XmATTACHFORM.
    (block281314d0Value8) bottomAttachment: (block281314d0Value9).
    block281314d0Value10 := (block281314d0Value0) bottomOffset: (10).
    block281314d0Value10
].
            recoveredPC := 1152.
        ].
        recoveredStep = 1152 ifTrue: [
            recoveredPC := 1204.
        ].
        recoveredStep = 1204 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1209.
        ].
        recoveredStep = 1209 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 1212.
        ].
        recoveredStep = 1212 ifTrue: [
            recoveredStack1 := [:recoveredBlock1212Arg1 | 
    | recoveredBlock1212Value0 recoveredBlock1212Value1 recoveredBlock1212Value2 recoveredBlock1212Value3 recoveredBlock1212Value4 recoveredBlock1212Value5 recoveredBlock1212Value6 recoveredBlock1212Value7 recoveredBlock1212Value8 recoveredBlock1212Value9 recoveredBlock1212Value10 recoveredBlock1212Value11 recoveredBlock1212Value12 |
    recoveredBlock1212Value0 := recoveredBlock1212Arg1.
    recoveredBlock1212Value1 := recoveredBlock1212Value0.
    recoveredBlock1212Value2 := XmATTACHNONE.
    (recoveredBlock1212Value1) leftAttachment: (recoveredBlock1212Value2).
    recoveredBlock1212Value3 := recoveredBlock1212Value0.
    recoveredBlock1212Value4 := XmATTACHNONE.
    (recoveredBlock1212Value3) topAttachment: (recoveredBlock1212Value4).
    recoveredBlock1212Value5 := recoveredBlock1212Value0.
    recoveredBlock1212Value6 := XmATTACHWIDGET.
    (recoveredBlock1212Value5) rightAttachment: (recoveredBlock1212Value6).
    recoveredBlock1212Value7 := recoveredBlock1212Value0.
    recoveredBlock1212Value8 := recoveredLocal12.
    (recoveredBlock1212Value7) rightWidget: (recoveredBlock1212Value8).
    recoveredBlock1212Value9 := recoveredBlock1212Value0.
    (recoveredBlock1212Value9) rightOffset: (5).
    recoveredBlock1212Value10 := recoveredBlock1212Value0.
    recoveredBlock1212Value11 := XmATTACHFORM.
    (recoveredBlock1212Value10) bottomAttachment: (recoveredBlock1212Value11).
    recoveredBlock1212Value12 := (recoveredBlock1212Value0) bottomOffset: (10).
    recoveredBlock1212Value12
].
            recoveredPC := 1274.
        ].
        recoveredStep = 1274 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1279.
        ].
        recoveredStep = 1279 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 1282.
        ].
        recoveredStep = 1282 ifTrue: [
            recoveredStack1 := [:block281314f4Arg1 | 
    | block281314f4Value0 block281314f4Value1 block281314f4Value2 block281314f4Value3 block281314f4Value4 block281314f4Value5 block281314f4Value6 block281314f4Value7 block281314f4Value8 block281314f4Value9 block281314f4Value10 |
    block281314f4Value0 := block281314f4Arg1.
    block281314f4Value1 := block281314f4Value0.
    block281314f4Value2 := XmATTACHFORM.
    (block281314f4Value1) leftAttachment: (block281314f4Value2).
    block281314f4Value3 := block281314f4Value0.
    (block281314f4Value3) leftOffset: (10).
    block281314f4Value4 := block281314f4Value0.
    block281314f4Value5 := XmATTACHNONE.
    (block281314f4Value4) topAttachment: (block281314f4Value5).
    block281314f4Value6 := block281314f4Value0.
    block281314f4Value7 := XmATTACHNONE.
    (block281314f4Value6) rightAttachment: (block281314f4Value7).
    block281314f4Value8 := block281314f4Value0.
    block281314f4Value9 := XmATTACHFORM.
    (block281314f4Value8) bottomAttachment: (block281314f4Value9).
    block281314f4Value10 := (block281314f4Value0) bottomOffset: (10).
    block281314f4Value10
].
            recoveredPC := 1286.
        ].
        recoveredStep = 1286 ifTrue: [
            recoveredPC := 1338.
        ].
        recoveredStep = 1338 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1343.
        ].
        recoveredStep = 1343 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 1346.
        ].
        recoveredStep = 1346 ifTrue: [
            recoveredStack1 := [:recoveredBlock1346Arg1 | 
    | recoveredBlock1346Value0 recoveredBlock1346Value1 recoveredBlock1346Value2 recoveredBlock1346Value3 recoveredBlock1346Value4 recoveredBlock1346Value5 recoveredBlock1346Value6 recoveredBlock1346Value7 recoveredBlock1346Value8 recoveredBlock1346Value9 recoveredBlock1346Value10 recoveredBlock1346Value11 recoveredBlock1346Value12 |
    recoveredBlock1346Value0 := recoveredBlock1346Arg1.
    recoveredBlock1346Value1 := recoveredBlock1346Value0.
    recoveredBlock1346Value2 := XmATTACHWIDGET.
    (recoveredBlock1346Value1) leftAttachment: (recoveredBlock1346Value2).
    recoveredBlock1346Value3 := recoveredBlock1346Value0.
    (recoveredBlock1346Value3) leftOffset: (10).
    recoveredBlock1346Value4 := recoveredBlock1346Value0.
    recoveredBlock1346Value5 := recoveredLocal10.
    (recoveredBlock1346Value4) leftWidget: (recoveredBlock1346Value5).
    recoveredBlock1346Value6 := recoveredBlock1346Value0.
    recoveredBlock1346Value7 := XmATTACHNONE.
    (recoveredBlock1346Value6) topAttachment: (recoveredBlock1346Value7).
    recoveredBlock1346Value8 := recoveredBlock1346Value0.
    recoveredBlock1346Value9 := XmATTACHNONE.
    (recoveredBlock1346Value8) rightAttachment: (recoveredBlock1346Value9).
    recoveredBlock1346Value10 := recoveredBlock1346Value0.
    recoveredBlock1346Value11 := XmATTACHFORM.
    (recoveredBlock1346Value10) bottomAttachment: (recoveredBlock1346Value11).
    recoveredBlock1346Value12 := (recoveredBlock1346Value0) bottomOffset: (10).
    recoveredBlock1346Value12
].
            recoveredPC := 1408.
        ].
        recoveredStep = 1408 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1413.
        ].
        recoveredStep = 1413 ifTrue: [
            recoveredStack0 := recoveredLocal27.
            recoveredPC := 1416.
        ].
        recoveredStep = 1416 ifTrue: [
            recoveredStack1 := [:recoveredBlock1416Arg1 | 
    | recoveredBlock1416Value0 recoveredBlock1416Value1 recoveredBlock1416Value2 recoveredBlock1416Value3 recoveredBlock1416Value4 recoveredBlock1416Value5 recoveredBlock1416Value6 recoveredBlock1416Value7 recoveredBlock1416Value8 recoveredBlock1416Value9 recoveredBlock1416Value10 recoveredBlock1416Value11 recoveredBlock1416Value12 recoveredBlock1416Value13 recoveredBlock1416Value14 |
    recoveredBlock1416Value0 := recoveredBlock1416Arg1.
    recoveredBlock1416Value1 := recoveredBlock1416Value0.
    recoveredBlock1416Value2 := XmATTACHWIDGET.
    (recoveredBlock1416Value1) bottomAttachment: (recoveredBlock1416Value2).
    recoveredBlock1416Value3 := recoveredBlock1416Value0.
    (recoveredBlock1416Value3) bottomOffset: (10).
    recoveredBlock1416Value4 := recoveredBlock1416Value0.
    recoveredBlock1416Value5 := recoveredLocal12.
    (recoveredBlock1416Value4) bottomWidget: (recoveredBlock1416Value5).
    recoveredBlock1416Value6 := recoveredBlock1416Value0.
    recoveredBlock1416Value7 := XmATTACHFORM.
    (recoveredBlock1416Value6) topAttachment: (recoveredBlock1416Value7).
    recoveredBlock1416Value8 := recoveredBlock1416Value0.
    (recoveredBlock1416Value8) topOffset: (10).
    recoveredBlock1416Value9 := recoveredBlock1416Value0.
    recoveredBlock1416Value10 := XmATTACHFORM.
    (recoveredBlock1416Value9) leftAttachment: (recoveredBlock1416Value10).
    recoveredBlock1416Value11 := recoveredBlock1416Value0.
    (recoveredBlock1416Value11) leftOffset: (10).
    recoveredBlock1416Value12 := recoveredBlock1416Value0.
    recoveredBlock1416Value13 := XmATTACHFORM.
    (recoveredBlock1416Value12) rightAttachment: (recoveredBlock1416Value13).
    recoveredBlock1416Value14 := (recoveredBlock1416Value0) rightOffset: (10).
    recoveredBlock1416Value14
].
            recoveredPC := 1490.
        ].
        recoveredStep = 1490 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1495.
        ].
        recoveredStep = 1495 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 1498.
        ].
        recoveredStep = 1498 ifTrue: [
            recoveredStack1 := [:block28131518Arg1 | 
    | block28131518Value0 block28131518Value1 block28131518Value2 block28131518Value3 block28131518Value4 block28131518Value5 block28131518Value6 block28131518Value7 block28131518Value8 |
    block28131518Value0 := block28131518Arg1.
    block28131518Value1 := block28131518Value0.
    block28131518Value2 := XmATTACHFORM.
    (block28131518Value1) topAttachment: (block28131518Value2).
    block28131518Value3 := block28131518Value0.
    (block28131518Value3) topOffset: (10).
    block28131518Value4 := block28131518Value0.
    block28131518Value5 := XmATTACHFORM.
    (block28131518Value4) leftAttachment: (block28131518Value5).
    block28131518Value6 := block28131518Value0.
    (block28131518Value6) leftOffset: (10).
    block28131518Value7 := XmATTACHNONE.
    block28131518Value8 := (block28131518Value0) rightAttachment: (block28131518Value7).
    block28131518Value8
].
            recoveredPC := 1502.
        ].
        recoveredStep = 1502 ifTrue: [
            recoveredPC := 1546.
        ].
        recoveredStep = 1546 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1551.
        ].
        recoveredStep = 1551 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 1554.
        ].
        recoveredStep = 1554 ifTrue: [
            recoveredStack1 := [:recoveredBlock1554Arg1 | 
    | recoveredBlock1554Value0 recoveredBlock1554Value1 recoveredBlock1554Value2 recoveredBlock1554Value3 recoveredBlock1554Value4 recoveredBlock1554Value5 recoveredBlock1554Value6 recoveredBlock1554Value7 recoveredBlock1554Value8 recoveredBlock1554Value9 recoveredBlock1554Value10 recoveredBlock1554Value11 recoveredBlock1554Value12 recoveredBlock1554Value13 |
    recoveredBlock1554Value0 := recoveredBlock1554Arg1.
    recoveredBlock1554Value1 := recoveredBlock1554Value0.
    recoveredBlock1554Value2 := XmATTACHFORM.
    (recoveredBlock1554Value1) topAttachment: (recoveredBlock1554Value2).
    recoveredBlock1554Value3 := recoveredBlock1554Value0.
    (recoveredBlock1554Value3) topOffset: (10).
    recoveredBlock1554Value4 := recoveredBlock1554Value0.
    recoveredBlock1554Value5 := XmATTACHWIDGET.
    (recoveredBlock1554Value4) leftAttachment: (recoveredBlock1554Value5).
    recoveredBlock1554Value6 := recoveredBlock1554Value0.
    recoveredBlock1554Value7 := recoveredLocal6.
    (recoveredBlock1554Value6) leftWidget: (recoveredBlock1554Value7).
    recoveredBlock1554Value8 := recoveredBlock1554Value0.
    (recoveredBlock1554Value8) leftOffset: (10).
    recoveredBlock1554Value9 := recoveredBlock1554Value0.
    recoveredBlock1554Value10 := XmATTACHFORM.
    (recoveredBlock1554Value9) rightAttachment: (recoveredBlock1554Value10).
    recoveredBlock1554Value11 := recoveredBlock1554Value0.
    (recoveredBlock1554Value11) rightOffset: (10).
    recoveredBlock1554Value12 := XmATTACHNONE.
    recoveredBlock1554Value13 := (recoveredBlock1554Value0) bottomAttachment: (recoveredBlock1554Value12).
    recoveredBlock1554Value13
].
            recoveredPC := 1622.
        ].
        recoveredStep = 1622 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1627.
        ].
        recoveredStep = 1627 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 1630.
        ].
        recoveredStep = 1630 ifTrue: [
            recoveredStack1 := [:recoveredBlock1630Arg1 | 
    | recoveredBlock1630Value0 recoveredBlock1630Value1 recoveredBlock1630Value2 recoveredBlock1630Value3 recoveredBlock1630Value4 recoveredBlock1630Value5 recoveredBlock1630Value6 recoveredBlock1630Value7 recoveredBlock1630Value8 recoveredBlock1630Value9 recoveredBlock1630Value10 |
    recoveredBlock1630Value0 := recoveredBlock1630Arg1.
    recoveredBlock1630Value1 := recoveredBlock1630Value0.
    recoveredBlock1630Value2 := XmATTACHWIDGET.
    (recoveredBlock1630Value1) topAttachment: (recoveredBlock1630Value2).
    recoveredBlock1630Value3 := recoveredBlock1630Value0.
    recoveredBlock1630Value4 := recoveredLocal6.
    (recoveredBlock1630Value3) topWidget: (recoveredBlock1630Value4).
    recoveredBlock1630Value5 := recoveredBlock1630Value0.
    (recoveredBlock1630Value5) topOffset: (5).
    recoveredBlock1630Value6 := recoveredBlock1630Value0.
    recoveredBlock1630Value7 := XmATTACHFORM.
    (recoveredBlock1630Value6) leftAttachment: (recoveredBlock1630Value7).
    recoveredBlock1630Value8 := recoveredBlock1630Value0.
    (recoveredBlock1630Value8) leftOffset: (10).
    recoveredBlock1630Value9 := XmATTACHNONE.
    recoveredBlock1630Value10 := (recoveredBlock1630Value0) rightAttachment: (recoveredBlock1630Value9).
    recoveredBlock1630Value10
].
            recoveredPC := 1684.
        ].
        recoveredStep = 1684 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1689.
        ].
        recoveredStep = 1689 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 1692.
        ].
        recoveredStep = 1692 ifTrue: [
            recoveredStack1 := [:recoveredBlock1692Arg1 | 
    | recoveredBlock1692Value0 recoveredBlock1692Value1 recoveredBlock1692Value2 recoveredBlock1692Value3 recoveredBlock1692Value4 recoveredBlock1692Value5 recoveredBlock1692Value6 recoveredBlock1692Value7 recoveredBlock1692Value8 recoveredBlock1692Value9 recoveredBlock1692Value10 recoveredBlock1692Value11 recoveredBlock1692Value12 recoveredBlock1692Value13 |
    recoveredBlock1692Value0 := recoveredBlock1692Arg1.
    recoveredBlock1692Value1 := recoveredBlock1692Value0.
    recoveredBlock1692Value2 := XmATTACHWIDGET.
    (recoveredBlock1692Value1) topAttachment: (recoveredBlock1692Value2).
    recoveredBlock1692Value3 := recoveredBlock1692Value0.
    recoveredBlock1692Value4 := recoveredLocal5.
    (recoveredBlock1692Value3) topWidget: (recoveredBlock1692Value4).
    recoveredBlock1692Value5 := recoveredBlock1692Value0.
    (recoveredBlock1692Value5) topOffset: (5).
    recoveredBlock1692Value6 := recoveredBlock1692Value0.
    recoveredBlock1692Value7 := XmATTACHWIDGET.
    (recoveredBlock1692Value6) leftAttachment: (recoveredBlock1692Value7).
    recoveredBlock1692Value8 := recoveredBlock1692Value0.
    recoveredBlock1692Value9 := recoveredLocal8.
    (recoveredBlock1692Value8) leftWidget: (recoveredBlock1692Value9).
    recoveredBlock1692Value10 := recoveredBlock1692Value0.
    (recoveredBlock1692Value10) leftOffset: (10).
    recoveredBlock1692Value11 := recoveredBlock1692Value0.
    recoveredBlock1692Value12 := XmATTACHFORM.
    (recoveredBlock1692Value11) rightAttachment: (recoveredBlock1692Value12).
    recoveredBlock1692Value13 := (recoveredBlock1692Value0) rightOffset: (10).
    recoveredBlock1692Value13
].
            recoveredPC := 1760.
        ].
        recoveredStep = 1760 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1765.
        ].
        recoveredStep = 1765 ifTrue: [
            recoveredStack0 := recoveredLocal28.
            recoveredPC := 1768.
        ].
        recoveredStep = 1768 ifTrue: [
            recoveredStack1 := [:recoveredBlock1768Arg1 | 
    | recoveredBlock1768Value0 recoveredBlock1768Value1 recoveredBlock1768Value2 recoveredBlock1768Value3 recoveredBlock1768Value4 recoveredBlock1768Value5 recoveredBlock1768Value6 recoveredBlock1768Value7 recoveredBlock1768Value8 recoveredBlock1768Value9 recoveredBlock1768Value10 recoveredBlock1768Value11 recoveredBlock1768Value12 recoveredBlock1768Value13 |
    recoveredBlock1768Value0 := recoveredBlock1768Arg1.
    recoveredBlock1768Value1 := recoveredBlock1768Value0.
    recoveredBlock1768Value2 := XmATTACHWIDGET.
    (recoveredBlock1768Value1) topAttachment: (recoveredBlock1768Value2).
    recoveredBlock1768Value3 := recoveredBlock1768Value0.
    recoveredBlock1768Value4 := recoveredLocal7.
    (recoveredBlock1768Value3) topWidget: (recoveredBlock1768Value4).
    recoveredBlock1768Value5 := recoveredBlock1768Value0.
    (recoveredBlock1768Value5) topOffset: (5).
    recoveredBlock1768Value6 := recoveredBlock1768Value0.
    recoveredBlock1768Value7 := XmATTACHWIDGET.
    (recoveredBlock1768Value6) leftAttachment: (recoveredBlock1768Value7).
    recoveredBlock1768Value8 := recoveredBlock1768Value0.
    recoveredBlock1768Value9 := recoveredLocal8.
    (recoveredBlock1768Value8) leftWidget: (recoveredBlock1768Value9).
    recoveredBlock1768Value10 := recoveredBlock1768Value0.
    (recoveredBlock1768Value10) leftOffset: (10).
    recoveredBlock1768Value11 := recoveredBlock1768Value0.
    recoveredBlock1768Value12 := XmATTACHFORM.
    (recoveredBlock1768Value11) rightAttachment: (recoveredBlock1768Value12).
    recoveredBlock1768Value13 := (recoveredBlock1768Value0) rightOffset: (10).
    recoveredBlock1768Value13
].
            recoveredPC := 1836.
        ].
        recoveredStep = 1836 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1841.
        ].
        recoveredStep = 1841 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 1844.
        ].
        recoveredStep = 1844 ifTrue: [
            recoveredLocal23 := recoveredStack0.
            recoveredPC := 1847.
        ].
        recoveredStep = 1847 ifTrue: [
            recoveredStack0 := recoveredLocal28.
            recoveredPC := 1850.
        ].
        recoveredStep = 1850 ifTrue: [
            recoveredLocal22 := recoveredStack0.
            recoveredPC := 1853.
        ].
        recoveredStep = 1853 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1854.
        ].
        recoveredStep = 1854 ifTrue: [
            recoveredStack0 := (recoveredStack0) numCTParamWidgets.
            recoveredPC := 1859.
        ].
        recoveredStep = 1859 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 1861.
        ].
        recoveredStep = 1861 ifTrue: [
            recoveredPC := 2053.
        ].
        recoveredStep = 1864 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 1867.
        ].
        recoveredStep = 1867 ifTrue: [
            recoveredStack2 := recoveredLocal21.
            recoveredPC := 1870.
        ].
        recoveredStep = 1870 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 1873.
        ].
        recoveredStep = 1873 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 1877.
        ].
        recoveredStep = 1877 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 1880.
        ].
        recoveredStep = 1880 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 1883.
        ].
        recoveredStep = 1883 ifTrue: [
            recoveredStack3 := [:recoveredBlock1883Arg1 | 
    | recoveredBlock1883Value0 recoveredBlock1883Value1 recoveredBlock1883Value2 recoveredBlock1883Value3 recoveredBlock1883Value4 recoveredBlock1883Value5 recoveredBlock1883Value6 recoveredBlock1883Value7 recoveredBlock1883Value8 recoveredBlock1883Value9 recoveredBlock1883Value10 |
    recoveredBlock1883Value0 := recoveredBlock1883Arg1.
    recoveredBlock1883Value1 := recoveredBlock1883Value0.
    recoveredBlock1883Value2 := XmATTACHWIDGET.
    (recoveredBlock1883Value1) topAttachment: (recoveredBlock1883Value2).
    recoveredBlock1883Value3 := recoveredBlock1883Value0.
    recoveredBlock1883Value4 := recoveredLocal22.
    (recoveredBlock1883Value3) topWidget: (recoveredBlock1883Value4).
    recoveredBlock1883Value5 := recoveredBlock1883Value0.
    (recoveredBlock1883Value5) topOffset: (5).
    recoveredBlock1883Value6 := recoveredBlock1883Value0.
    recoveredBlock1883Value7 := XmATTACHFORM.
    (recoveredBlock1883Value6) leftAttachment: (recoveredBlock1883Value7).
    recoveredBlock1883Value8 := recoveredBlock1883Value0.
    (recoveredBlock1883Value8) leftOffset: (10).
    recoveredBlock1883Value9 := XmATTACHNONE.
    recoveredBlock1883Value10 := (recoveredBlock1883Value0) rightAttachment: (recoveredBlock1883Value9).
    recoveredBlock1883Value10
].
            recoveredPC := 1938.
        ].
        recoveredStep = 1938 ifTrue: [
            (recoveredStack2) setValuesBlock: (recoveredStack3).
            recoveredPC := 1943.
        ].
        recoveredStep = 1943 ifTrue: [
            recoveredStack2 := recoveredLocal20.
            recoveredPC := 1946.
        ].
        recoveredStep = 1946 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 1949.
        ].
        recoveredStep = 1949 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 1953.
        ].
        recoveredStep = 1953 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 1956.
        ].
        recoveredStep = 1956 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 1959.
        ].
        recoveredStep = 1959 ifTrue: [
            recoveredStack3 := [:recoveredBlock1959Arg1 | 
    | recoveredBlock1959Value0 recoveredBlock1959Value1 recoveredBlock1959Value2 recoveredBlock1959Value3 recoveredBlock1959Value4 recoveredBlock1959Value5 recoveredBlock1959Value6 recoveredBlock1959Value7 recoveredBlock1959Value8 recoveredBlock1959Value9 recoveredBlock1959Value10 recoveredBlock1959Value11 recoveredBlock1959Value12 recoveredBlock1959Value13 |
    recoveredBlock1959Value0 := recoveredBlock1959Arg1.
    recoveredBlock1959Value1 := recoveredBlock1959Value0.
    recoveredBlock1959Value2 := XmATTACHWIDGET.
    (recoveredBlock1959Value1) topAttachment: (recoveredBlock1959Value2).
    recoveredBlock1959Value3 := recoveredBlock1959Value0.
    recoveredBlock1959Value4 := recoveredLocal22.
    (recoveredBlock1959Value3) topWidget: (recoveredBlock1959Value4).
    recoveredBlock1959Value5 := recoveredBlock1959Value0.
    (recoveredBlock1959Value5) topOffset: (5).
    recoveredBlock1959Value6 := recoveredBlock1959Value0.
    recoveredBlock1959Value7 := XmATTACHWIDGET.
    (recoveredBlock1959Value6) leftAttachment: (recoveredBlock1959Value7).
    recoveredBlock1959Value8 := recoveredBlock1959Value0.
    recoveredBlock1959Value9 := recoveredLocal2.
    (recoveredBlock1959Value8) leftWidget: (recoveredBlock1959Value9).
    recoveredBlock1959Value10 := recoveredBlock1959Value0.
    (recoveredBlock1959Value10) leftOffset: (10).
    recoveredBlock1959Value11 := recoveredBlock1959Value0.
    recoveredBlock1959Value12 := XmATTACHFORM.
    (recoveredBlock1959Value11) rightAttachment: (recoveredBlock1959Value12).
    recoveredBlock1959Value13 := (recoveredBlock1959Value0) rightOffset: (10).
    recoveredBlock1959Value13
].
            recoveredPC := 2028.
        ].
        recoveredStep = 2028 ifTrue: [
            (recoveredStack2) setValuesBlock: (recoveredStack3).
            recoveredPC := 2033.
        ].
        recoveredStep = 2033 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 2036.
        ].
        recoveredStep = 2036 ifTrue: [
            recoveredLocal23 := recoveredStack2.
            recoveredPC := 2039.
        ].
        recoveredStep = 2039 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 2042.
        ].
        recoveredStep = 2042 ifTrue: [
            recoveredLocal22 := recoveredStack2.
            recoveredPC := 2045.
        ].
        recoveredStep = 2045 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 2046.
        ].
        recoveredStep = 2046 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 2047.
        ].
        recoveredStep = 2047 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 2050.
        ].
        recoveredStep = 2050 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 2053.
        ].
        recoveredStep = 2053 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 1864] ifFalse: [recoveredPC := 2084]] ifFalse: [recoveredPC := 2057].
        ].
        recoveredStep = 2057 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 2060.
        ].
        recoveredStep = 2060 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 2061.
        ].
        recoveredStep = 2061 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 2064.
        ].
        recoveredStep = 2064 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 2065.
        ].
        recoveredStep = 2065 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 2066.
        ].
        recoveredStep = 2066 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 2069.
        ].
        recoveredStep = 2069 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 2070.
        ].
        recoveredStep = 2070 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 2080] ifFalse: [recoveredPC := 2074].
        ].
        recoveredStep = 2074 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 2077.
        ].
        recoveredStep = 2077 ifTrue: [
            recoveredPC := 1867.
        ].
        recoveredStep = 2080 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 2081.
        ].
        recoveredStep = 2081 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 2084.
        ].
        recoveredStep = 2084 ifTrue: [
            recoveredPC := 2085.
        ].
        recoveredStep = 2085 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 2088.
        ].
        recoveredStep = 2088 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 2092.
        ].
        recoveredStep = 2092 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 2093.
        ].
        recoveredStep = 2093 ifTrue: [
            recoveredStack3 := 'buttonCancelActivate:clientData:callData:'.
            recoveredPC := 2096.
        ].
        recoveredStep = 2096 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 2097.
        ].
        recoveredStep = 2097 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 2101.
        ].
        recoveredStep = 2101 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 2104.
        ].
        recoveredStep = 2104 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 2108.
        ].
        recoveredStep = 2108 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 2109.
        ].
        recoveredStep = 2109 ifTrue: [
            recoveredStack3 := 'buttonOkActivate:clientData:callData:'.
            recoveredPC := 2112.
        ].
        recoveredStep = 2112 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 2113.
        ].
        recoveredStep = 2113 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 2117.
        ].
        recoveredStep = 2117 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 2120.
        ].
        recoveredStep = 2120 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 2124.
        ].
        recoveredStep = 2124 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 2125.
        ].
        recoveredStep = 2125 ifTrue: [
            recoveredStack3 := 'buttonDefaultActivate:clientData:callData:'.
            recoveredPC := 2128.
        ].
        recoveredStep = 2128 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 2129.
        ].
        recoveredStep = 2129 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 2133.
        ].
        recoveredStep = 2133 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 2136.
        ].
        recoveredStep = 2136 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 2140.
        ].
        recoveredStep = 2140 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 2141.
        ].
        recoveredStep = 2141 ifTrue: [
            recoveredStack3 := 'buttonSetAsDefaultActivate:clientData:callData:'.
            recoveredPC := 2144.
        ].
        recoveredStep = 2144 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 2145.
        ].
        recoveredStep = 2145 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 2149.
        ].
        recoveredStep = 2149 ifTrue: [
            recoveredStack0 := recoveredLocal27.
            recoveredPC := 2152.
        ].
        recoveredStep = 2152 ifTrue: [
            recoveredStack1 := XmNresizeCallback.
            recoveredPC := 2156.
        ].
        recoveredStep = 2156 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 2157.
        ].
        recoveredStep = 2157 ifTrue: [
            recoveredStack3 := 'resizeTabStrip:clientData:callData:'.
            recoveredPC := 2160.
        ].
        recoveredStep = 2160 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 2161.
        ].
        recoveredStep = 2161 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 2165.
        ].
        recoveredStep = 2165 ifTrue: [
            recoveredStack0 := recoveredLocal27.
            recoveredPC := 2168.
        ].
        recoveredStep = 2168 ifTrue: [
            recoveredStack1 := XmNmodifyVerifyCallback.
            recoveredPC := 2172.
        ].
        recoveredStep = 2172 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 2173.
        ].
        recoveredStep = 2173 ifTrue: [
            recoveredStack3 := 'modifyVerifyTabStrip:clientData:callData:'.
            recoveredPC := 2176.
        ].
        recoveredStep = 2176 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 2177.
        ].
        recoveredStep = 2177 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 2181.
        ].
        recoveredStep = 2181 ifTrue: [
            recoveredStack0 := recoveredLocal27.
            recoveredPC := 2184.
        ].
        recoveredStep = 2184 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 2188.
        ].
        recoveredStep = 2188 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 2189.
        ].
        recoveredStep = 2189 ifTrue: [
            recoveredStack3 := 'singleSelectionTabStrip:clientData:callData:'.
            recoveredPC := 2192.
        ].
        recoveredStep = 2192 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 2193.
        ].
        recoveredStep = 2193 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 2197.
        ].
        recoveredStep = 2197 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 2200.
        ].
        recoveredStep = 2200 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 2201.
        ].
        recoveredStep = 2201 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 2204.
        ].
        recoveredStep = 2204 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2205.
        ].
        recoveredStep = 2205 ifTrue: [
            recoveredStack4 := 'integratorsSingleSelectCallback:clientData:callData:'.
            recoveredPC := 2208.
        ].
        recoveredStep = 2208 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2209.
        ].
        recoveredStep = 2209 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 2213.
        ].
        recoveredStep = 2213 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 2216.
        ].
        recoveredStep = 2216 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2217.
        ].
        recoveredStep = 2217 ifTrue: [
            recoveredStack4 := 'integratorsLoseFocusCallback:clientData:callData:'.
            recoveredPC := 2220.
        ].
        recoveredStep = 2220 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2221.
        ].
        recoveredStep = 2221 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2225.
        ].
        recoveredStep = 2225 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 2228.
        ].
        recoveredStep = 2228 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 2229.
        ].
        recoveredStep = 2229 ifTrue: [
            recoveredStack3 := 'integratorsSingleSelectCallback:clientData:callData:'.
            recoveredPC := 2232.
        ].
        recoveredStep = 2232 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 2233.
        ].
        recoveredStep = 2233 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 2237.
        ].
        recoveredStep = 2237 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 2240.
        ].
        recoveredStep = 2240 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 2241.
        ].
        recoveredStep = 2241 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 2244.
        ].
        recoveredStep = 2244 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2245.
        ].
        recoveredStep = 2245 ifTrue: [
            recoveredStack4 := 'ctClassBoxSingleSelect:clientData:callData:'.
            recoveredPC := 2248.
        ].
        recoveredStep = 2248 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2249.
        ].
        recoveredStep = 2249 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 2253.
        ].
        recoveredStep = 2253 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 2256.
        ].
        recoveredStep = 2256 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2257.
        ].
        recoveredStep = 2257 ifTrue: [
            recoveredStack4 := 'ctClassBoxLoseFocusCallback:clientData:callData:'.
            recoveredPC := 2260.
        ].
        recoveredStep = 2260 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2261.
        ].
        recoveredStep = 2261 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2265.
        ].
        recoveredStep = 2265 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 2268.
        ].
        recoveredStep = 2268 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 2269.
        ].
        recoveredStep = 2269 ifTrue: [
            recoveredStack3 := 'ctClassBoxSingleSelect:clientData:callData:'.
            recoveredPC := 2272.
        ].
        recoveredStep = 2272 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 2273.
        ].
        recoveredStep = 2273 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 2277.
        ].
        recoveredStep = 2277 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 2280.
        ].
        recoveredStep = 2280 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 2285.
        ].
        recoveredStep = 2285 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 2288.
        ].
        recoveredStep = 2288 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 2293.
        ].
        recoveredStep = 2293 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 2296.
        ].
        recoveredStep = 2296 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 2301.
        ].
        recoveredStep = 2301 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 2304.
        ].
        recoveredStep = 2304 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 2309.
        ].
        recoveredStep = 2309 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 2312.
        ].
        recoveredStep = 2312 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 2317.
        ].
        recoveredStep = 2317 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 2320.
        ].
        recoveredStep = 2320 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 2325.
        ].
        recoveredStep = 2325 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 2328.
        ].
        recoveredStep = 2328 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 2333.
        ].
        recoveredStep = 2333 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 2334.
        ].
        recoveredStep = 2334 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 2337.
        ].
        recoveredStep = 2337 ifTrue: [
            (recoveredStack0) resizeTabStrip: (recoveredStack1).
            recoveredPC := 2341.
        ].
        recoveredStep = 2341 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 2344.
        ].
        recoveredStep = 2344 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 2347.
        ].
        recoveredStep = 2347 ifTrue: [
            recoveredStack2 := recoveredLocal15.
            recoveredPC := 2350.
        ].
        recoveredStep = 2350 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 2355.
        ].
        recoveredStep = 2355 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

