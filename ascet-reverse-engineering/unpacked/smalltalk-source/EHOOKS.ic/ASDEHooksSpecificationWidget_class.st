"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"EHOOKS.ic method 0x200000dc; bytecode file offset 0xf210"
!ASDEHooksSpecificationWidget class methodsFor: 'recovered'!
EHooksApplication
    | recoveredValue0 |
    recoveredValue0 := EHooksApplication.
    ^recoveredValue0
! !

"EHOOKS.ic method 0x200000fc; bytecode file offset 0xf2b4"
!ASDEHooksSpecificationWidget class methodsFor: 'recovered'!
widgetAtom
    ^'eHooksSpecificationWidget'
! !

"EHOOKS.ic method 0x20000138; bytecode file offset 0xf2b4"
!ASDEHooksSpecificationWidget class methodsFor: 'recovered'!
projectEditorPageLabel
    ^'EHOOKS'
! !

"EHOOKS.ic method 0x20000224; bytecode file offset 0xf35c"
!ASDEHooksSpecificationWidget class methodsFor: 'recovered'!
projectEditorIcon
    | recoveredValue0 |
    recoveredValue0 := ('EHOOKS') asString.
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20000424; bytecode file offset 0xf558"
!ASDEHooksSpecificationWidget class methodsFor: 'recovered'!
EHooksApplication: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    EHooksApplication := recoveredValue0.
    ^self
! !

"EHOOKS.ic method 0x2000068c; bytecode file offset 0xf7cc"
!ASDEHooksSpecificationWidget class methodsFor: 'recovered'!
isAbstract
    ^false
! !

"EHOOKS.ic method 0x20001200; bytecode file offset 0x10338"
!ASDEHooksSpecificationWidget class methodsFor: 'recovered'!
filterStringDict
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := filterStringDict.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            filterStringDict := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := filterStringDict.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x20001594; bytecode file offset 0x106cc"
!ASDEHooksSpecificationWidget class methodsFor: 'recovered'!
visibilityBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280010bcArg1 | 
    | block280010bcStack0 block280010bcStack1 block280010bcStack2 block280010bcStack3 block280010bcPC block280010bcStep block280010bcDone block280010bcResult |
    block280010bcStack0 := self.
    block280010bcPC := 4.
    block280010bcDone := false.
    [block280010bcDone not] whileTrue: [
        block280010bcStep := block280010bcPC.
        block280010bcStep = 4 ifTrue: [
            block280010bcStack1 := false.
            block280010bcPC := 5.
        ].
        block280010bcStep = 5 ifTrue: [
            block280010bcStack2 := block280010bcArg1.
            block280010bcPC := 6.
        ].
        block280010bcStep = 6 ifTrue: [
            (block280010bcStack2 == nil) ifTrue: [block280010bcPC := 13] ifFalse: [block280010bcPC := 10].
        ].
        block280010bcStep = 10 ifTrue: [
            block280010bcPC := 11.
        ].
        block280010bcStep = 11 ifTrue: [
            block280010bcStack1 := block280010bcArg1.
            block280010bcPC := 12.
        ].
        block280010bcStep = 12 ifTrue: [
            block280010bcStack1 := (block280010bcStack1) hasEHooksTarget.
            block280010bcPC := 13.
        ].
        block280010bcStep = 13 ifTrue: [
            block280010bcResult := block280010bcStack1.
            block280010bcDone := true.
        ].
    ].
    block280010bcResult
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x20003ef4; bytecode file offset 0x13078"
!ASDEHooksSpecificationWidget class methodsFor: 'recovered'!
projectFileOption: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := TGMapFileReaderRT.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ASCET project file'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'ASCET project file'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := 'ASCET project file'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack5 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack5 := '%DATA%\*'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack6 := AscetConfigFileExt.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := '%DATA%\*'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack7 := AscetConfigFileExt.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack6 := (recoveredStack6) , (recoveredStack7).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack7 := ''.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack8 := [
    true
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack9 := [
    true
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack10 := 'USER'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack11 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) label: (recoveredStack2) description: (recoveredStack3) toolTip: (recoveredStack4) value: (recoveredStack5) default: (recoveredStack6) group: (recoveredStack7) visible: (recoveredStack8) sensitive: (recoveredStack9) type: (recoveredStack10) userField: (recoveredStack11).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := Dictionary.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack5 := '*'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack6 := AscetConfigFileExt.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack6 := 'ASCET EHOOKS project files '.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack5 := '*.*'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack6 := 'All Files '.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack2) filterDictionary: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := '*'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := AscetConfigFileExt.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack2) searchMask: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := 'Select ASCET EHOOKS project file'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack2) dialogTitle: (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x20003fb0; bytecode file offset 0x13138"
!ASDEHooksSpecificationWidget class methodsFor: 'recovered'!
ehooksFileOption: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := TGMapFileReaderRT.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EHOOKS file'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'EHOOKS file'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := 'EHOOKS file'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack5 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack5 := '%DATA%\*'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack6 := EHooksConfigFileExt.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := '%DATA%\*'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack7 := EHooksConfigFileExt.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack6 := (recoveredStack6) , (recoveredStack7).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack7 := ''.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack8 := [
    true
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack9 := [
    true
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack10 := 'USER'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack11 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) label: (recoveredStack2) description: (recoveredStack3) toolTip: (recoveredStack4) value: (recoveredStack5) default: (recoveredStack6) group: (recoveredStack7) visible: (recoveredStack8) sensitive: (recoveredStack9) type: (recoveredStack10) userField: (recoveredStack11).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := Dictionary.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack5 := '*'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack6 := EHooksConfigFileExt.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack6 := 'EHOOKS files '.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack5 := '*.*'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack6 := 'All Files '.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack2) filterDictionary: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := '*'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := AscetConfigFileExt.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack2) searchMask: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := 'Select EHOOKS file'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack2) dialogTitle: (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x20004164; bytecode file offset 0x132e0"
!ASDEHooksSpecificationWidget class methodsFor: 'recovered'!
createWidgetHierarchyFor: recoveredArg1 form: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'ehooksWidget'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := recoveredArg1.
    (recoveredBlock9Value0) owner: (recoveredBlock9Value1).
    recoveredBlock9Value2 := recoveredBlock9Arg1.
    recoveredBlock9Value3 := recoveredArg1.
    recoveredBlock9Value4 := (recoveredBlock9Value3) uiController.
    recoveredBlock9Value5 := (recoveredBlock9Value4) item.
    recoveredBlock9Value6 := (recoveredBlock9Value2) project: (recoveredBlock9Value5).
    recoveredBlock9Value6
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) createASDEHooksSpecificationWidget: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [:block280016a4Arg1 | 
    | block280016a4Value0 block280016a4Value1 block280016a4Value2 block280016a4Value3 block280016a4Value4 block280016a4Value5 block280016a4Value6 block280016a4Value7 block280016a4Value8 block280016a4Value9 block280016a4Value10 block280016a4Value11 block280016a4Value12 |
    block280016a4Value0 := block280016a4Arg1.
    block280016a4Value1 := block280016a4Value0.
    block280016a4Value2 := XmATTACHFORM.
    (block280016a4Value1) bottomAttachment: (block280016a4Value2).
    block280016a4Value3 := block280016a4Value0.
    (block280016a4Value3) bottomOffset: (0).
    block280016a4Value4 := block280016a4Value0.
    block280016a4Value5 := XmATTACHFORM.
    (block280016a4Value4) topAttachment: (block280016a4Value5).
    block280016a4Value6 := block280016a4Value0.
    (block280016a4Value6) topOffset: (0).
    block280016a4Value7 := block280016a4Value0.
    block280016a4Value8 := XmATTACHFORM.
    (block280016a4Value7) leftAttachment: (block280016a4Value8).
    block280016a4Value9 := block280016a4Value0.
    (block280016a4Value9) leftOffset: (0).
    block280016a4Value10 := block280016a4Value0.
    block280016a4Value11 := XmATTACHFORM.
    (block280016a4Value10) rightAttachment: (block280016a4Value11).
    block280016a4Value12 := (block280016a4Value0) rightOffset: (0).
    block280016a4Value12
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) updateContentsLocal.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

