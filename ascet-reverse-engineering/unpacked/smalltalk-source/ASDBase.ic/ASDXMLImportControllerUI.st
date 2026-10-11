"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000609c; bytecode file offset 0x902de8"
!ASDXMLImportControllerUI methodsFor: 'recovered'!
optionsDialogCloseCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2000d60c; bytecode file offset 0x90a4b8"
!ASDXMLImportControllerUI methodsFor: 'recovered'!
showIssues: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d8808; bytecode file offset 0x9d50cc"
!ASDXMLImportControllerUI methodsFor: 'recovered'!
initOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := EtasXmlLogfile.
    recoveredValue2 := (recoveredValue1) default.
    recoveredValue3 := super initOn: (recoveredValue0) logger: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2017601c; bytecode file offset 0xa728e4"
!ASDXMLImportControllerUI methodsFor: 'recovered'!
selectAutofixIssues: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ASDXMLImportIssueSolverTreeDialog.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) issues: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20200c24; bytecode file offset 0xafd4f8"
!ASDXMLImportControllerUI methodsFor: 'recovered'!
messagePrompt: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDXMLImportOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionWriteXMLImportLogFile.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := logger.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20377648; bytecode file offset 0xc73f30"
!ASDXMLImportControllerUI methodsFor: 'recovered'!
importFromFiles: recoveredArg1 components: recoveredArg2 importFolder: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := recoveredArg2.
    recoveredBlock4Value2 := recoveredArg3.
    recoveredBlock4Value3 := super importFromFiles: (recoveredBlock4Value0) components: (recoveredBlock4Value1) importFolder: (recoveredBlock4Value2).
    ^recoveredBlock4Value3
].
    recoveredValue1 := ExError.
    recoveredValue2 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := ImportAborted.
            recoveredBlock26PC := 34.
        ].
        recoveredBlock26Step = 34 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 35.
        ].
        recoveredBlock26Step = 35 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) exception.
            recoveredBlock26PC := 37.
        ].
        recoveredBlock26Step = 37 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) handles: (recoveredBlock26Stack2).
            recoveredBlock26PC := 39.
        ].
        recoveredBlock26Step = 39 ifTrue: [
            (recoveredBlock26Stack1) ifTrue: [recoveredBlock26PC := 47] ifFalse: [recoveredBlock26PC := 42].
        ].
        recoveredBlock26Step = 42 ifTrue: [
            recoveredBlock26Stack1 := Util.
            recoveredBlock26PC := 44.
        ].
        recoveredBlock26Step = 44 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 45.
        ].
        recoveredBlock26Step = 45 ifTrue: [
            (recoveredBlock26Stack1) writeStackTrace: (recoveredBlock26Stack2).
            recoveredBlock26PC := 47.
        ].
        recoveredBlock26Step = 47 ifTrue: [
            recoveredBlock26Stack1 := Util.
            recoveredBlock26PC := 49.
        ].
        recoveredBlock26Step = 49 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 50.
        ].
        recoveredBlock26Step = 50 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) exceptionString: (recoveredBlock26Stack2).
            recoveredBlock26PC := 52.
        ].
        recoveredBlock26Step = 52 ifTrue: [
            (recoveredBlock26Stack0) logError: (recoveredBlock26Stack1).
            recoveredBlock26PC := 54.
        ].
        recoveredBlock26Step = 54 ifTrue: [
            recoveredBlock26Stack0 := self.
            recoveredBlock26PC := 55.
        ].
        recoveredBlock26Step = 55 ifTrue: [
            recoveredBlock26Stack1 := Util.
            recoveredBlock26PC := 57.
        ].
        recoveredBlock26Step = 57 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 58.
        ].
        recoveredBlock26Step = 58 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) exceptionString: (recoveredBlock26Stack2).
            recoveredBlock26PC := 60.
        ].
        recoveredBlock26Step = 60 ifTrue: [
            (recoveredBlock26Stack0) messagePrompt: (recoveredBlock26Stack1).
            recoveredBlock26PC := 62.
        ].
        recoveredBlock26Step = 62 ifTrue: [
            recoveredBlock26Stack0 := recoveredBlock26Arg1.
            recoveredBlock26PC := 63.
        ].
        recoveredBlock26Step = 63 ifTrue: [
            recoveredBlock26Stack1 := nil.
            recoveredBlock26PC := 64.
        ].
        recoveredBlock26Step = 64 ifTrue: [
            recoveredBlock26Stack0 := (recoveredBlock26Stack0) exitWith: (recoveredBlock26Stack1).
            recoveredBlock26PC := 66.
        ].
        recoveredBlock26Step = 66 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack0.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
    (recoveredValue0) when: (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x203e57c0; bytecode file offset 0xce20a0"
!ASDXMLImportControllerUI methodsFor: 'recovered'!
importFromPath: recoveredArg1 components: recoveredArg2 importFolder: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := recoveredArg2.
    recoveredBlock4Value2 := recoveredArg3.
    recoveredBlock4Value3 := super importFromPath: (recoveredBlock4Value0) components: (recoveredBlock4Value1) importFolder: (recoveredBlock4Value2).
    ^recoveredBlock4Value3
].
    recoveredValue1 := NoMainXMLFound.
    recoveredValue2 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 recoveredBlock26Value4 recoveredBlock26Value5 recoveredBlock26Value6 recoveredBlock26Value7 |
    recoveredBlock26Value0 := Util.
    recoveredBlock26Value1 := recoveredBlock26Arg1.
    recoveredBlock26Value2 := (recoveredBlock26Value0) exceptionString: (recoveredBlock26Value1).
    (self) logError: (recoveredBlock26Value2).
    recoveredBlock26Value3 := Util.
    recoveredBlock26Value4 := recoveredBlock26Arg1.
    recoveredBlock26Value5 := (recoveredBlock26Value3) exceptionString: (recoveredBlock26Value4).
    (self) messagePrompt: (recoveredBlock26Value5).
    recoveredBlock26Value6 := recoveredBlock26Arg1.
    recoveredBlock26Value7 := (recoveredBlock26Value6) exitWith: (nil).
    recoveredBlock26Value7
].
    recoveredValue3 := ExError.
    recoveredValue4 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Value0 recoveredBlock54Value1 recoveredBlock54Value2 recoveredBlock54Value3 recoveredBlock54Value4 recoveredBlock54Value5 recoveredBlock54Value6 recoveredBlock54Value7 recoveredBlock54Value8 recoveredBlock54Value9 |
    recoveredBlock54Value0 := Util.
    recoveredBlock54Value1 := recoveredBlock54Arg1.
    (recoveredBlock54Value0) writeStackTrace: (recoveredBlock54Value1).
    recoveredBlock54Value2 := Util.
    recoveredBlock54Value3 := recoveredBlock54Arg1.
    recoveredBlock54Value4 := (recoveredBlock54Value2) exceptionString: (recoveredBlock54Value3).
    (self) logError: (recoveredBlock54Value4).
    recoveredBlock54Value5 := Util.
    recoveredBlock54Value6 := recoveredBlock54Arg1.
    recoveredBlock54Value7 := (recoveredBlock54Value5) exceptionString: (recoveredBlock54Value6).
    (self) messagePrompt: (recoveredBlock54Value7).
    recoveredBlock54Value8 := recoveredBlock54Arg1.
    recoveredBlock54Value9 := (recoveredBlock54Value8) exitWith: (nil).
    recoveredBlock54Value9
].
    (recoveredValue0) when: (recoveredValue1) do: (recoveredValue2) when: (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20410688; bytecode file offset 0xd0cf98"
!ASDXMLImportControllerUI methodsFor: 'recovered'!
selectImportItems: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := GlobalInfoController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOutputMediumDialogs.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := CwListPrompter.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := controller.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) userInterface.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) shell.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) parent: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := 'Items available for import'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 'Select items to be imported'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) messageString: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := XmEXTENDEDSELECT.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) selectionPolicy: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := [:block280fb454Arg1 | 
    | block280fb454Value0 block280fb454Value1 |
    block280fb454Value0 := block280fb454Arg1.
    block280fb454Value1 := (block280fb454Value0) baseName.
    block280fb454Value1
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack2) printBlock: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := [:block280fb478Arg1 :block280fb478Arg2 | 
    | block280fb478Value0 block280fb478Value1 block280fb478Value2 block280fb478Value3 block280fb478Value4 |
    block280fb478Value0 := block280fb478Arg1.
    block280fb478Value1 := (block280fb478Value0) baseName.
    block280fb478Value2 := block280fb478Arg2.
    block280fb478Value3 := (block280fb478Value2) baseName.
    block280fb478Value4 := (block280fb478Value1) < (block280fb478Value3).
    block280fb478Value4
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) asSortedCollection: (recoveredStack4).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack2) items: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack2) selectedItems: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2041930c; bytecode file offset 0xd15c20"
!ASDXMLImportControllerUI methodsFor: 'recovered'!
selecttemsToOverwrite: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := EtasListConfirmationPrompter.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 'Items to overwrite'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := 'Some of the items to import are already in the database. OK to overwrite them?'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) messageString: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := [:block280fbbc8Arg1 | 
    | block280fbbc8Local1 block280fbbc8Local2 block280fbbc8Stack0 block280fbbc8Stack1 block280fbbc8Stack2 block280fbbc8Stack3 block280fbbc8PC block280fbbc8Step block280fbbc8Done block280fbbc8Result |
    block280fbbc8Stack0 := self.
    block280fbbc8PC := 4.
    block280fbbc8Done := false.
    [block280fbbc8Done not] whileTrue: [
        block280fbbc8Step := block280fbbc8PC.
        block280fbbc8Step = 4 ifTrue: [
            block280fbbc8Stack1 := block280fbbc8Arg1.
            block280fbbc8PC := 5.
        ].
        block280fbbc8Step = 5 ifTrue: [
            block280fbbc8Stack1 := (block280fbbc8Stack1) protoItem.
            block280fbbc8PC := 7.
        ].
        block280fbbc8Step = 7 ifTrue: [
            block280fbbc8Local2 := block280fbbc8Stack1.
            block280fbbc8PC := 8.
        ].
        block280fbbc8Step = 8 ifTrue: [
            block280fbbc8Stack1 := block280fbbc8Local2.
            block280fbbc8PC := 9.
        ].
        block280fbbc8Step = 9 ifTrue: [
            block280fbbc8Stack1 := (block280fbbc8Stack1) replaces.
            block280fbbc8PC := 11.
        ].
        block280fbbc8Step = 11 ifTrue: [
            block280fbbc8Stack2 := [:block280fbbecArg1 | 
    nil
].
            block280fbbc8PC := 13.
        ].
        block280fbbc8Step = 13 ifTrue: [
            block280fbbc8PC := 18.
        ].
        block280fbbc8Step = 18 ifTrue: [
            block280fbbc8Stack1 := (block280fbbc8Stack1) getObjectIfUndefined: (block280fbbc8Stack2).
            block280fbbc8PC := 20.
        ].
        block280fbbc8Step = 20 ifTrue: [
            block280fbbc8Local1 := block280fbbc8Stack1.
            block280fbbc8PC := 21.
        ].
        block280fbbc8Step = 21 ifTrue: [
            block280fbbc8Stack1 := block280fbbc8Local2.
            block280fbbc8PC := 22.
        ].
        block280fbbc8Step = 22 ifTrue: [
            block280fbbc8Stack1 := (block280fbbc8Stack1) name.
            block280fbbc8PC := 24.
        ].
        block280fbbc8Step = 24 ifTrue: [
            block280fbbc8Stack2 := ' (in '.
            block280fbbc8PC := 26.
        ].
        block280fbbc8Step = 26 ifTrue: [
            block280fbbc8Stack1 := (block280fbbc8Stack1) , (block280fbbc8Stack2).
            block280fbbc8PC := 28.
        ].
        block280fbbc8Step = 28 ifTrue: [
            block280fbbc8Stack2 := block280fbbc8Local2.
            block280fbbc8PC := 29.
        ].
        block280fbbc8Step = 29 ifTrue: [
            block280fbbc8Stack2 := (block280fbbc8Stack2) namespace.
            block280fbbc8PC := 31.
        ].
        block280fbbc8Step = 31 ifTrue: [
            block280fbbc8Stack1 := (block280fbbc8Stack1) , (block280fbbc8Stack2).
            block280fbbc8PC := 33.
        ].
        block280fbbc8Step = 33 ifTrue: [
            block280fbbc8Stack2 := ') -> '.
            block280fbbc8PC := 35.
        ].
        block280fbbc8Step = 35 ifTrue: [
            block280fbbc8Stack1 := (block280fbbc8Stack1) , (block280fbbc8Stack2).
            block280fbbc8PC := 37.
        ].
        block280fbbc8Step = 37 ifTrue: [
            block280fbbc8Stack2 := block280fbbc8Local1.
            block280fbbc8PC := 38.
        ].
        block280fbbc8Step = 38 ifTrue: [
            (block280fbbc8Stack2 ~~ nil) ifTrue: [block280fbbc8PC := 48] ifFalse: [block280fbbc8PC := 42].
        ].
        block280fbbc8Step = 42 ifTrue: [
            block280fbbc8Stack2 := '<Unreadable item'.
            block280fbbc8PC := 44.
        ].
        block280fbbc8Step = 44 ifTrue: [
            block280fbbc8PC := 51.
        ].
        block280fbbc8Step = 48 ifTrue: [
            block280fbbc8Stack2 := block280fbbc8Local1.
            block280fbbc8PC := 49.
        ].
        block280fbbc8Step = 49 ifTrue: [
            block280fbbc8Stack2 := (block280fbbc8Stack2) xmlPathString.
            block280fbbc8PC := 51.
        ].
        block280fbbc8Step = 51 ifTrue: [
            block280fbbc8Stack1 := (block280fbbc8Stack1) , (block280fbbc8Stack2).
            block280fbbc8PC := 53.
        ].
        block280fbbc8Step = 53 ifTrue: [
            block280fbbc8Result := block280fbbc8Stack1.
            block280fbbc8Done := true.
        ].
    ].
    block280fbbc8Result
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack2) printBlock: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack2) items: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := #().
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack2) selectedItems: (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20497474; bytecode file offset 0xd93d4c"
!ASDXMLImportControllerUI methodsFor: 'recovered'!
checkSizeOfItems: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal2 := false.
    recoveredValue0 := (self) library.
    recoveredValue1 := (recoveredValue0) getModelStorageFileSize.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) first.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredLocal1 := recoveredBlock10Stack1.
            recoveredBlock10PC := 21.
        ].
        recoveredBlock10Step = 21 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal1.
            recoveredBlock10PC := 24.
        ].
        recoveredBlock10Step = 24 ifTrue: [
            recoveredBlock10Stack2 := 1024.
            recoveredBlock10PC := 28.
        ].
        recoveredBlock10Step = 28 ifTrue: [
            recoveredBlock10Stack3 := 3.
            recoveredBlock10PC := 30.
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) raisedTo: (recoveredBlock10Stack3).
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            recoveredBlock10Stack3 := 2.
            recoveredBlock10PC := 33.
        ].
        recoveredBlock10Step = 33 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) * (recoveredBlock10Stack3).
            recoveredBlock10PC := 34.
        ].
        recoveredBlock10Step = 34 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) > (recoveredBlock10Stack2).
            recoveredBlock10PC := 35.
        ].
        recoveredBlock10Step = 35 ifTrue: [
            (recoveredBlock10Stack1) ifTrue: [recoveredBlock10PC := 38] ifFalse: [recoveredBlock10PC := 42].
        ].
        recoveredBlock10Step = 38 ifTrue: [
            recoveredBlock10Stack1 := true.
            recoveredBlock10PC := 39.
        ].
        recoveredBlock10Step = 39 ifTrue: [
            recoveredLocal2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 42.
        ].
        recoveredBlock10Step = 42 ifTrue: [
            recoveredBlock10Stack1 := recoveredArg1.
            recoveredBlock10PC := 45.
        ].
        recoveredBlock10Step = 45 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) size.
            recoveredBlock10PC := 47.
        ].
        recoveredBlock10Step = 47 ifTrue: [
            recoveredBlock10Stack2 := 500.
            recoveredBlock10PC := 50.
        ].
        recoveredBlock10Step = 50 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) > (recoveredBlock10Stack2).
            recoveredBlock10PC := 51.
        ].
        recoveredBlock10Step = 51 ifTrue: [
            (recoveredBlock10Stack1) ifTrue: [recoveredBlock10PC := 54] ifFalse: [recoveredBlock10PC := 58].
        ].
        recoveredBlock10Step = 54 ifTrue: [
            recoveredBlock10Stack1 := true.
            recoveredBlock10PC := 55.
        ].
        recoveredBlock10Step = 55 ifTrue: [
            recoveredLocal2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 58.
        ].
        recoveredBlock10Step = 58 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal1.
            recoveredBlock10PC := 61.
        ].
        recoveredBlock10Step = 61 ifTrue: [
            recoveredBlock10Stack2 := 1024.
            recoveredBlock10PC := 64.
        ].
        recoveredBlock10Step = 64 ifTrue: [
            recoveredBlock10Stack3 := 3.
            recoveredBlock10PC := 66.
        ].
        recoveredBlock10Step = 66 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) raisedTo: (recoveredBlock10Stack3).
            recoveredBlock10PC := 67.
        ].
        recoveredBlock10Step = 67 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) > (recoveredBlock10Stack2).
            recoveredBlock10PC := 68.
        ].
        recoveredBlock10Step = 68 ifTrue: [
            (recoveredBlock10Stack1) ifTrue: [recoveredBlock10PC := 72] ifFalse: [recoveredBlock10PC := 88].
        ].
        recoveredBlock10Step = 72 ifTrue: [
            recoveredBlock10Stack1 := recoveredArg1.
            recoveredBlock10PC := 75.
        ].
        recoveredBlock10Step = 75 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) size.
            recoveredBlock10PC := 77.
        ].
        recoveredBlock10Step = 77 ifTrue: [
            recoveredBlock10Stack2 := 50.
            recoveredBlock10PC := 79.
        ].
        recoveredBlock10Step = 79 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) > (recoveredBlock10Stack2).
            recoveredBlock10PC := 80.
        ].
        recoveredBlock10Step = 80 ifTrue: [
            (recoveredBlock10Stack1) ifTrue: [recoveredBlock10PC := 84] ifFalse: [recoveredBlock10PC := 88].
        ].
        recoveredBlock10Step = 84 ifTrue: [
            recoveredBlock10Stack1 := true.
            recoveredBlock10PC := 85.
        ].
        recoveredBlock10Step = 85 ifTrue: [
            recoveredLocal2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 88.
        ].
        recoveredBlock10Step = 88 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 89.
        ].
        recoveredBlock10Step = 89 ifTrue: [
            recoveredBlock10Stack2 := recoveredLocal2.
            recoveredBlock10PC := 92.
        ].
        recoveredBlock10Step = 92 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 96] ifFalse: [recoveredBlock10PC := 129].
        ].
        recoveredBlock10Step = 96 ifTrue: [
            recoveredBlock10PC := 97.
        ].
        recoveredBlock10Step = 97 ifTrue: [
            recoveredBlock10Stack1 := self.
            recoveredBlock10PC := 98.
        ].
        recoveredBlock10Step = 98 ifTrue: [
            recoveredBlock10Stack2 := recoveredArg1.
            recoveredBlock10PC := 101.
        ].
        recoveredBlock10Step = 101 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) getSizeOfItems: (recoveredBlock10Stack2).
            recoveredBlock10PC := 103.
        ].
        recoveredBlock10Step = 103 ifTrue: [
            recoveredLocal4 := recoveredBlock10Stack1.
            recoveredBlock10PC := 106.
        ].
        recoveredBlock10Step = 106 ifTrue: [
            recoveredBlock10Stack1 := MainController.
            recoveredBlock10PC := 108.
        ].
        recoveredBlock10Step = 108 ifTrue: [
            recoveredBlock10Stack2 := recoveredLocal4.
            recoveredBlock10PC := 111.
        ].
        recoveredBlock10Step = 111 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) doDBMaximumSizePrecheckForImportForBytes: (recoveredBlock10Stack2).
            recoveredBlock10PC := 113.
        ].
        recoveredBlock10Step = 113 ifTrue: [
            recoveredLocal3 := recoveredBlock10Stack1.
            recoveredBlock10PC := 116.
        ].
        recoveredBlock10Step = 116 ifTrue: [
            recoveredBlock10Stack1 := true.
            recoveredBlock10PC := 117.
        ].
        recoveredBlock10Step = 117 ifTrue: [
            recoveredBlock10Stack2 := recoveredLocal3.
            recoveredBlock10PC := 120.
        ].
        recoveredBlock10Step = 120 ifTrue: [
            (recoveredBlock10Stack2 == nil) ifTrue: [recoveredBlock10PC := 128] ifFalse: [recoveredBlock10PC := 124].
        ].
        recoveredBlock10Step = 124 ifTrue: [
            recoveredBlock10PC := 125.
        ].
        recoveredBlock10Step = 125 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal3.
            recoveredBlock10PC := 128.
        ].
        recoveredBlock10Step = 128 ifTrue: [
            ^recoveredBlock10Stack1
        ].
        recoveredBlock10Step = 129 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^true
! !

"ASDBase.ic method 0x204d459c; bytecode file offset 0xdd0eb0"
!ASDXMLImportControllerUI methodsFor: 'recovered'!
execLongOperation: recoveredArg1 message: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Util.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isXMLDebug.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) breakpointManager.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) activeBreakpoints.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) argumentCount.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := RBDummyProgressReporter.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := EtasXmlProgressDialog.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := controller.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) userInterface.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) shell.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock76Value0 |
    recoveredBlock76Value0 := (self) handleAbortRequest.
    recoveredBlock76Value0
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) cancelBlock: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) allowCancel: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) open.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock106Stack0 recoveredBlock106Stack1 recoveredBlock106Stack2 recoveredBlock106Stack3 recoveredBlock106PC recoveredBlock106Step recoveredBlock106Done recoveredBlock106Result |
    recoveredBlock106Stack0 := self.
    recoveredBlock106PC := 112.
    recoveredBlock106Done := false.
    [recoveredBlock106Done not] whileTrue: [
        recoveredBlock106Step := recoveredBlock106PC.
        recoveredBlock106Step = 112 ifTrue: [
            recoveredBlock106Stack1 := recoveredArg1.
            recoveredBlock106PC := 115.
        ].
        recoveredBlock106Step = 115 ifTrue: [
            recoveredBlock106Stack1 := (recoveredBlock106Stack1) argumentCount.
            recoveredBlock106PC := 117.
        ].
        recoveredBlock106Step = 117 ifTrue: [
            recoveredBlock106Stack2 := 1.
            recoveredBlock106PC := 119.
        ].
        recoveredBlock106Step = 119 ifTrue: [
            recoveredBlock106Stack1 := (recoveredBlock106Stack1) = (recoveredBlock106Stack2).
            recoveredBlock106PC := 120.
        ].
        recoveredBlock106Step = 120 ifTrue: [
            (recoveredBlock106Stack1) ifTrue: [recoveredBlock106PC := 124] ifFalse: [recoveredBlock106PC := 136].
        ].
        recoveredBlock106Step = 124 ifTrue: [
            recoveredBlock106Stack1 := recoveredArg1.
            recoveredBlock106PC := 127.
        ].
        recoveredBlock106Step = 127 ifTrue: [
            recoveredBlock106Stack2 := recoveredLocal1.
            recoveredBlock106PC := 130.
        ].
        recoveredBlock106Step = 130 ifTrue: [
            recoveredBlock106Stack1 := (recoveredBlock106Stack1) value: (recoveredBlock106Stack2).
            recoveredBlock106PC := 132.
        ].
        recoveredBlock106Step = 132 ifTrue: [
            recoveredBlock106PC := 141.
        ].
        recoveredBlock106Step = 136 ifTrue: [
            recoveredBlock106Stack1 := recoveredArg1.
            recoveredBlock106PC := 139.
        ].
        recoveredBlock106Step = 139 ifTrue: [
            recoveredBlock106Stack1 := (recoveredBlock106Stack1) value.
            recoveredBlock106PC := 141.
        ].
        recoveredBlock106Step = 141 ifTrue: [
            recoveredBlock106Result := recoveredBlock106Stack1.
            recoveredBlock106Done := true.
        ].
    ].
    recoveredBlock106Result
].
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock142Value0 recoveredBlock142Value1 |
    recoveredBlock142Value0 := recoveredLocal1.
    recoveredBlock142Value1 := (recoveredBlock142Value0) close.
    recoveredBlock142Value1
].
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1) atEndOrWhenExceptionDo: (recoveredStack2).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

