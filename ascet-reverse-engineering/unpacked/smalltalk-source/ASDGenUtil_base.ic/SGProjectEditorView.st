"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDGenUtil_base.ic method 0x200001c4; bytecode file offset 0xe3c8"
!SGProjectEditorView methodsFor: 'recovered'!
css4PrjContext
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) createNonconsistentProjectContext.
    ^recoveredValue1
! !

"ASDGenUtil_base.ic method 0x20000254; bytecode file offset 0xe460"
!SGProjectEditorView methodsFor: 'recovered'!
css4CurrentData
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) css4PrjContext.
    recoveredValue1 := (recoveredValue0) makeConfig.
    recoveredValue2 := (recoveredValue1) data.
    ^recoveredValue2
! !

"ASDGenUtil_base.ic method 0x200002a4; bytecode file offset 0xe460"
!SGProjectEditorView methodsFor: 'recovered'!
css4CurrentImplementation
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) css4PrjContext.
    recoveredValue1 := (recoveredValue0) makeConfig.
    recoveredValue2 := (recoveredValue1) implementation.
    ^recoveredValue2
! !

"ASDGenUtil_base.ic method 0x20000b48; bytecode file offset 0xed0c"
!SGProjectEditorView methodsFor: 'recovered'!
css4PermitMessageBoxes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := GlobalInfoController.
    (recoveredValue0) removeInstance.
    recoveredValue1 := GlobalInfoController.
    recoveredValue2 := (recoveredValue1) instance.
    (recoveredValue2) outputMediumDialogs.
    ^self
! !

"ASDGenUtil_base.ic method 0x20000b60; bytecode file offset 0xed0c"
!SGProjectEditorView methodsFor: 'recovered'!
css4SuppressMessageBoxes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := GlobalInfoController.
    (recoveredValue0) removeInstance.
    recoveredValue1 := GlobalInfoController.
    recoveredValue2 := (recoveredValue1) instance.
    (recoveredValue2) outputMediumUserWindow.
    ^self
! !

"ASDGenUtil_base.ic method 0x20000e20; bytecode file offset 0xefcc"
!SGProjectEditorView methodsFor: 'recovered'!
executerFileOutFormulasToFile: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    (self) css4SuppressMessageBoxes.
    recoveredValue0 := (self) uiController.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) fileOutFormulasSelected: (false) file: (recoveredValue1).
    (self) css4PermitMessageBoxes.
    ^self
! !

"ASDGenUtil_base.ic method 0x20000e4c; bytecode file offset 0xeff8"
!SGProjectEditorView methodsFor: 'recovered'!
executerFileOutSelectedFormulasToFile: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    (self) css4SuppressMessageBoxes.
    recoveredValue0 := (self) uiController.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) fileOutFormulasSelected: (true) file: (recoveredValue1).
    (self) css4PermitMessageBoxes.
    ^self
! !

"ASDGenUtil_base.ic method 0x20001e44; bytecode file offset 0xfffc"
!SGProjectEditorView methodsFor: 'recovered'!
executerSelectPage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) notebook.
    recoveredValue1 := (self) notebook.
    recoveredValue2 := (recoveredValue1) items.
    recoveredValue3 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) labelString.
    recoveredBlock8Value2 := recoveredArg1.
    recoveredBlock8Value3 := (recoveredBlock8Value1) includesSubstring: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue4 := [
    ^nil
].
    recoveredValue5 := (recoveredValue2) detect: (recoveredValue3) ifNone: (recoveredValue4).
    (recoveredValue0) selectItem: (recoveredValue5) notify: (true).
    (self) updateNewPage.
    ^self
! !

"ASDGenUtil_base.ic method 0x20002310; bytecode file offset 0x104cc"
!SGProjectEditorView methodsFor: 'recovered'!
executerFileInFormulasFromFile: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) css4SuppressMessageBoxes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileInFormulasSelected: (recoveredStack1) file: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) css4PermitMessageBoxes.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) updateGlobalFormulaList.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := (self) globalFormulaList.
    recoveredBlock27Value1 := recoveredBlock27Arg1.
    recoveredBlock27Value2 := (recoveredBlock27Value0) selectItem: (recoveredBlock27Value1) notify: (true).
    recoveredBlock27Value2
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) css4PermitMessageBoxes.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x20002574; bytecode file offset 0x10750"
!SGProjectEditorView methodsFor: 'recovered'!
executerFileOutCurrentImplementationConfigTo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) css4CreateFileStreamFor: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) css4ImplConfig.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 |
    recoveredBlock28Value0 := recoveredLocal2.
    recoveredBlock28Value1 := recoveredBlock28Value0.
    recoveredBlock28Value2 := recoveredBlock28Arg1.
    (recoveredBlock28Value1) nextPutAll: (recoveredBlock28Value2).
    recoveredBlock28Value3 := (recoveredBlock28Value0) cr.
    recoveredBlock28Value3
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x20002598; bytecode file offset 0x10750"
!SGProjectEditorView methodsFor: 'recovered'!
executerFileOutCurrentDataConfigTo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) css4CreateFileStreamFor: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) css4DataConfig.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 |
    recoveredBlock28Value0 := recoveredLocal2.
    recoveredBlock28Value1 := recoveredBlock28Value0.
    recoveredBlock28Value2 := recoveredBlock28Arg1.
    (recoveredBlock28Value1) nextPutAll: (recoveredBlock28Value2).
    recoveredBlock28Value3 := (recoveredBlock28Value0) cr.
    recoveredBlock28Value3
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x2000296c; bytecode file offset 0x10b2c"
!SGProjectEditorView methodsFor: 'recovered'!
executerFileOutSelectedFormulaNamesTo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) css4CreateFileStreamFor: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) globalFormulaList.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 |
    recoveredBlock29Value0 := recoveredLocal2.
    recoveredBlock29Value1 := recoveredBlock29Value0.
    recoveredBlock29Value2 := recoveredBlock29Arg1.
    recoveredBlock29Value3 := (recoveredBlock29Value2) name.
    (recoveredBlock29Value1) nextPutAll: (recoveredBlock29Value3).
    recoveredBlock29Value4 := (recoveredBlock29Value0) cr.
    recoveredBlock29Value4
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x200033a4; bytecode file offset 0x115c8"
!SGProjectEditorView methodsFor: 'recovered'!
css4DataConfig
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal6 := recoveredValue1.
    recoveredValue2 := (self) css4PrjContext.
    recoveredValue3 := (recoveredValue2) makeConfig.
    recoveredValue4 := (recoveredValue3) data.
    recoveredLocal5 := recoveredValue4.
    recoveredValue5 := recoveredLocal6.
    recoveredValue6 := (self) uiController.
    recoveredValue7 := (recoveredValue6) currentProject.
    recoveredValue8 := (recoveredValue7) label.
    recoveredValue9 := recoveredValue8.
    recoveredLocal3 := recoveredValue9.
    recoveredValue10 := (recoveredValue8) , (':').
    recoveredValue11 := recoveredLocal5.
    recoveredValue12 := (recoveredValue11) label.
    recoveredValue13 := (recoveredValue10) , (recoveredValue12).
    (recoveredValue5) add: (recoveredValue13).
    recoveredValue14 := Dictionary.
    recoveredValue15 := (recoveredValue14) new.
    recoveredLocal1 := recoveredValue15.
    recoveredValue16 := recoveredLocal5.
    recoveredValue17 := (recoveredValue16) allConfiguredElements.
    recoveredValue18 := [:recoveredBlock55Arg1 | 
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 recoveredBlock55Value3 recoveredBlock55Value4 recoveredBlock55Value5 recoveredBlock55Value6 recoveredBlock55Value7 recoveredBlock55Value8 |
    recoveredBlock55Value0 := recoveredLocal5.
    recoveredBlock55Value1 := recoveredBlock55Arg1.
    recoveredBlock55Value2 := (recoveredBlock55Value0) configForElement: (recoveredBlock55Value1).
    recoveredLocal4 := recoveredBlock55Value2.
    recoveredBlock55Value3 := recoveredLocal3.
    recoveredBlock55Value4 := recoveredLocal4.
    recoveredBlock55Value5 := recoveredBlock55Arg1.
    recoveredBlock55Value6 := recoveredLocal6.
    recoveredBlock55Value7 := recoveredLocal1.
    recoveredBlock55Value8 := (self) css4RecursePath: (recoveredBlock55Value3) config: (recoveredBlock55Value4) forElement: (recoveredBlock55Value5) to: (recoveredBlock55Value6) check: (recoveredBlock55Value7).
    recoveredBlock55Value8
].
    (recoveredValue17) do: (recoveredValue18).
    recoveredValue19 := recoveredLocal6.
    ^recoveredValue19
! !

"ASDGenUtil_base.ic method 0x200033ec; bytecode file offset 0x115c8"
!SGProjectEditorView methodsFor: 'recovered'!
css4ImplConfig
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal6 := recoveredValue1.
    recoveredValue2 := (self) css4PrjContext.
    recoveredValue3 := (recoveredValue2) makeConfig.
    recoveredValue4 := (recoveredValue3) implementation.
    recoveredLocal5 := recoveredValue4.
    recoveredValue5 := recoveredLocal6.
    recoveredValue6 := (self) uiController.
    recoveredValue7 := (recoveredValue6) currentProject.
    recoveredValue8 := (recoveredValue7) label.
    recoveredValue9 := recoveredValue8.
    recoveredLocal3 := recoveredValue9.
    recoveredValue10 := (recoveredValue8) , (':').
    recoveredValue11 := recoveredLocal5.
    recoveredValue12 := (recoveredValue11) label.
    recoveredValue13 := (recoveredValue10) , (recoveredValue12).
    (recoveredValue5) add: (recoveredValue13).
    recoveredValue14 := Dictionary.
    recoveredValue15 := (recoveredValue14) new.
    recoveredLocal1 := recoveredValue15.
    recoveredValue16 := recoveredLocal5.
    recoveredValue17 := (recoveredValue16) allConfiguredElements.
    recoveredValue18 := [:recoveredBlock55Arg1 | 
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 recoveredBlock55Value3 recoveredBlock55Value4 recoveredBlock55Value5 recoveredBlock55Value6 recoveredBlock55Value7 recoveredBlock55Value8 |
    recoveredBlock55Value0 := recoveredLocal5.
    recoveredBlock55Value1 := recoveredBlock55Arg1.
    recoveredBlock55Value2 := (recoveredBlock55Value0) configForElement: (recoveredBlock55Value1).
    recoveredLocal4 := recoveredBlock55Value2.
    recoveredBlock55Value3 := recoveredLocal3.
    recoveredBlock55Value4 := recoveredLocal4.
    recoveredBlock55Value5 := recoveredBlock55Arg1.
    recoveredBlock55Value6 := recoveredLocal6.
    recoveredBlock55Value7 := recoveredLocal1.
    recoveredBlock55Value8 := (self) css4RecursePath: (recoveredBlock55Value3) config: (recoveredBlock55Value4) forElement: (recoveredBlock55Value5) to: (recoveredBlock55Value6) check: (recoveredBlock55Value7).
    recoveredBlock55Value8
].
    (recoveredValue17) do: (recoveredValue18).
    recoveredValue19 := recoveredLocal6.
    ^recoveredValue19
! !

"ASDGenUtil_base.ic method 0x20003cd4; bytecode file offset 0x11ea4"
!SGProjectEditorView methodsFor: 'recovered'!
css4RecursePath: recoveredArg1 config: recoveredArg2 forElement: recoveredArg3 to: recoveredArg4 check: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg4.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) , ('>').
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue3) elementName.
    recoveredValue5 := (recoveredValue2) , (recoveredValue4).
    recoveredValue6 := recoveredValue5.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := (recoveredValue5) , (':').
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (recoveredValue8) label.
    recoveredValue10 := (recoveredValue7) , (recoveredValue9).
    (recoveredValue0) add: (recoveredValue10).
    recoveredValue11 := recoveredArg2.
    recoveredValue12 := (recoveredValue11) allConfiguredElements.
    recoveredValue13 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38Stack4 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := nil.
            recoveredBlock38PC := 45.
        ].
        recoveredBlock38Step = 45 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 48.
        ].
        recoveredBlock38Step = 48 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) isPrimitive.
            recoveredBlock38PC := 50.
        ].
        recoveredBlock38Step = 50 ifTrue: [
            (recoveredBlock38Stack2) ifTrue: [recoveredBlock38PC := 120] ifFalse: [recoveredBlock38PC := 54].
        ].
        recoveredBlock38Step = 54 ifTrue: [
            recoveredBlock38PC := 55.
        ].
        recoveredBlock38Step = 55 ifTrue: [
            recoveredBlock38Stack1 := recoveredArg2.
            recoveredBlock38PC := 58.
        ].
        recoveredBlock38Step = 58 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 61.
        ].
        recoveredBlock38Step = 61 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) configForElement: (recoveredBlock38Stack2).
            recoveredBlock38PC := 63.
        ].
        recoveredBlock38Step = 63 ifTrue: [
            recoveredLocal2 := recoveredBlock38Stack1.
            recoveredBlock38PC := 66.
        ].
        recoveredBlock38Step = 66 ifTrue: [
            recoveredBlock38Stack1 := nil.
            recoveredBlock38PC := 67.
        ].
        recoveredBlock38Step = 67 ifTrue: [
            recoveredBlock38Stack2 := recoveredLocal2.
            recoveredBlock38PC := 70.
        ].
        recoveredBlock38Step = 70 ifTrue: [
            (recoveredBlock38Stack2 == nil) ifTrue: [recoveredBlock38PC := 120] ifFalse: [recoveredBlock38PC := 74].
        ].
        recoveredBlock38Step = 74 ifTrue: [
            recoveredBlock38PC := 75.
        ].
        recoveredBlock38Step = 75 ifTrue: [
            recoveredBlock38Stack1 := recoveredArg5.
            recoveredBlock38PC := 78.
        ].
        recoveredBlock38Step = 78 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 81.
        ].
        recoveredBlock38Step = 81 ifTrue: [
            recoveredBlock38Stack3 := [
    | recoveredBlock38Block81Value0 recoveredBlock38Block81Value1 recoveredBlock38Block81Value2 recoveredBlock38Block81Value3 recoveredBlock38Block81Value4 recoveredBlock38Block81Value5 recoveredBlock38Block81Value6 recoveredBlock38Block81Value7 recoveredBlock38Block81Value8 |
    recoveredBlock38Block81Value0 := recoveredArg5.
    recoveredBlock38Block81Value1 := recoveredBlock38Arg1.
    recoveredBlock38Block81Value2 := recoveredLocal2.
    (recoveredBlock38Block81Value0) at: (recoveredBlock38Block81Value1) put: (recoveredBlock38Block81Value2).
    recoveredBlock38Block81Value3 := recoveredLocal1.
    recoveredBlock38Block81Value4 := recoveredLocal2.
    recoveredBlock38Block81Value5 := recoveredBlock38Arg1.
    recoveredBlock38Block81Value6 := recoveredArg4.
    recoveredBlock38Block81Value7 := recoveredArg5.
    recoveredBlock38Block81Value8 := (self) css4RecursePath: (recoveredBlock38Block81Value3) config: (recoveredBlock38Block81Value4) forElement: (recoveredBlock38Block81Value5) to: (recoveredBlock38Block81Value6) check: (recoveredBlock38Block81Value7).
    recoveredBlock38Block81Value8
].
            recoveredBlock38PC := 118.
        ].
        recoveredBlock38Step = 118 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) at: (recoveredBlock38Stack2) ifAbsent: (recoveredBlock38Stack3).
            recoveredBlock38PC := 120.
        ].
        recoveredBlock38Step = 120 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack1.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
    (recoveredValue12) do: (recoveredValue13).
    ^self
! !

