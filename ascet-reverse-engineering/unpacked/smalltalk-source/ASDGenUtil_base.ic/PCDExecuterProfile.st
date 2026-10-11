"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDGenUtil_base.ic method 0x20000c98; bytecode file offset 0xee44"
!PCDExecuterProfile methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    entries := recoveredValue1.
    ^self
! !

"ASDGenUtil_base.ic method 0x20001a6c; bytecode file offset 0xfc1c"
!PCDExecuterProfile methodsFor: 'recovered'!
createProfileEntryKey: recoveredArg1 window: recoveredArg2 menu: recoveredArg3 item: recoveredArg4 icon: recoveredArg5 descirption: recoveredArg6 enable: recoveredArg7
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := PCDExecuterProfileEntry.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := recoveredArg5.
    recoveredValue8 := recoveredArg6.
    recoveredValue9 := recoveredArg7.
    (recoveredValue2) key: (recoveredValue3) window: (recoveredValue4) menu: (recoveredValue5) item: (recoveredValue6) icon: (recoveredValue7) description: (recoveredValue8) enable: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := recoveredArg1.
    (recoveredValue10) parse: (recoveredValue11).
    recoveredValue12 := entries.
    recoveredValue13 := recoveredLocal1.
    (recoveredValue12) add: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    ^recoveredValue14
! !

"ASDGenUtil_base.ic method 0x20001c7c; bytecode file offset 0xfe2c"
!PCDExecuterProfile methodsFor: 'recovered'!
createProfileEntryKey: recoveredArg1 window: recoveredArg2 menu: recoveredArg3 submenu: recoveredArg4 item: recoveredArg5 icon: recoveredArg6 descirption: recoveredArg7 enable: recoveredArg8
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := PCDExecuterProfileEntry.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := recoveredArg5.
    recoveredValue8 := recoveredArg6.
    recoveredValue9 := recoveredArg7.
    recoveredValue10 := recoveredArg8.
    (recoveredValue2) key: (recoveredValue3) window: (recoveredValue4) menu: (recoveredValue5) submenu: (recoveredValue6) item: (recoveredValue7) icon: (recoveredValue8) description: (recoveredValue9) enable: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredArg1.
    (recoveredValue11) parse: (recoveredValue12).
    recoveredValue13 := entries.
    recoveredValue14 := recoveredLocal1.
    (recoveredValue13) add: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    ^recoveredValue15
! !

"ASDGenUtil_base.ic method 0x2000277c; bytecode file offset 0x10938"
!PCDExecuterProfile methodsFor: 'recovered'!
removeQuotationMarks: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17Stack5 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17Stack3 := recoveredArg1.
            recoveredBlock17PC := 31.
        ].
        recoveredBlock17Step = 31 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Arg1.
            recoveredBlock17PC := 32.
        ].
        recoveredBlock17Step = 32 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) at: (recoveredBlock17Stack4).
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            recoveredBlock17Stack4 := [:block280010a0Arg1 | 
    | block280010a0Value0 block280010a0Value1 |
    block280010a0Value0 := block280010a0Arg1.
    block280010a0Value1 := (block280010a0Value0) ~= ($").
    block280010a0Value1
].
            recoveredBlock17PC := 35.
        ].
        recoveredBlock17Step = 35 ifTrue: [
            recoveredBlock17PC := 44.
        ].
        recoveredBlock17Step = 44 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) select: (recoveredBlock17Stack4).
            recoveredBlock17PC := 46.
        ].
        recoveredBlock17Step = 46 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2) put: (recoveredBlock17Stack3).
            recoveredBlock17PC := 48.
        ].
        recoveredBlock17Step = 48 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
    (recoveredValue4) keysDo: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDGenUtil_base.ic method 0x200058c0; bytecode file offset 0x13b08"
!PCDExecuterProfile methodsFor: 'recovered'!
parse: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_64767'.
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
            recoveredStack1 := 'Kli'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'Call_66699'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) reset.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := Log.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'Read files: '.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := EtasMainDatabaseCtrl.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) productDataPath.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'Executer'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := Log.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'in directory: '.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := '*.ini'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) findFileNames: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := EtasGeneralDllApi.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAppProgramPath.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := 'Executer'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := Log.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := 'in directory: '.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := '*.ini'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) findFileNames: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := 'Shikhar'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := 'EHI60119'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := [:recoveredBlock109Arg1 | 
    | recoveredBlock109Value0 recoveredBlock109Value1 recoveredBlock109Value2 recoveredBlock109Value3 recoveredBlock109Value4 recoveredBlock109Value5 recoveredBlock109Value6 recoveredBlock109Value7 recoveredBlock109Value8 |
    recoveredBlock109Value0 := WinProfile.
    recoveredBlock109Value1 := recoveredBlock109Arg1.
    recoveredBlock109Value2 := (recoveredBlock109Value0) create: (recoveredBlock109Value1).
    recoveredBlock109Value3 := recoveredBlock109Arg1.
    (self) parseIni: (recoveredBlock109Value2) fileName: (recoveredBlock109Value3).
    recoveredBlock109Value4 := Log.
    recoveredBlock109Value5 := recoveredBlock109Value4.
    recoveredBlock109Value6 := recoveredBlock109Arg1.
    recoveredBlock109Value7 := ('*') , (recoveredBlock109Value6).
    (recoveredBlock109Value5) nextPutAll: (recoveredBlock109Value7).
    recoveredBlock109Value8 := (recoveredBlock109Value4) cr.
    recoveredBlock109Value8
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := Log.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := 'Read entries (Window: Menu>Item [Key])'.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := entries.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := [:block28001130Arg1 :block28001130Arg2 | 
    | block28001130Stack0 block28001130Stack1 block28001130Stack2 block28001130Stack3 block28001130PC block28001130Step block28001130Done block28001130Result |
    block28001130Stack0 := self.
    block28001130PC := 4.
    block28001130Done := false.
    [block28001130Done not] whileTrue: [
        block28001130Step := block28001130PC.
        block28001130Step = 4 ifTrue: [
            block28001130Stack1 := block28001130Arg1.
            block28001130PC := 5.
        ].
        block28001130Step = 5 ifTrue: [
            block28001130Stack1 := (block28001130Stack1) window.
            block28001130PC := 7.
        ].
        block28001130Step = 7 ifTrue: [
            block28001130Stack2 := block28001130Arg2.
            block28001130PC := 8.
        ].
        block28001130Step = 8 ifTrue: [
            block28001130Stack2 := (block28001130Stack2) window.
            block28001130PC := 10.
        ].
        block28001130Step = 10 ifTrue: [
            block28001130Stack1 := (block28001130Stack1) < (block28001130Stack2).
            block28001130PC := 11.
        ].
        block28001130Step = 11 ifTrue: [
            (block28001130Stack1) ifTrue: [block28001130PC := 14] ifFalse: [block28001130PC := 18].
        ].
        block28001130Step = 14 ifTrue: [
            block28001130Stack1 := true.
            block28001130PC := 15.
        ].
        block28001130Step = 15 ifTrue: [
            block28001130PC := 39.
        ].
        block28001130Step = 18 ifTrue: [
            block28001130Stack1 := block28001130Arg1.
            block28001130PC := 19.
        ].
        block28001130Step = 19 ifTrue: [
            block28001130Stack1 := (block28001130Stack1) menu.
            block28001130PC := 21.
        ].
        block28001130Step = 21 ifTrue: [
            block28001130Stack2 := block28001130Arg2.
            block28001130PC := 22.
        ].
        block28001130Step = 22 ifTrue: [
            block28001130Stack2 := (block28001130Stack2) menu.
            block28001130PC := 24.
        ].
        block28001130Step = 24 ifTrue: [
            block28001130Stack1 := (block28001130Stack1) < (block28001130Stack2).
            block28001130PC := 25.
        ].
        block28001130Step = 25 ifTrue: [
            (block28001130Stack1) ifTrue: [block28001130PC := 28] ifFalse: [block28001130PC := 32].
        ].
        block28001130Step = 28 ifTrue: [
            block28001130Stack1 := true.
            block28001130PC := 29.
        ].
        block28001130Step = 29 ifTrue: [
            block28001130PC := 39.
        ].
        block28001130Step = 32 ifTrue: [
            block28001130Stack1 := block28001130Arg1.
            block28001130PC := 33.
        ].
        block28001130Step = 33 ifTrue: [
            block28001130Stack1 := (block28001130Stack1) window.
            block28001130PC := 35.
        ].
        block28001130Step = 35 ifTrue: [
            block28001130Stack2 := block28001130Arg2.
            block28001130PC := 36.
        ].
        block28001130Step = 36 ifTrue: [
            block28001130Stack2 := (block28001130Stack2) window.
            block28001130PC := 38.
        ].
        block28001130Step = 38 ifTrue: [
            block28001130Stack1 := (block28001130Stack1) < (block28001130Stack2).
            block28001130PC := 39.
        ].
        block28001130Step = 39 ifTrue: [
            block28001130Result := block28001130Stack1.
            block28001130Done := true.
        ].
    ].
    block28001130Result
].
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := [:block28001154Arg1 | 
    | block28001154Value0 block28001154Value1 block28001154Value2 block28001154Value3 block28001154Value4 block28001154Value5 block28001154Value6 block28001154Value7 block28001154Value8 block28001154Value9 block28001154Value10 block28001154Value11 block28001154Value12 block28001154Value13 block28001154Value14 block28001154Value15 block28001154Value16 block28001154Value17 |
    block28001154Value0 := Log.
    block28001154Value1 := block28001154Value0.
    block28001154Value2 := block28001154Arg1.
    block28001154Value3 := (block28001154Value2) window.
    block28001154Value4 := (block28001154Value3) , (': ').
    block28001154Value5 := block28001154Arg1.
    block28001154Value6 := (block28001154Value5) menu.
    block28001154Value7 := (block28001154Value4) , (block28001154Value6).
    block28001154Value8 := (block28001154Value7) , ('>').
    block28001154Value9 := block28001154Arg1.
    block28001154Value10 := (block28001154Value9) item.
    block28001154Value11 := (block28001154Value8) , (block28001154Value10).
    block28001154Value12 := (block28001154Value11) , ('  [').
    block28001154Value13 := block28001154Arg1.
    block28001154Value14 := (block28001154Value13) key.
    block28001154Value15 := (block28001154Value12) , (block28001154Value14).
    block28001154Value16 := (block28001154Value15) , (']').
    (block28001154Value1) nextPutAll: (block28001154Value16).
    block28001154Value17 := (block28001154Value0) cr.
    block28001154Value17
].
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := Log.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x20009950; bytecode file offset 0x17bd0"
!PCDExecuterProfile methodsFor: 'recovered'!
parseIni: recoveredArg1 fileName: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := RBBcrtl32DLL.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) splitPath: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (recoveredValue4) at: (1).
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (recoveredValue6) at: (2).
    recoveredValue8 := (recoveredValue5) , (recoveredValue7).
    recoveredLocal3 := recoveredValue8.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) sectionNames.
    recoveredValue11 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Local1 recoveredBlock36Local2 recoveredBlock36Stack0 recoveredBlock36Stack1 recoveredBlock36Stack2 recoveredBlock36Stack3 recoveredBlock36Stack4 recoveredBlock36Stack5 recoveredBlock36Stack6 recoveredBlock36Stack7 recoveredBlock36Stack8 recoveredBlock36Stack9 recoveredBlock36PC recoveredBlock36Step recoveredBlock36Done recoveredBlock36Result |
    recoveredBlock36Stack0 := self.
    recoveredBlock36PC := 42.
    recoveredBlock36Done := false.
    [recoveredBlock36Done not] whileTrue: [
        recoveredBlock36Step := recoveredBlock36PC.
        recoveredBlock36Step = 42 ifTrue: [
            recoveredBlock36Stack1 := recoveredArg1.
            recoveredBlock36PC := 45.
        ].
        recoveredBlock36Step = 45 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) sectionEntries.
            recoveredBlock36PC := 47.
        ].
        recoveredBlock36Step = 47 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 50.
        ].
        recoveredBlock36Step = 50 ifTrue: [
            recoveredBlock36Stack3 := [
    | block28001178Value0 block28001178Value1 |
    block28001178Value0 := Dictionary.
    block28001178Value1 := (block28001178Value0) new.
    block28001178Value1
].
            recoveredBlock36PC := 52.
        ].
        recoveredBlock36Step = 52 ifTrue: [
            recoveredBlock36PC := 60.
        ].
        recoveredBlock36Step = 60 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) at: (recoveredBlock36Stack2) ifAbsent: (recoveredBlock36Stack3).
            recoveredBlock36PC := 62.
        ].
        recoveredBlock36Step = 62 ifTrue: [
            recoveredBlock36Local2 := recoveredBlock36Stack1.
            recoveredBlock36PC := 65.
        ].
        recoveredBlock36Step = 65 ifTrue: [
            recoveredBlock36Stack1 := recoveredBlock36Local2.
            recoveredBlock36PC := 68.
        ].
        recoveredBlock36Step = 68 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) removeQuotationMarks: (recoveredBlock36Stack1).
            recoveredBlock36PC := 70.
        ].
        recoveredBlock36Step = 70 ifTrue: [
            recoveredBlock36Local2 := recoveredBlock36Stack0.
            recoveredBlock36PC := 73.
        ].
        recoveredBlock36Step = 73 ifTrue: [
            recoveredBlock36Stack0 := recoveredBlock36Arg1.
            recoveredBlock36PC := 76.
        ].
        recoveredBlock36Step = 76 ifTrue: [
            recoveredBlock36Stack1 := 'SHUTDOWN'.
            recoveredBlock36PC := 78.
        ].
        recoveredBlock36Step = 78 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) includesSubstring: (recoveredBlock36Stack1).
            recoveredBlock36PC := 80.
        ].
        recoveredBlock36Step = 80 ifTrue: [
            (recoveredBlock36Stack0) ifTrue: [recoveredBlock36PC := 84] ifFalse: [recoveredBlock36PC := 178].
        ].
        recoveredBlock36Step = 84 ifTrue: [
            recoveredBlock36Stack0 := false.
            recoveredBlock36PC := 85.
        ].
        recoveredBlock36Step = 85 ifTrue: [
            recoveredBlock36Local1 := recoveredBlock36Stack0.
            recoveredBlock36PC := 88.
        ].
        recoveredBlock36Step = 88 ifTrue: [
            recoveredBlock36Stack0 := recoveredBlock36Local2.
            recoveredBlock36PC := 91.
        ].
        recoveredBlock36Step = 91 ifTrue: [
            recoveredBlock36Stack1 := 'FILE'.
            recoveredBlock36PC := 93.
        ].
        recoveredBlock36Step = 93 ifTrue: [
            recoveredBlock36Stack2 := [
    recoveredBlock36Local1 := true.
    ''
].
            recoveredBlock36PC := 107.
        ].
        recoveredBlock36Step = 107 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) at: (recoveredBlock36Stack1) ifAbsent: (recoveredBlock36Stack2).
            recoveredBlock36PC := 109.
        ].
        recoveredBlock36Step = 109 ifTrue: [
            recoveredLocal6 := recoveredBlock36Stack0.
            recoveredBlock36PC := 112.
        ].
        recoveredBlock36Step = 112 ifTrue: [
            recoveredBlock36Stack0 := recoveredBlock36Local1.
            recoveredBlock36PC := 115.
        ].
        recoveredBlock36Step = 115 ifTrue: [
            (recoveredBlock36Stack0) ifTrue: [recoveredBlock36PC := 118] ifFalse: [recoveredBlock36PC := 146].
        ].
        recoveredBlock36Step = 118 ifTrue: [
            recoveredBlock36Stack0 := false.
            recoveredBlock36PC := 119.
        ].
        recoveredBlock36Step = 119 ifTrue: [
            recoveredBlock36Local1 := recoveredBlock36Stack0.
            recoveredBlock36PC := 122.
        ].
        recoveredBlock36Step = 122 ifTrue: [
            recoveredBlock36Stack0 := recoveredBlock36Local2.
            recoveredBlock36PC := 125.
        ].
        recoveredBlock36Step = 125 ifTrue: [
            recoveredBlock36Stack1 := 'EXECUTE_FILE_ONLY'.
            recoveredBlock36PC := 127.
        ].
        recoveredBlock36Step = 127 ifTrue: [
            recoveredBlock36Stack2 := [
    recoveredBlock36Local1 := true.
    ''
].
            recoveredBlock36PC := 141.
        ].
        recoveredBlock36Step = 141 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) at: (recoveredBlock36Stack1) ifAbsent: (recoveredBlock36Stack2).
            recoveredBlock36PC := 143.
        ].
        recoveredBlock36Step = 143 ifTrue: [
            recoveredLocal6 := recoveredBlock36Stack0.
            recoveredBlock36PC := 146.
        ].
        recoveredBlock36Step = 146 ifTrue: [
            recoveredBlock36Stack0 := PCDExecuterFile.
            recoveredBlock36PC := 148.
        ].
        recoveredBlock36Step = 148 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal3.
            recoveredBlock36PC := 151.
        ].
        recoveredBlock36Step = 151 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) create: (recoveredBlock36Stack1).
            recoveredBlock36PC := 153.
        ].
        recoveredBlock36Step = 153 ifTrue: [
            recoveredLocal4 := recoveredBlock36Stack0.
            recoveredBlock36PC := 156.
        ].
        recoveredBlock36Step = 156 ifTrue: [
            recoveredBlock36Stack0 := recoveredLocal4.
            recoveredBlock36PC := 159.
        ].
        recoveredBlock36Step = 159 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal6.
            recoveredBlock36PC := 162.
        ].
        recoveredBlock36Step = 162 ifTrue: [
            (recoveredBlock36Stack0) parse: (recoveredBlock36Stack1).
            recoveredBlock36PC := 164.
        ].
        recoveredBlock36Step = 164 ifTrue: [
            recoveredBlock36Stack0 := PCDExecuter.
            recoveredBlock36PC := 166.
        ].
        recoveredBlock36Step = 166 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal4.
            recoveredBlock36PC := 169.
        ].
        recoveredBlock36Step = 169 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) shutDown: (recoveredBlock36Stack1).
            recoveredBlock36PC := 171.
        ].
        recoveredBlock36Step = 171 ifTrue: [
            recoveredBlock36Stack1 := nil.
            recoveredBlock36PC := 172.
        ].
        recoveredBlock36Step = 172 ifTrue: [
            recoveredBlock36Local1 := recoveredBlock36Stack1.
            recoveredBlock36PC := 175.
        ].
        recoveredBlock36Step = 175 ifTrue: [
            recoveredBlock36PC := 883.
        ].
        recoveredBlock36Step = 178 ifTrue: [
            recoveredBlock36Stack0 := false.
            recoveredBlock36PC := 179.
        ].
        recoveredBlock36Step = 179 ifTrue: [
            recoveredBlock36Local1 := recoveredBlock36Stack0.
            recoveredBlock36PC := 182.
        ].
        recoveredBlock36Step = 182 ifTrue: [
            recoveredBlock36Stack0 := recoveredBlock36Arg1.
            recoveredBlock36PC := 185.
        ].
        recoveredBlock36Step = 185 ifTrue: [
            recoveredBlock36Stack1 := 'AUTOSTART'.
            recoveredBlock36PC := 187.
        ].
        recoveredBlock36Step = 187 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) includesSubstring: (recoveredBlock36Stack1).
            recoveredBlock36PC := 189.
        ].
        recoveredBlock36Step = 189 ifTrue: [
            (recoveredBlock36Stack0) ifTrue: [recoveredBlock36PC := 192] ifFalse: [recoveredBlock36PC := 278].
        ].
        recoveredBlock36Step = 192 ifTrue: [
            recoveredBlock36Stack0 := recoveredBlock36Local2.
            recoveredBlock36PC := 195.
        ].
        recoveredBlock36Step = 195 ifTrue: [
            recoveredBlock36Stack1 := 'FILE'.
            recoveredBlock36PC := 197.
        ].
        recoveredBlock36Step = 197 ifTrue: [
            recoveredBlock36Stack2 := [
    recoveredBlock36Local1 := true.
    ''
].
            recoveredBlock36PC := 211.
        ].
        recoveredBlock36Step = 211 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) at: (recoveredBlock36Stack1) ifAbsent: (recoveredBlock36Stack2).
            recoveredBlock36PC := 213.
        ].
        recoveredBlock36Step = 213 ifTrue: [
            recoveredLocal6 := recoveredBlock36Stack0.
            recoveredBlock36PC := 216.
        ].
        recoveredBlock36Step = 216 ifTrue: [
            recoveredBlock36Stack0 := recoveredBlock36Local1.
            recoveredBlock36PC := 219.
        ].
        recoveredBlock36Step = 219 ifTrue: [
            (recoveredBlock36Stack0) ifTrue: [recoveredBlock36PC := 222] ifFalse: [recoveredBlock36PC := 250].
        ].
        recoveredBlock36Step = 222 ifTrue: [
            recoveredBlock36Stack0 := false.
            recoveredBlock36PC := 223.
        ].
        recoveredBlock36Step = 223 ifTrue: [
            recoveredBlock36Local1 := recoveredBlock36Stack0.
            recoveredBlock36PC := 226.
        ].
        recoveredBlock36Step = 226 ifTrue: [
            recoveredBlock36Stack0 := recoveredBlock36Local2.
            recoveredBlock36PC := 229.
        ].
        recoveredBlock36Step = 229 ifTrue: [
            recoveredBlock36Stack1 := 'EXECUTE_FILE_ONLY'.
            recoveredBlock36PC := 231.
        ].
        recoveredBlock36Step = 231 ifTrue: [
            recoveredBlock36Stack2 := [
    recoveredBlock36Local1 := true.
    ''
].
            recoveredBlock36PC := 245.
        ].
        recoveredBlock36Step = 245 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) at: (recoveredBlock36Stack1) ifAbsent: (recoveredBlock36Stack2).
            recoveredBlock36PC := 247.
        ].
        recoveredBlock36Step = 247 ifTrue: [
            recoveredLocal6 := recoveredBlock36Stack0.
            recoveredBlock36PC := 250.
        ].
        recoveredBlock36Step = 250 ifTrue: [
            recoveredBlock36Stack0 := PCDExecuterFile.
            recoveredBlock36PC := 252.
        ].
        recoveredBlock36Step = 252 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal3.
            recoveredBlock36PC := 255.
        ].
        recoveredBlock36Step = 255 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) create: (recoveredBlock36Stack1).
            recoveredBlock36PC := 257.
        ].
        recoveredBlock36Step = 257 ifTrue: [
            recoveredLocal4 := recoveredBlock36Stack0.
            recoveredBlock36PC := 260.
        ].
        recoveredBlock36Step = 260 ifTrue: [
            recoveredBlock36Stack0 := recoveredLocal4.
            recoveredBlock36PC := 263.
        ].
        recoveredBlock36Step = 263 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal6.
            recoveredBlock36PC := 266.
        ].
        recoveredBlock36Step = 266 ifTrue: [
            (recoveredBlock36Stack0) parse: (recoveredBlock36Stack1).
            recoveredBlock36PC := 268.
        ].
        recoveredBlock36Step = 268 ifTrue: [
            recoveredBlock36Stack0 := PCDExecuter.
            recoveredBlock36PC := 270.
        ].
        recoveredBlock36Step = 270 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal4.
            recoveredBlock36PC := 273.
        ].
        recoveredBlock36Step = 273 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) autoStart: (recoveredBlock36Stack1).
            recoveredBlock36PC := 275.
        ].
        recoveredBlock36Step = 275 ifTrue: [
            recoveredBlock36PC := 879.
        ].
        recoveredBlock36Step = 278 ifTrue: [
            recoveredBlock36Stack0 := false.
            recoveredBlock36PC := 279.
        ].
        recoveredBlock36Step = 279 ifTrue: [
            recoveredBlock36Local1 := recoveredBlock36Stack0.
            recoveredBlock36PC := 282.
        ].
        recoveredBlock36Step = 282 ifTrue: [
            recoveredBlock36Stack0 := recoveredBlock36Local2.
            recoveredBlock36PC := 285.
        ].
        recoveredBlock36Step = 285 ifTrue: [
            recoveredBlock36Stack1 := 'WINDOW'.
            recoveredBlock36PC := 287.
        ].
        recoveredBlock36Step = 287 ifTrue: [
            recoveredBlock36Stack2 := [
    recoveredBlock36Local1 := true.
    ''
].
            recoveredBlock36PC := 301.
        ].
        recoveredBlock36Step = 301 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) at: (recoveredBlock36Stack1) ifAbsent: (recoveredBlock36Stack2).
            recoveredBlock36PC := 303.
        ].
        recoveredBlock36Step = 303 ifTrue: [
            recoveredLocal13 := recoveredBlock36Stack0.
            recoveredBlock36PC := 306.
        ].
        recoveredBlock36Step = 306 ifTrue: [
            recoveredBlock36Stack0 := recoveredBlock36Local2.
            recoveredBlock36PC := 309.
        ].
        recoveredBlock36Step = 309 ifTrue: [
            recoveredBlock36Stack1 := 'MENU'.
            recoveredBlock36PC := 311.
        ].
        recoveredBlock36Step = 311 ifTrue: [
            recoveredBlock36Stack2 := [
    recoveredBlock36Local1 := true.
    ''
].
            recoveredBlock36PC := 325.
        ].
        recoveredBlock36Step = 325 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) at: (recoveredBlock36Stack1) ifAbsent: (recoveredBlock36Stack2).
            recoveredBlock36PC := 327.
        ].
        recoveredBlock36Step = 327 ifTrue: [
            recoveredLocal12 := recoveredBlock36Stack0.
            recoveredBlock36PC := 330.
        ].
        recoveredBlock36Step = 330 ifTrue: [
            recoveredBlock36Stack0 := recoveredBlock36Local2.
            recoveredBlock36PC := 333.
        ].
        recoveredBlock36Step = 333 ifTrue: [
            recoveredBlock36Stack1 := 'SUBMENU'.
            recoveredBlock36PC := 335.
        ].
        recoveredBlock36Step = 335 ifTrue: [
            recoveredBlock36Stack2 := [
    ''
].
            recoveredBlock36PC := 337.
        ].
        recoveredBlock36Step = 337 ifTrue: [
            recoveredBlock36PC := 343.
        ].
        recoveredBlock36Step = 343 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) at: (recoveredBlock36Stack1) ifAbsent: (recoveredBlock36Stack2).
            recoveredBlock36PC := 345.
        ].
        recoveredBlock36Step = 345 ifTrue: [
            recoveredLocal11 := recoveredBlock36Stack0.
            recoveredBlock36PC := 348.
        ].
        recoveredBlock36Step = 348 ifTrue: [
            recoveredBlock36Stack0 := recoveredBlock36Local2.
            recoveredBlock36PC := 351.
        ].
        recoveredBlock36Step = 351 ifTrue: [
            recoveredBlock36Stack1 := 'ITEM'.
            recoveredBlock36PC := 353.
        ].
        recoveredBlock36Step = 353 ifTrue: [
            recoveredBlock36Stack2 := [
    recoveredBlock36Local1 := true.
    ''
].
            recoveredBlock36PC := 367.
        ].
        recoveredBlock36Step = 367 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) at: (recoveredBlock36Stack1) ifAbsent: (recoveredBlock36Stack2).
            recoveredBlock36PC := 369.
        ].
        recoveredBlock36Step = 369 ifTrue: [
            recoveredLocal10 := recoveredBlock36Stack0.
            recoveredBlock36PC := 372.
        ].
        recoveredBlock36Step = 372 ifTrue: [
            recoveredBlock36Stack0 := recoveredBlock36Local2.
            recoveredBlock36PC := 375.
        ].
        recoveredBlock36Step = 375 ifTrue: [
            recoveredBlock36Stack1 := 'ICON'.
            recoveredBlock36PC := 377.
        ].
        recoveredBlock36Step = 377 ifTrue: [
            recoveredBlock36Stack2 := [].
            recoveredBlock36PC := 379.
        ].
        recoveredBlock36Step = 379 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) at: (recoveredBlock36Stack1) ifAbsent: (recoveredBlock36Stack2).
            recoveredBlock36PC := 381.
        ].
        recoveredBlock36Step = 381 ifTrue: [
            recoveredLocal9 := recoveredBlock36Stack0.
            recoveredBlock36PC := 384.
        ].
        recoveredBlock36Step = 384 ifTrue: [
            recoveredBlock36Stack0 := recoveredBlock36Local2.
            recoveredBlock36PC := 387.
        ].
        recoveredBlock36Step = 387 ifTrue: [
            recoveredBlock36Stack1 := 'DESCRIPTION'.
            recoveredBlock36PC := 389.
        ].
        recoveredBlock36Step = 389 ifTrue: [
            recoveredBlock36Stack2 := [
    'no description'
].
            recoveredBlock36PC := 391.
        ].
        recoveredBlock36Step = 391 ifTrue: [
            recoveredBlock36PC := 397.
        ].
        recoveredBlock36Step = 397 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) at: (recoveredBlock36Stack1) ifAbsent: (recoveredBlock36Stack2).
            recoveredBlock36PC := 399.
        ].
        recoveredBlock36Step = 399 ifTrue: [
            recoveredLocal8 := recoveredBlock36Stack0.
            recoveredBlock36PC := 402.
        ].
        recoveredBlock36Step = 402 ifTrue: [
            recoveredBlock36Stack0 := recoveredBlock36Local2.
            recoveredBlock36PC := 405.
        ].
        recoveredBlock36Step = 405 ifTrue: [
            recoveredBlock36Stack1 := 'ENABLE'.
            recoveredBlock36PC := 407.
        ].
        recoveredBlock36Step = 407 ifTrue: [
            recoveredBlock36Stack2 := [
    ''
].
            recoveredBlock36PC := 409.
        ].
        recoveredBlock36Step = 409 ifTrue: [
            recoveredBlock36PC := 415.
        ].
        recoveredBlock36Step = 415 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) at: (recoveredBlock36Stack1) ifAbsent: (recoveredBlock36Stack2).
            recoveredBlock36PC := 417.
        ].
        recoveredBlock36Step = 417 ifTrue: [
            recoveredBlock36Stack1 := recoveredBlock36Stack0.
            recoveredBlock36PC := 418.
        ].
        recoveredBlock36Step = 418 ifTrue: [
            recoveredLocal6 := recoveredBlock36Stack1.
            recoveredBlock36PC := 421.
        ].
        recoveredBlock36Step = 421 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) isEmpty.
            recoveredBlock36PC := 423.
        ].
        recoveredBlock36Step = 423 ifTrue: [
            (recoveredBlock36Stack0) ifTrue: [recoveredBlock36PC := 444] ifFalse: [recoveredBlock36PC := 426].
        ].
        recoveredBlock36Step = 426 ifTrue: [
            recoveredBlock36Stack0 := PCDExecuterFile.
            recoveredBlock36PC := 428.
        ].
        recoveredBlock36Step = 428 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal3.
            recoveredBlock36PC := 431.
        ].
        recoveredBlock36Step = 431 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) create: (recoveredBlock36Stack1).
            recoveredBlock36PC := 433.
        ].
        recoveredBlock36Step = 433 ifTrue: [
            recoveredLocal7 := recoveredBlock36Stack0.
            recoveredBlock36PC := 436.
        ].
        recoveredBlock36Step = 436 ifTrue: [
            recoveredBlock36Stack0 := recoveredLocal7.
            recoveredBlock36PC := 439.
        ].
        recoveredBlock36Step = 439 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal6.
            recoveredBlock36PC := 442.
        ].
        recoveredBlock36Step = 442 ifTrue: [
            (recoveredBlock36Stack0) parse: (recoveredBlock36Stack1).
            recoveredBlock36PC := 444.
        ].
        recoveredBlock36Step = 444 ifTrue: [
            recoveredBlock36Stack0 := recoveredBlock36Local2.
            recoveredBlock36PC := 447.
        ].
        recoveredBlock36Step = 447 ifTrue: [
            recoveredBlock36Stack1 := 'SEPARATOR'.
            recoveredBlock36PC := 449.
        ].
        recoveredBlock36Step = 449 ifTrue: [
            recoveredBlock36Stack2 := [
    ''
].
            recoveredBlock36PC := 451.
        ].
        recoveredBlock36Step = 451 ifTrue: [
            recoveredBlock36PC := 457.
        ].
        recoveredBlock36Step = 457 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) at: (recoveredBlock36Stack1) ifAbsent: (recoveredBlock36Stack2).
            recoveredBlock36PC := 459.
        ].
        recoveredBlock36Step = 459 ifTrue: [
            recoveredLocal1 := recoveredBlock36Stack0.
            recoveredBlock36PC := 462.
        ].
        recoveredBlock36Step = 462 ifTrue: [
            recoveredBlock36Stack0 := recoveredBlock36Local1.
            recoveredBlock36PC := 465.
        ].
        recoveredBlock36Step = 465 ifTrue: [
            (recoveredBlock36Stack0) ifTrue: [recoveredBlock36PC := 468] ifFalse: [recoveredBlock36PC := 554].
        ].
        recoveredBlock36Step = 468 ifTrue: [
            recoveredBlock36Stack0 := Log.
            recoveredBlock36PC := 470.
        ].
        recoveredBlock36Step = 470 ifTrue: [
            recoveredBlock36Stack1 := recoveredBlock36Stack0.
            recoveredBlock36PC := 471.
        ].
        recoveredBlock36Step = 471 ifTrue: [
            recoveredBlock36Stack2 := 'ERROR in '.
            recoveredBlock36PC := 473.
        ].
        recoveredBlock36Step = 473 ifTrue: [
            recoveredBlock36Stack3 := recoveredArg2.
            recoveredBlock36PC := 476.
        ].
        recoveredBlock36Step = 476 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) , (recoveredBlock36Stack3).
            recoveredBlock36PC := 478.
        ].
        recoveredBlock36Step = 478 ifTrue: [
            recoveredBlock36Stack3 := ' empty entry (see below):'.
            recoveredBlock36PC := 480.
        ].
        recoveredBlock36Step = 480 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) , (recoveredBlock36Stack3).
            recoveredBlock36PC := 482.
        ].
        recoveredBlock36Step = 482 ifTrue: [
            (recoveredBlock36Stack1) nextPutAll: (recoveredBlock36Stack2).
            recoveredBlock36Stack1 := recoveredBlock36Stack0.
            recoveredBlock36PC := 485.
        ].
        recoveredBlock36Step = 485 ifTrue: [
            (recoveredBlock36Stack1) cr.
            recoveredBlock36Stack1 := recoveredBlock36Stack0.
            recoveredBlock36PC := 488.
        ].
        recoveredBlock36Step = 488 ifTrue: [
            (recoveredBlock36Stack1) tab.
            recoveredBlock36Stack1 := recoveredBlock36Stack0.
            recoveredBlock36PC := 491.
        ].
        recoveredBlock36Step = 491 ifTrue: [
            recoveredBlock36Stack2 := 'Window = '.
            recoveredBlock36PC := 493.
        ].
        recoveredBlock36Step = 493 ifTrue: [
            recoveredBlock36Stack3 := recoveredLocal13.
            recoveredBlock36PC := 496.
        ].
        recoveredBlock36Step = 496 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) , (recoveredBlock36Stack3).
            recoveredBlock36PC := 498.
        ].
        recoveredBlock36Step = 498 ifTrue: [
            (recoveredBlock36Stack1) nextPutAll: (recoveredBlock36Stack2).
            recoveredBlock36Stack1 := recoveredBlock36Stack0.
            recoveredBlock36PC := 501.
        ].
        recoveredBlock36Step = 501 ifTrue: [
            (recoveredBlock36Stack1) cr.
            recoveredBlock36Stack1 := recoveredBlock36Stack0.
            recoveredBlock36PC := 504.
        ].
        recoveredBlock36Step = 504 ifTrue: [
            (recoveredBlock36Stack1) tab.
            recoveredBlock36Stack1 := recoveredBlock36Stack0.
            recoveredBlock36PC := 507.
        ].
        recoveredBlock36Step = 507 ifTrue: [
            recoveredBlock36Stack2 := 'Menu   = '.
            recoveredBlock36PC := 509.
        ].
        recoveredBlock36Step = 509 ifTrue: [
            recoveredBlock36Stack3 := recoveredLocal12.
            recoveredBlock36PC := 512.
        ].
        recoveredBlock36Step = 512 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) , (recoveredBlock36Stack3).
            recoveredBlock36PC := 514.
        ].
        recoveredBlock36Step = 514 ifTrue: [
            (recoveredBlock36Stack1) nextPutAll: (recoveredBlock36Stack2).
            recoveredBlock36Stack1 := recoveredBlock36Stack0.
            recoveredBlock36PC := 517.
        ].
        recoveredBlock36Step = 517 ifTrue: [
            (recoveredBlock36Stack1) cr.
            recoveredBlock36Stack1 := recoveredBlock36Stack0.
            recoveredBlock36PC := 520.
        ].
        recoveredBlock36Step = 520 ifTrue: [
            (recoveredBlock36Stack1) tab.
            recoveredBlock36Stack1 := recoveredBlock36Stack0.
            recoveredBlock36PC := 523.
        ].
        recoveredBlock36Step = 523 ifTrue: [
            recoveredBlock36Stack2 := 'SubMenu   = '.
            recoveredBlock36PC := 525.
        ].
        recoveredBlock36Step = 525 ifTrue: [
            recoveredBlock36Stack3 := recoveredLocal11.
            recoveredBlock36PC := 528.
        ].
        recoveredBlock36Step = 528 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) , (recoveredBlock36Stack3).
            recoveredBlock36PC := 530.
        ].
        recoveredBlock36Step = 530 ifTrue: [
            (recoveredBlock36Stack1) nextPutAll: (recoveredBlock36Stack2).
            recoveredBlock36Stack1 := recoveredBlock36Stack0.
            recoveredBlock36PC := 533.
        ].
        recoveredBlock36Step = 533 ifTrue: [
            (recoveredBlock36Stack1) cr.
            recoveredBlock36Stack1 := recoveredBlock36Stack0.
            recoveredBlock36PC := 536.
        ].
        recoveredBlock36Step = 536 ifTrue: [
            (recoveredBlock36Stack1) tab.
            recoveredBlock36Stack1 := recoveredBlock36Stack0.
            recoveredBlock36PC := 539.
        ].
        recoveredBlock36Step = 539 ifTrue: [
            recoveredBlock36Stack2 := 'Item   = '.
            recoveredBlock36PC := 541.
        ].
        recoveredBlock36Step = 541 ifTrue: [
            recoveredBlock36Stack3 := recoveredLocal10.
            recoveredBlock36PC := 544.
        ].
        recoveredBlock36Step = 544 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) , (recoveredBlock36Stack3).
            recoveredBlock36PC := 546.
        ].
        recoveredBlock36Step = 546 ifTrue: [
            (recoveredBlock36Stack1) nextPutAll: (recoveredBlock36Stack2).
            recoveredBlock36PC := 548.
        ].
        recoveredBlock36Step = 548 ifTrue: [
            (recoveredBlock36Stack0) cr.
            recoveredBlock36PC := 550.
        ].
        recoveredBlock36Step = 550 ifTrue: [
            recoveredBlock36PC := 775.
        ].
        recoveredBlock36Step = 554 ifTrue: [
            recoveredBlock36Stack0 := recoveredLocal1.
            recoveredBlock36PC := 557.
        ].
        recoveredBlock36Step = 557 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) asLowercase.
            recoveredBlock36PC := 559.
        ].
        recoveredBlock36Step = 559 ifTrue: [
            recoveredBlock36Stack1 := 'before'.
            recoveredBlock36PC := 561.
        ].
        recoveredBlock36Step = 561 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) = (recoveredBlock36Stack1).
            recoveredBlock36PC := 562.
        ].
        recoveredBlock36Step = 562 ifTrue: [
            (recoveredBlock36Stack0) ifTrue: [recoveredBlock36PC := 566] ifFalse: [recoveredBlock36PC := 629].
        ].
        recoveredBlock36Step = 566 ifTrue: [
            recoveredBlock36Stack0 := recoveredLocal11.
            recoveredBlock36PC := 569.
        ].
        recoveredBlock36Step = 569 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) isEmpty.
            recoveredBlock36PC := 571.
        ].
        recoveredBlock36Step = 571 ifTrue: [
            (recoveredBlock36Stack0) ifTrue: [recoveredBlock36PC := 574] ifFalse: [recoveredBlock36PC := 602].
        ].
        recoveredBlock36Step = 574 ifTrue: [
            recoveredBlock36Stack0 := self.
            recoveredBlock36PC := 575.
        ].
        recoveredBlock36Step = 575 ifTrue: [
            recoveredBlock36Stack1 := recoveredBlock36Arg1.
            recoveredBlock36PC := 578.
        ].
        recoveredBlock36Step = 578 ifTrue: [
            recoveredBlock36Stack2 := recoveredLocal13.
            recoveredBlock36PC := 581.
        ].
        recoveredBlock36Step = 581 ifTrue: [
            recoveredBlock36Stack3 := recoveredLocal12.
            recoveredBlock36PC := 584.
        ].
        recoveredBlock36Step = 584 ifTrue: [
            recoveredBlock36Stack4 := ''.
            recoveredBlock36PC := 586.
        ].
        recoveredBlock36Step = 586 ifTrue: [
            recoveredBlock36Stack5 := recoveredLocal9.
            recoveredBlock36PC := 589.
        ].
        recoveredBlock36Step = 589 ifTrue: [
            recoveredBlock36Stack6 := recoveredLocal8.
            recoveredBlock36PC := 592.
        ].
        recoveredBlock36Step = 592 ifTrue: [
            recoveredBlock36Stack7 := recoveredLocal7.
            recoveredBlock36PC := 595.
        ].
        recoveredBlock36Step = 595 ifTrue: [
            (recoveredBlock36Stack0) createProfileEntryKey: (recoveredBlock36Stack1) window: (recoveredBlock36Stack2) menu: (recoveredBlock36Stack3) item: (recoveredBlock36Stack4) icon: (recoveredBlock36Stack5) descirption: (recoveredBlock36Stack6) enable: (recoveredBlock36Stack7).
            recoveredBlock36PC := 598.
        ].
        recoveredBlock36Step = 598 ifTrue: [
            recoveredBlock36PC := 629.
        ].
        recoveredBlock36Step = 602 ifTrue: [
            recoveredBlock36Stack0 := self.
            recoveredBlock36PC := 603.
        ].
        recoveredBlock36Step = 603 ifTrue: [
            recoveredBlock36Stack1 := recoveredBlock36Arg1.
            recoveredBlock36PC := 606.
        ].
        recoveredBlock36Step = 606 ifTrue: [
            recoveredBlock36Stack2 := recoveredLocal13.
            recoveredBlock36PC := 609.
        ].
        recoveredBlock36Step = 609 ifTrue: [
            recoveredBlock36Stack3 := recoveredLocal12.
            recoveredBlock36PC := 612.
        ].
        recoveredBlock36Step = 612 ifTrue: [
            recoveredBlock36Stack4 := recoveredLocal11.
            recoveredBlock36PC := 615.
        ].
        recoveredBlock36Step = 615 ifTrue: [
            recoveredBlock36Stack5 := ''.
            recoveredBlock36PC := 617.
        ].
        recoveredBlock36Step = 617 ifTrue: [
            recoveredBlock36Stack6 := recoveredLocal9.
            recoveredBlock36PC := 620.
        ].
        recoveredBlock36Step = 620 ifTrue: [
            recoveredBlock36Stack7 := recoveredLocal8.
            recoveredBlock36PC := 623.
        ].
        recoveredBlock36Step = 623 ifTrue: [
            recoveredBlock36Stack8 := recoveredLocal7.
            recoveredBlock36PC := 626.
        ].
        recoveredBlock36Step = 626 ifTrue: [
            (recoveredBlock36Stack0) createProfileEntryKey: (recoveredBlock36Stack1) window: (recoveredBlock36Stack2) menu: (recoveredBlock36Stack3) submenu: (recoveredBlock36Stack4) item: (recoveredBlock36Stack5) icon: (recoveredBlock36Stack6) descirption: (recoveredBlock36Stack7) enable: (recoveredBlock36Stack8).
            recoveredBlock36PC := 629.
        ].
        recoveredBlock36Step = 629 ifTrue: [
            recoveredBlock36Stack0 := recoveredLocal11.
            recoveredBlock36PC := 632.
        ].
        recoveredBlock36Step = 632 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) isEmpty.
            recoveredBlock36PC := 634.
        ].
        recoveredBlock36Step = 634 ifTrue: [
            (recoveredBlock36Stack0) ifTrue: [recoveredBlock36PC := 638] ifFalse: [recoveredBlock36PC := 670].
        ].
        recoveredBlock36Step = 638 ifTrue: [
            recoveredBlock36Stack0 := self.
            recoveredBlock36PC := 639.
        ].
        recoveredBlock36Step = 639 ifTrue: [
            recoveredBlock36Stack1 := recoveredBlock36Arg1.
            recoveredBlock36PC := 642.
        ].
        recoveredBlock36Step = 642 ifTrue: [
            recoveredBlock36Stack2 := recoveredLocal13.
            recoveredBlock36PC := 645.
        ].
        recoveredBlock36Step = 645 ifTrue: [
            recoveredBlock36Stack3 := recoveredLocal12.
            recoveredBlock36PC := 648.
        ].
        recoveredBlock36Step = 648 ifTrue: [
            recoveredBlock36Stack4 := recoveredLocal10.
            recoveredBlock36PC := 651.
        ].
        recoveredBlock36Step = 651 ifTrue: [
            recoveredBlock36Stack5 := recoveredLocal9.
            recoveredBlock36PC := 654.
        ].
        recoveredBlock36Step = 654 ifTrue: [
            recoveredBlock36Stack6 := recoveredLocal8.
            recoveredBlock36PC := 657.
        ].
        recoveredBlock36Step = 657 ifTrue: [
            recoveredBlock36Stack7 := recoveredLocal7.
            recoveredBlock36PC := 660.
        ].
        recoveredBlock36Step = 660 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) createProfileEntryKey: (recoveredBlock36Stack1) window: (recoveredBlock36Stack2) menu: (recoveredBlock36Stack3) item: (recoveredBlock36Stack4) icon: (recoveredBlock36Stack5) descirption: (recoveredBlock36Stack6) enable: (recoveredBlock36Stack7).
            recoveredBlock36PC := 663.
        ].
        recoveredBlock36Step = 663 ifTrue: [
            recoveredLocal5 := recoveredBlock36Stack0.
            recoveredBlock36PC := 666.
        ].
        recoveredBlock36Step = 666 ifTrue: [
            recoveredBlock36PC := 701.
        ].
        recoveredBlock36Step = 670 ifTrue: [
            recoveredBlock36Stack0 := self.
            recoveredBlock36PC := 671.
        ].
        recoveredBlock36Step = 671 ifTrue: [
            recoveredBlock36Stack1 := recoveredBlock36Arg1.
            recoveredBlock36PC := 674.
        ].
        recoveredBlock36Step = 674 ifTrue: [
            recoveredBlock36Stack2 := recoveredLocal13.
            recoveredBlock36PC := 677.
        ].
        recoveredBlock36Step = 677 ifTrue: [
            recoveredBlock36Stack3 := recoveredLocal12.
            recoveredBlock36PC := 680.
        ].
        recoveredBlock36Step = 680 ifTrue: [
            recoveredBlock36Stack4 := recoveredLocal11.
            recoveredBlock36PC := 683.
        ].
        recoveredBlock36Step = 683 ifTrue: [
            recoveredBlock36Stack5 := recoveredLocal10.
            recoveredBlock36PC := 686.
        ].
        recoveredBlock36Step = 686 ifTrue: [
            recoveredBlock36Stack6 := recoveredLocal9.
            recoveredBlock36PC := 689.
        ].
        recoveredBlock36Step = 689 ifTrue: [
            recoveredBlock36Stack7 := recoveredLocal8.
            recoveredBlock36PC := 692.
        ].
        recoveredBlock36Step = 692 ifTrue: [
            recoveredBlock36Stack8 := recoveredLocal7.
            recoveredBlock36PC := 695.
        ].
        recoveredBlock36Step = 695 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) createProfileEntryKey: (recoveredBlock36Stack1) window: (recoveredBlock36Stack2) menu: (recoveredBlock36Stack3) submenu: (recoveredBlock36Stack4) item: (recoveredBlock36Stack5) icon: (recoveredBlock36Stack6) descirption: (recoveredBlock36Stack7) enable: (recoveredBlock36Stack8).
            recoveredBlock36PC := 698.
        ].
        recoveredBlock36Step = 698 ifTrue: [
            recoveredLocal5 := recoveredBlock36Stack0.
            recoveredBlock36PC := 701.
        ].
        recoveredBlock36Step = 701 ifTrue: [
            recoveredBlock36Stack0 := recoveredLocal1.
            recoveredBlock36PC := 704.
        ].
        recoveredBlock36Step = 704 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) asLowercase.
            recoveredBlock36PC := 706.
        ].
        recoveredBlock36Step = 706 ifTrue: [
            recoveredBlock36Stack1 := 'after'.
            recoveredBlock36PC := 708.
        ].
        recoveredBlock36Step = 708 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) = (recoveredBlock36Stack1).
            recoveredBlock36PC := 709.
        ].
        recoveredBlock36Step = 709 ifTrue: [
            (recoveredBlock36Stack0) ifTrue: [recoveredBlock36PC := 712] ifFalse: [recoveredBlock36PC := 775].
        ].
        recoveredBlock36Step = 712 ifTrue: [
            recoveredBlock36Stack0 := recoveredLocal11.
            recoveredBlock36PC := 715.
        ].
        recoveredBlock36Step = 715 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) isEmpty.
            recoveredBlock36PC := 717.
        ].
        recoveredBlock36Step = 717 ifTrue: [
            (recoveredBlock36Stack0) ifTrue: [recoveredBlock36PC := 720] ifFalse: [recoveredBlock36PC := 748].
        ].
        recoveredBlock36Step = 720 ifTrue: [
            recoveredBlock36Stack0 := self.
            recoveredBlock36PC := 721.
        ].
        recoveredBlock36Step = 721 ifTrue: [
            recoveredBlock36Stack1 := recoveredBlock36Arg1.
            recoveredBlock36PC := 724.
        ].
        recoveredBlock36Step = 724 ifTrue: [
            recoveredBlock36Stack2 := recoveredLocal13.
            recoveredBlock36PC := 727.
        ].
        recoveredBlock36Step = 727 ifTrue: [
            recoveredBlock36Stack3 := recoveredLocal12.
            recoveredBlock36PC := 730.
        ].
        recoveredBlock36Step = 730 ifTrue: [
            recoveredBlock36Stack4 := ''.
            recoveredBlock36PC := 732.
        ].
        recoveredBlock36Step = 732 ifTrue: [
            recoveredBlock36Stack5 := recoveredLocal9.
            recoveredBlock36PC := 735.
        ].
        recoveredBlock36Step = 735 ifTrue: [
            recoveredBlock36Stack6 := recoveredLocal8.
            recoveredBlock36PC := 738.
        ].
        recoveredBlock36Step = 738 ifTrue: [
            recoveredBlock36Stack7 := recoveredLocal7.
            recoveredBlock36PC := 741.
        ].
        recoveredBlock36Step = 741 ifTrue: [
            (recoveredBlock36Stack0) createProfileEntryKey: (recoveredBlock36Stack1) window: (recoveredBlock36Stack2) menu: (recoveredBlock36Stack3) item: (recoveredBlock36Stack4) icon: (recoveredBlock36Stack5) descirption: (recoveredBlock36Stack6) enable: (recoveredBlock36Stack7).
            recoveredBlock36PC := 744.
        ].
        recoveredBlock36Step = 744 ifTrue: [
            recoveredBlock36PC := 775.
        ].
        recoveredBlock36Step = 748 ifTrue: [
            recoveredBlock36Stack0 := self.
            recoveredBlock36PC := 749.
        ].
        recoveredBlock36Step = 749 ifTrue: [
            recoveredBlock36Stack1 := recoveredBlock36Arg1.
            recoveredBlock36PC := 752.
        ].
        recoveredBlock36Step = 752 ifTrue: [
            recoveredBlock36Stack2 := recoveredLocal13.
            recoveredBlock36PC := 755.
        ].
        recoveredBlock36Step = 755 ifTrue: [
            recoveredBlock36Stack3 := recoveredLocal12.
            recoveredBlock36PC := 758.
        ].
        recoveredBlock36Step = 758 ifTrue: [
            recoveredBlock36Stack4 := recoveredLocal11.
            recoveredBlock36PC := 761.
        ].
        recoveredBlock36Step = 761 ifTrue: [
            recoveredBlock36Stack5 := ''.
            recoveredBlock36PC := 763.
        ].
        recoveredBlock36Step = 763 ifTrue: [
            recoveredBlock36Stack6 := recoveredLocal9.
            recoveredBlock36PC := 766.
        ].
        recoveredBlock36Step = 766 ifTrue: [
            recoveredBlock36Stack7 := recoveredLocal8.
            recoveredBlock36PC := 769.
        ].
        recoveredBlock36Step = 769 ifTrue: [
            recoveredBlock36Stack8 := recoveredLocal7.
            recoveredBlock36PC := 772.
        ].
        recoveredBlock36Step = 772 ifTrue: [
            (recoveredBlock36Stack0) createProfileEntryKey: (recoveredBlock36Stack1) window: (recoveredBlock36Stack2) menu: (recoveredBlock36Stack3) submenu: (recoveredBlock36Stack4) item: (recoveredBlock36Stack5) icon: (recoveredBlock36Stack6) descirption: (recoveredBlock36Stack7) enable: (recoveredBlock36Stack8).
            recoveredBlock36PC := 775.
        ].
        recoveredBlock36Step = 775 ifTrue: [
            recoveredBlock36Stack0 := recoveredBlock36Local2.
            recoveredBlock36PC := 778.
        ].
        recoveredBlock36Step = 778 ifTrue: [
            recoveredBlock36Stack1 := 'EXECUTE_FILE_ONLY'.
            recoveredBlock36PC := 780.
        ].
        recoveredBlock36Step = 780 ifTrue: [
            recoveredBlock36Stack2 := [
    ''
].
            recoveredBlock36PC := 782.
        ].
        recoveredBlock36Step = 782 ifTrue: [
            recoveredBlock36PC := 789.
        ].
        recoveredBlock36Step = 789 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) at: (recoveredBlock36Stack1) ifAbsent: (recoveredBlock36Stack2).
            recoveredBlock36PC := 791.
        ].
        recoveredBlock36Step = 791 ifTrue: [
            recoveredBlock36Stack1 := recoveredBlock36Stack0.
            recoveredBlock36PC := 792.
        ].
        recoveredBlock36Step = 792 ifTrue: [
            recoveredLocal6 := recoveredBlock36Stack1.
            recoveredBlock36PC := 795.
        ].
        recoveredBlock36Step = 795 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) isEmpty.
            recoveredBlock36PC := 797.
        ].
        recoveredBlock36Step = 797 ifTrue: [
            (recoveredBlock36Stack0) ifTrue: [recoveredBlock36PC := 826] ifFalse: [recoveredBlock36PC := 800].
        ].
        recoveredBlock36Step = 800 ifTrue: [
            recoveredBlock36Stack0 := PCDExecuterFile.
            recoveredBlock36PC := 802.
        ].
        recoveredBlock36Step = 802 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal3.
            recoveredBlock36PC := 805.
        ].
        recoveredBlock36Step = 805 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) create: (recoveredBlock36Stack1).
            recoveredBlock36PC := 807.
        ].
        recoveredBlock36Step = 807 ifTrue: [
            recoveredLocal4 := recoveredBlock36Stack0.
            recoveredBlock36PC := 810.
        ].
        recoveredBlock36Step = 810 ifTrue: [
            recoveredBlock36Stack0 := recoveredLocal4.
            recoveredBlock36PC := 813.
        ].
        recoveredBlock36Step = 813 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal6.
            recoveredBlock36PC := 816.
        ].
        recoveredBlock36Step = 816 ifTrue: [
            (recoveredBlock36Stack0) parse: (recoveredBlock36Stack1).
            recoveredBlock36PC := 818.
        ].
        recoveredBlock36Step = 818 ifTrue: [
            recoveredBlock36Stack0 := recoveredLocal5.
            recoveredBlock36PC := 821.
        ].
        recoveredBlock36Step = 821 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal4.
            recoveredBlock36PC := 824.
        ].
        recoveredBlock36Step = 824 ifTrue: [
            (recoveredBlock36Stack0) addExecutable: (recoveredBlock36Stack1).
            recoveredBlock36PC := 826.
        ].
        recoveredBlock36Step = 826 ifTrue: [
            recoveredBlock36Stack0 := nil.
            recoveredBlock36PC := 827.
        ].
        recoveredBlock36Step = 827 ifTrue: [
            recoveredBlock36Stack1 := recoveredBlock36Local2.
            recoveredBlock36PC := 830.
        ].
        recoveredBlock36Step = 830 ifTrue: [
            recoveredBlock36Stack2 := 'FILE'.
            recoveredBlock36PC := 832.
        ].
        recoveredBlock36Step = 832 ifTrue: [
            recoveredBlock36Stack3 := [
    ''
].
            recoveredBlock36PC := 834.
        ].
        recoveredBlock36Step = 834 ifTrue: [
            recoveredBlock36PC := 841.
        ].
        recoveredBlock36Step = 841 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) at: (recoveredBlock36Stack2) ifAbsent: (recoveredBlock36Stack3).
            recoveredBlock36PC := 843.
        ].
        recoveredBlock36Step = 843 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Stack1.
            recoveredBlock36PC := 844.
        ].
        recoveredBlock36Step = 844 ifTrue: [
            recoveredLocal6 := recoveredBlock36Stack2.
            recoveredBlock36PC := 847.
        ].
        recoveredBlock36Step = 847 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) isEmpty.
            recoveredBlock36PC := 849.
        ].
        recoveredBlock36Step = 849 ifTrue: [
            (recoveredBlock36Stack1) ifTrue: [recoveredBlock36PC := 879] ifFalse: [recoveredBlock36PC := 852].
        ].
        recoveredBlock36Step = 852 ifTrue: [
            recoveredBlock36PC := 853.
        ].
        recoveredBlock36Step = 853 ifTrue: [
            recoveredBlock36Stack0 := PCDExecuterFile.
            recoveredBlock36PC := 855.
        ].
        recoveredBlock36Step = 855 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal3.
            recoveredBlock36PC := 858.
        ].
        recoveredBlock36Step = 858 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) create: (recoveredBlock36Stack1).
            recoveredBlock36PC := 860.
        ].
        recoveredBlock36Step = 860 ifTrue: [
            recoveredLocal4 := recoveredBlock36Stack0.
            recoveredBlock36PC := 863.
        ].
        recoveredBlock36Step = 863 ifTrue: [
            recoveredBlock36Stack0 := recoveredLocal4.
            recoveredBlock36PC := 866.
        ].
        recoveredBlock36Step = 866 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal6.
            recoveredBlock36PC := 869.
        ].
        recoveredBlock36Step = 869 ifTrue: [
            (recoveredBlock36Stack0) parse: (recoveredBlock36Stack1).
            recoveredBlock36PC := 871.
        ].
        recoveredBlock36Step = 871 ifTrue: [
            recoveredBlock36Stack0 := recoveredLocal5.
            recoveredBlock36PC := 874.
        ].
        recoveredBlock36Step = 874 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal4.
            recoveredBlock36PC := 877.
        ].
        recoveredBlock36Step = 877 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) addExecutable: (recoveredBlock36Stack1).
            recoveredBlock36PC := 879.
        ].
        recoveredBlock36Step = 879 ifTrue: [
            recoveredBlock36Stack1 := nil.
            recoveredBlock36PC := 880.
        ].
        recoveredBlock36Step = 880 ifTrue: [
            recoveredBlock36Local1 := recoveredBlock36Stack1.
            recoveredBlock36PC := 883.
        ].
        recoveredBlock36Step = 883 ifTrue: [
            recoveredBlock36Result := recoveredBlock36Stack0.
            recoveredBlock36Done := true.
        ].
    ].
    recoveredBlock36Result
].
    (recoveredValue10) do: (recoveredValue11).
    ^self
! !

