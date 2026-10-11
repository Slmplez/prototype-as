"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDConvUtil_base.ic method 0x20001264; bytecode file offset 0xace0"
!ASDProblemReportToolbox class methodsFor: 'recovered'!
toolboxDescriptor
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasToolboxDescriptor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ASCET Problem Report Package'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'BIP-GeneralUtilities'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := 'ASDProblemReportToolbox'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'ProblemReportToolbox.app'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) packageName: (recoveredStack3) application: (recoveredStack4) fileName: (recoveredStack5).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'SGMainView'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := '~Tools'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := 'Problem Report'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack5 := 'Check duplicate alias names [KIR 2011403137]'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack6 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 |
    recoveredBlock35Value0 := (self) library.
    recoveredBlock35Value1 := (recoveredBlock35Value0) isOpen.
    recoveredBlock35Value1
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack7 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Value0 recoveredBlock47Value1 |
    recoveredBlock47Value0 := recoveredBlock47Arg1.
    recoveredBlock47Value1 := (self) checkDuplicateAliasNames: (recoveredBlock47Value0).
    recoveredBlock47Value1
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack8 := 'Check duplicate alias names [KIR 2011403137]'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) addSubMenuCall: (recoveredStack2) menu: (recoveredStack3) submenu: (recoveredStack4) item: (recoveredStack5) enable: (recoveredStack6) action: (recoveredStack7) description: (recoveredStack8).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDConvUtil_base.ic method 0x20001998; bytecode file offset 0xb404"
!ASDProblemReportToolbox class methodsFor: 'recovered'!
checkComponent: recoveredArg1 addResultsTo: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) allElements.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8Stack5 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) aliasName.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isString.
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 89] ifFalse: [recoveredBlock8PC := 24].
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg2.
            recoveredBlock8PC := 28.
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) aliasName.
            recoveredBlock8PC := 32.
        ].
        recoveredBlock8Step = 32 ifTrue: [
            recoveredBlock8Stack3 := [
    | recoveredBlock8Block32Value0 recoveredBlock8Block32Value1 recoveredBlock8Block32Value2 recoveredBlock8Block32Value3 recoveredBlock8Block32Value4 recoveredBlock8Block32Value5 recoveredBlock8Block32Value6 recoveredBlock8Block32Value7 recoveredBlock8Block32Value8 recoveredBlock8Block32Value9 recoveredBlock8Block32Value10 |
    recoveredBlock8Block32Value0 := recoveredArg2.
    recoveredBlock8Block32Value1 := recoveredBlock8Arg1.
    recoveredBlock8Block32Value2 := (recoveredBlock8Block32Value1) aliasName.
    recoveredBlock8Block32Value3 := OrderedCollection.
    recoveredBlock8Block32Value4 := Array.
    recoveredBlock8Block32Value5 := recoveredArg1.
    recoveredBlock8Block32Value6 := (recoveredBlock8Block32Value5) asRBDBReference.
    recoveredBlock8Block32Value7 := recoveredBlock8Arg1.
    recoveredBlock8Block32Value8 := (recoveredBlock8Block32Value4) with: (recoveredBlock8Block32Value6) with: (recoveredBlock8Block32Value7).
    recoveredBlock8Block32Value9 := (recoveredBlock8Block32Value3) with: (recoveredBlock8Block32Value8).
    recoveredBlock8Block32Value10 := (recoveredBlock8Block32Value0) at: (recoveredBlock8Block32Value2) put: (recoveredBlock8Block32Value9).
    recoveredBlock8Block32Value10
].
            recoveredBlock8PC := 64.
        ].
        recoveredBlock8Step = 64 ifTrue: [
            recoveredBlock8Stack4 := [:recoveredBlock8Block64Arg1 | 
    | recoveredBlock8Block64Value0 recoveredBlock8Block64Value1 recoveredBlock8Block64Value2 recoveredBlock8Block64Value3 recoveredBlock8Block64Value4 recoveredBlock8Block64Value5 recoveredBlock8Block64Value6 |
    recoveredBlock8Block64Value0 := recoveredBlock8Block64Arg1.
    recoveredBlock8Block64Value1 := Array.
    recoveredBlock8Block64Value2 := recoveredArg1.
    recoveredBlock8Block64Value3 := (recoveredBlock8Block64Value2) asRBDBReference.
    recoveredBlock8Block64Value4 := recoveredBlock8Arg1.
    recoveredBlock8Block64Value5 := (recoveredBlock8Block64Value1) with: (recoveredBlock8Block64Value3) with: (recoveredBlock8Block64Value4).
    recoveredBlock8Block64Value6 := (recoveredBlock8Block64Value0) add: (recoveredBlock8Block64Value5).
    recoveredBlock8Block64Value6
].
            recoveredBlock8PC := 86.
        ].
        recoveredBlock8Step = 86 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) at: (recoveredBlock8Stack2) ifAbsent: (recoveredBlock8Stack3) ifPresent: (recoveredBlock8Stack4).
            recoveredBlock8PC := 89.
        ].
        recoveredBlock8Step = 89 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDConvUtil_base.ic method 0x2000330c; bytecode file offset 0xcdec"
!ASDProblemReportToolbox class methodsFor: 'recovered'!
checkDuplicateAliasNames: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := SGDatabaseAccess.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) create.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) libraryKeys.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack2 := [:block280012c8Arg1 | 
    | block280012c8Stack0 block280012c8Stack1 block280012c8Stack2 block280012c8Stack3 block280012c8PC block280012c8Step block280012c8Done block280012c8Result |
    block280012c8Stack0 := self.
    block280012c8PC := 4.
    block280012c8Done := false.
    [block280012c8Done not] whileTrue: [
        block280012c8Step := block280012c8PC.
        block280012c8Step = 4 ifTrue: [
            block280012c8Stack1 := block280012c8Arg1.
            block280012c8PC := 5.
        ].
        block280012c8Step = 5 ifTrue: [
            block280012c8Stack2 := [:block280012ecArg1 | 
    nil
].
            block280012c8PC := 7.
        ].
        block280012c8Step = 7 ifTrue: [
            block280012c8PC := 12.
        ].
        block280012c8Step = 12 ifTrue: [
            block280012c8Stack1 := (block280012c8Stack1) getObjectIfUndefined: (block280012c8Stack2).
            block280012c8PC := 14.
        ].
        block280012c8Step = 14 ifTrue: [
            block280012c8Result := block280012c8Stack1.
            block280012c8Done := true.
        ].
    ].
    block280012c8Result
].
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6PC := 33.
        ].
        recoveredBlock6Step = 33 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) collect: (recoveredBlock6Stack2).
            recoveredBlock6PC := 35.
        ].
        recoveredBlock6Step = 35 ifTrue: [
            recoveredBlock6Stack2 := [:block28001310Arg1 | 
    | block28001310Value0 block28001310Value1 |
    block28001310Value0 := block28001310Arg1.
    block28001310Value1 := (block28001310Value0) notNil.
    block28001310Value1
].
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            recoveredBlock6PC := 43.
        ].
        recoveredBlock6Step = 43 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) select: (recoveredBlock6Stack2).
            recoveredBlock6PC := 45.
        ].
        recoveredBlock6Step = 45 ifTrue: [
            recoveredLocal6 := recoveredBlock6Stack1.
            recoveredBlock6PC := 48.
        ].
        recoveredBlock6Step = 48 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal6.
            recoveredBlock6PC := 51.
        ].
        recoveredBlock6Step = 51 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) isEmpty.
            recoveredBlock6PC := 53.
        ].
        recoveredBlock6Step = 53 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 56] ifFalse: [recoveredBlock6PC := 58].
        ].
        recoveredBlock6Step = 56 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 57.
        ].
        recoveredBlock6Step = 57 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 58 ifTrue: [
            recoveredBlock6Stack1 := OrderedCollection.
            recoveredBlock6PC := 60.
        ].
        recoveredBlock6Step = 60 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) new.
            recoveredBlock6PC := 62.
        ].
        recoveredBlock6Step = 62 ifTrue: [
            recoveredLocal5 := recoveredBlock6Stack1.
            recoveredBlock6PC := 65.
        ].
        recoveredBlock6Step = 65 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal6.
            recoveredBlock6PC := 68.
        ].
        recoveredBlock6Step = 68 ifTrue: [
            recoveredBlock6Stack2 := [:recoveredBlock6Block68Arg1 | 
    | recoveredBlock6Block68Stack0 recoveredBlock6Block68Stack1 recoveredBlock6Block68Stack2 recoveredBlock6Block68Stack3 recoveredBlock6Block68Stack4 recoveredBlock6Block68PC recoveredBlock6Block68Step recoveredBlock6Block68Done recoveredBlock6Block68Result |
    recoveredBlock6Block68Stack0 := nil.
    recoveredBlock6Block68PC := 74.
    recoveredBlock6Block68Done := false.
    [recoveredBlock6Block68Done not] whileTrue: [
        recoveredBlock6Block68Step := recoveredBlock6Block68PC.
        recoveredBlock6Block68Step = 74 ifTrue: [
            recoveredBlock6Block68Stack1 := recoveredLocal5.
            recoveredBlock6Block68PC := 77.
        ].
        recoveredBlock6Block68Step = 77 ifTrue: [
            recoveredBlock6Block68Stack2 := recoveredBlock6Block68Arg1.
            recoveredBlock6Block68PC := 78.
        ].
        recoveredBlock6Block68Step = 78 ifTrue: [
            recoveredBlock6Block68Stack2 := (recoveredBlock6Block68Stack2) allNotFolderChildrenKeys.
            recoveredBlock6Block68PC := 80.
        ].
        recoveredBlock6Block68Step = 80 ifTrue: [
            (recoveredBlock6Block68Stack1) addAll: (recoveredBlock6Block68Stack2).
            recoveredBlock6Block68PC := 82.
        ].
        recoveredBlock6Block68Step = 82 ifTrue: [
            recoveredBlock6Block68Stack1 := recoveredLocal5.
            recoveredBlock6Block68PC := 85.
        ].
        recoveredBlock6Block68Step = 85 ifTrue: [
            recoveredBlock6Block68Stack2 := recoveredBlock6Block68Arg1.
            recoveredBlock6Block68PC := 86.
        ].
        recoveredBlock6Block68Step = 86 ifTrue: [
            recoveredBlock6Block68Stack2 := (recoveredBlock6Block68Stack2) allFolderChildrenRecursive.
            recoveredBlock6Block68PC := 88.
        ].
        recoveredBlock6Block68Step = 88 ifTrue: [
            recoveredBlock6Block68Stack3 := [:block28001334Arg1 | 
    | block28001334Value0 block28001334Value1 |
    block28001334Value0 := block28001334Arg1.
    block28001334Value1 := (block28001334Value0) asRBDBReference.
    block28001334Value1
].
            recoveredBlock6Block68PC := 90.
        ].
        recoveredBlock6Block68Step = 90 ifTrue: [
            recoveredBlock6Block68PC := 98.
        ].
        recoveredBlock6Block68Step = 98 ifTrue: [
            recoveredBlock6Block68Stack2 := (recoveredBlock6Block68Stack2) collect: (recoveredBlock6Block68Stack3).
            recoveredBlock6Block68PC := 100.
        ].
        recoveredBlock6Block68Step = 100 ifTrue: [
            (recoveredBlock6Block68Stack1) addAll: (recoveredBlock6Block68Stack2).
            recoveredBlock6Block68PC := 102.
        ].
        recoveredBlock6Block68Step = 102 ifTrue: [
            recoveredBlock6Block68Stack1 := recoveredLocal5.
            recoveredBlock6Block68PC := 105.
        ].
        recoveredBlock6Block68Step = 105 ifTrue: [
            recoveredBlock6Block68Stack2 := recoveredBlock6Block68Arg1.
            recoveredBlock6Block68PC := 106.
        ].
        recoveredBlock6Block68Step = 106 ifTrue: [
            recoveredBlock6Block68Stack2 := (recoveredBlock6Block68Stack2) asRBDBReference.
            recoveredBlock6Block68PC := 108.
        ].
        recoveredBlock6Block68Step = 108 ifTrue: [
            recoveredBlock6Block68Stack1 := (recoveredBlock6Block68Stack1) add: (recoveredBlock6Block68Stack2).
            recoveredBlock6Block68PC := 110.
        ].
        recoveredBlock6Block68Step = 110 ifTrue: [
            recoveredBlock6Block68Result := recoveredBlock6Block68Stack1.
            recoveredBlock6Block68Done := true.
        ].
    ].
    recoveredBlock6Block68Result
].
            recoveredBlock6PC := 111.
        ].
        recoveredBlock6Step = 111 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) do: (recoveredBlock6Stack2).
            recoveredBlock6PC := 113.
        ].
        recoveredBlock6Step = 113 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) showBusyCursorWhile: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := 'Check duplicate alias names...'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) addText: (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := AbtHighCapacityLookupTable.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := [:recoveredBlock139Arg1 | 
    | recoveredBlock139Value0 recoveredBlock139Value1 recoveredBlock139Value2 |
    recoveredBlock139Value0 := recoveredLocal5.
    recoveredBlock139Value1 := [:recoveredBlock139Block149Arg1 :recoveredBlock139Block149Arg2 | 
    | recoveredBlock139Block149Local1 recoveredBlock139Block149Local2 recoveredBlock139Block149Stack0 recoveredBlock139Block149Stack1 recoveredBlock139Block149Stack2 recoveredBlock139Block149Stack3 recoveredBlock139Block149Stack4 recoveredBlock139Block149PC recoveredBlock139Block149Step recoveredBlock139Block149Done recoveredBlock139Block149Result |
    recoveredBlock139Block149Stack0 := self.
    recoveredBlock139Block149PC := 156.
    recoveredBlock139Block149Done := false.
    [recoveredBlock139Block149Done not] whileTrue: [
        recoveredBlock139Block149Step := recoveredBlock139Block149PC.
        recoveredBlock139Block149Step = 156 ifTrue: [
            recoveredBlock139Block149Stack1 := recoveredBlock139Arg1.
            recoveredBlock139Block149PC := 159.
        ].
        recoveredBlock139Block149Step = 159 ifTrue: [
            recoveredBlock139Block149Stack2 := recoveredBlock139Block149Arg2.
            recoveredBlock139Block149PC := 160.
        ].
        recoveredBlock139Block149Step = 160 ifTrue: [
            recoveredBlock139Block149Stack3 := recoveredLocal5.
            recoveredBlock139Block149PC := 163.
        ].
        recoveredBlock139Block149Step = 163 ifTrue: [
            recoveredBlock139Block149Stack3 := (recoveredBlock139Block149Stack3) size.
            recoveredBlock139Block149PC := 165.
        ].
        recoveredBlock139Block149Step = 165 ifTrue: [
            recoveredBlock139Block149Stack2 := (recoveredBlock139Block149Stack2) / (recoveredBlock139Block149Stack3).
            recoveredBlock139Block149PC := 167.
        ].
        recoveredBlock139Block149Step = 167 ifTrue: [
            (recoveredBlock139Block149Stack1) fractionComplete: (recoveredBlock139Block149Stack2).
            recoveredBlock139Block149PC := 169.
        ].
        recoveredBlock139Block149Step = 169 ifTrue: [
            recoveredBlock139Block149Stack1 := nil.
            recoveredBlock139Block149PC := 170.
        ].
        recoveredBlock139Block149Step = 170 ifTrue: [
            recoveredBlock139Block149Stack2 := recoveredBlock139Block149Arg1.
            recoveredBlock139Block149PC := 171.
        ].
        recoveredBlock139Block149Step = 171 ifTrue: [
            recoveredBlock139Block149Stack3 := [:block28001358Arg1 | 
    nil
].
            recoveredBlock139Block149PC := 173.
        ].
        recoveredBlock139Block149Step = 173 ifTrue: [
            recoveredBlock139Block149PC := 178.
        ].
        recoveredBlock139Block149Step = 178 ifTrue: [
            recoveredBlock139Block149Stack2 := (recoveredBlock139Block149Stack2) getObjectIfUndefined: (recoveredBlock139Block149Stack3).
            recoveredBlock139Block149PC := 180.
        ].
        recoveredBlock139Block149Step = 180 ifTrue: [
            recoveredBlock139Block149Stack3 := recoveredBlock139Block149Stack2.
            recoveredBlock139Block149PC := 181.
        ].
        recoveredBlock139Block149Step = 181 ifTrue: [
            recoveredBlock139Block149Local2 := recoveredBlock139Block149Stack3.
            recoveredBlock139Block149PC := 182.
        ].
        recoveredBlock139Block149Step = 182 ifTrue: [
            (recoveredBlock139Block149Stack2 == nil) ifTrue: [recoveredBlock139Block149PC := 220] ifFalse: [recoveredBlock139Block149PC := 186].
        ].
        recoveredBlock139Block149Step = 186 ifTrue: [
            recoveredBlock139Block149PC := 187.
        ].
        recoveredBlock139Block149Step = 187 ifTrue: [
            recoveredBlock139Block149Stack1 := self.
            recoveredBlock139Block149PC := 188.
        ].
        recoveredBlock139Block149Step = 188 ifTrue: [
            recoveredBlock139Block149Stack2 := recoveredBlock139Block149Local2.
            recoveredBlock139Block149PC := 189.
        ].
        recoveredBlock139Block149Step = 189 ifTrue: [
            recoveredBlock139Block149Stack3 := recoveredLocal1.
            recoveredBlock139Block149PC := 192.
        ].
        recoveredBlock139Block149Step = 192 ifTrue: [
            (recoveredBlock139Block149Stack1) checkComponent: (recoveredBlock139Block149Stack2) addResultsTo: (recoveredBlock139Block149Stack3).
            recoveredBlock139Block149PC := 194.
        ].
        recoveredBlock139Block149Step = 194 ifTrue: [
            recoveredBlock139Block149Stack1 := nil.
            recoveredBlock139Block149PC := 195.
        ].
        recoveredBlock139Block149Step = 195 ifTrue: [
            recoveredBlock139Block149Stack2 := recoveredBlock139Block149Local2.
            recoveredBlock139Block149PC := 196.
        ].
        recoveredBlock139Block149Step = 196 ifTrue: [
            recoveredBlock139Block149Stack2 := (recoveredBlock139Block149Stack2) isProject.
            recoveredBlock139Block149PC := 198.
        ].
        recoveredBlock139Block149Step = 198 ifTrue: [
            (recoveredBlock139Block149Stack2) ifTrue: [recoveredBlock139Block149PC := 202] ifFalse: [recoveredBlock139Block149PC := 218].
        ].
        recoveredBlock139Block149Step = 202 ifTrue: [
            recoveredBlock139Block149Stack2 := recoveredBlock139Block149Local2.
            recoveredBlock139Block149PC := 203.
        ].
        recoveredBlock139Block149Step = 203 ifTrue: [
            recoveredBlock139Block149Stack2 := (recoveredBlock139Block149Stack2) defaultProjectForItem.
            recoveredBlock139Block149PC := 205.
        ].
        recoveredBlock139Block149Step = 205 ifTrue: [
            recoveredBlock139Block149Stack3 := recoveredBlock139Block149Stack2.
            recoveredBlock139Block149PC := 206.
        ].
        recoveredBlock139Block149Step = 206 ifTrue: [
            recoveredBlock139Block149Local1 := recoveredBlock139Block149Stack3.
            recoveredBlock139Block149PC := 207.
        ].
        recoveredBlock139Block149Step = 207 ifTrue: [
            (recoveredBlock139Block149Stack2 == nil) ifTrue: [recoveredBlock139Block149PC := 218] ifFalse: [recoveredBlock139Block149PC := 210].
        ].
        recoveredBlock139Block149Step = 210 ifTrue: [
            recoveredBlock139Block149PC := 211.
        ].
        recoveredBlock139Block149Step = 211 ifTrue: [
            recoveredBlock139Block149Stack1 := self.
            recoveredBlock139Block149PC := 212.
        ].
        recoveredBlock139Block149Step = 212 ifTrue: [
            recoveredBlock139Block149Stack2 := recoveredBlock139Block149Local1.
            recoveredBlock139Block149PC := 213.
        ].
        recoveredBlock139Block149Step = 213 ifTrue: [
            recoveredBlock139Block149Stack3 := recoveredLocal1.
            recoveredBlock139Block149PC := 216.
        ].
        recoveredBlock139Block149Step = 216 ifTrue: [
            recoveredBlock139Block149Stack1 := (recoveredBlock139Block149Stack1) checkComponent: (recoveredBlock139Block149Stack2) addResultsTo: (recoveredBlock139Block149Stack3).
            recoveredBlock139Block149PC := 218.
        ].
        recoveredBlock139Block149Step = 218 ifTrue: [
            recoveredBlock139Block149Stack2 := nil.
            recoveredBlock139Block149PC := 219.
        ].
        recoveredBlock139Block149Step = 219 ifTrue: [
            recoveredBlock139Block149Local1 := recoveredBlock139Block149Stack2.
            recoveredBlock139Block149PC := 220.
        ].
        recoveredBlock139Block149Step = 220 ifTrue: [
            recoveredBlock139Block149Result := recoveredBlock139Block149Stack1.
            recoveredBlock139Block149Done := true.
        ].
    ].
    recoveredBlock139Block149Result
].
    recoveredBlock139Value2 := (recoveredBlock139Value0) doWithIndex: (recoveredBlock139Value1).
    recoveredBlock139Value2
].
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := 'Check duplicate alias names...'.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack5 := 'Database '.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack6 := (recoveredStack6) library.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack6 := (recoveredStack6) location.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack1) execWithProgressDialog: (recoveredStack2) message: (recoveredStack3) showProgress: (recoveredStack4) title: (recoveredStack5).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := [:block2800137cArg1 | 
    | block2800137cValue0 block2800137cValue1 block2800137cValue2 |
    block2800137cValue0 := block2800137cArg1.
    block2800137cValue1 := (block2800137cValue0) size.
    block2800137cValue2 := (block2800137cValue1) > (1).
    block2800137cValue2
].
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack1) inspect.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack1) printReady.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

