"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"EHOOKS.ic method 0x20000880; bytecode file offset 0xf9bc"
!ASDEHooksSpecificationToolbox class methodsFor: 'recovered'!
getEHooksWidget: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ASDEHooksSpecificationWidget.
    recoveredValue2 := (recoveredValue1) widgetAtom.
    recoveredValue3 := (recoveredValue0) widgetAt: (recoveredValue2).
    ^recoveredValue3
! !

"EHOOKS.ic method 0x200013d8; bytecode file offset 0x10530"
!ASDEHooksSpecificationToolbox class methodsFor: 'recovered'!
confirmWarning: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block28001074Arg1 | 
    | block28001074Value0 block28001074Value1 block28001074Value2 |
    block28001074Value0 := SGMuxGO.
    block28001074Value1 := block28001074Arg1.
    block28001074Value2 := (block28001074Value0) confirmWarning: (block28001074Value1).
    block28001074Value2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirmBlock: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200013f0; bytecode file offset 0x10530"
!ASDEHooksSpecificationToolbox class methodsFor: 'recovered'!
confirmError: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block28001098Arg1 | 
    | block28001098Value0 block28001098Value1 block28001098Value2 |
    block28001098Value0 := SGMuxGO.
    block28001098Value1 := block28001098Arg1.
    block28001098Value2 := (block28001098Value0) confirmError: (block28001098Value1).
    block28001098Value2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirmBlock: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20001544; bytecode file offset 0x10680"
!ASDEHooksSpecificationToolbox class methodsFor: 'recovered'!
menuEHooksAutomapping: recoveredArg1 overwriteExisting: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDEHooksSpecificationToolbox.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getEHooksWidget: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) performAutomappingOverwriteExisting: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x200016a8; bytecode file offset 0x107e0"
!ASDEHooksSpecificationToolbox class methodsFor: 'recovered'!
confirmBlock: recoveredArg1 string: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x20001c0c; bytecode file offset 0x10d4c"
!ASDEHooksSpecificationToolbox class methodsFor: 'recovered'!
menuEHooksOpen: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDEHooksSpecificationToolbox.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getEHooksWidget: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) initializeEHooksApplCheckWellConfiguredPromptMissingFiles: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) checkEHooksAppl.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20002270; bytecode file offset 0x113d0"
!ASDEHooksSpecificationToolbox class methodsFor: 'recovered'!
getNewTempPath
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := CfsDirectoryDescriptor.
    recoveredValue1 := (recoveredValue0) getTempPath.
    recoveredValue2 := (recoveredValue1) asPathname.
    recoveredValue3 := OSGuid.
    recoveredValue4 := (recoveredValue3) createGUIDString.
    recoveredValue5 := (recoveredValue2) , (recoveredValue4).
    recoveredValue6 := (recoveredValue5) asPathname.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := CfsDirectoryDescriptor.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue7) deletePathRecursive: (recoveredValue8).
    recoveredValue9 := CfsStat.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue9) exists: (recoveredValue10).
    recoveredValue12 := (recoveredValue11) not.
    (self) runtimeAssert: (recoveredValue12) additionalInfo: ('temp path should NOT exist').
    recoveredValue13 := CfsDirectoryDescriptor.
    recoveredValue14 := recoveredLocal1.
    (recoveredValue13) mkdirRecursive: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    ^recoveredValue15
! !

"EHOOKS.ic method 0x20006540; bytecode file offset 0x15740"
!ASDEHooksSpecificationToolbox class methodsFor: 'recovered'!
menuExportEHooks: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal9 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) getEHooksASCETConfigFile.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := ASDSimCTGSLVarStepSolver.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'Project '.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) completeLibraryPath.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := ' does NOT contain a valid EHOOKS configuration'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := ASDSimCTGSLVarStepSolver.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := 'ASCET EHOOKS configuration file '.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := ' not found. '.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := EHooksExportAborted.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := EHooksFullStop.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := ASDEHooksConfiguration.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForASCETConfigFile: (recoveredStack2) project: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 137] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := ASDSimCTGSLVarStepSolver.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := 'Invalid ASCET EHOOKS configuration file: '.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := EHooksExportAborted.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := EHooksFullStop.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) generatorSettings.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) eHooksConfigurationFile.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFilename.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 199] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := ASDSimCTGSLVarStepSolver.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := 'ASCET EHOOKS configuration file '.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := ' not found. '.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack3 := EHooksExportAborted.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := EHooksFullStop.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := '*.zip'.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack4 := 'ZIP files'.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := '*.*'.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack4 := 'All files'.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := CommentConnectionLineStyle.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := 'Select Export File'.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack4 := CommentConnectionLineStyle.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack4 := (recoveredStack4) getOrCreateExportPath.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack5 := '*.zip'.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack6 := recoveredLocal4.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack7 := false.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack8 := false.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack9 := recoveredArg1.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := (recoveredStack1) promptForFileNameLabel: (recoveredStack2) defaultFileName: (recoveredStack3) searchPath: (recoveredStack4) searchMask: (recoveredStack5) filterDict: (recoveredStack6) shouldExist: (recoveredStack7) multipleSelect: (recoveredStack8) parentWindow: (recoveredStack9).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 252] ifFalse: [recoveredPC := 250].
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := (recoveredStack0) getNewTempPath.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack2 := 'temp path should exist'.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack3 := (recoveredStack3) fileName.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack0) copy: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack2 := 'temp path should exist'.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack3 := (recoveredStack3) fileName.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack0) copy: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack2 := 'temp path should exist'.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock338Stack0 recoveredBlock338Stack1 recoveredBlock338Stack2 recoveredBlock338Stack3 recoveredBlock338Stack4 recoveredBlock338Stack5 recoveredBlock338PC recoveredBlock338Step recoveredBlock338Done recoveredBlock338Result |
    recoveredBlock338Stack0 := self.
    recoveredBlock338PC := 344.
    recoveredBlock338Done := false.
    [recoveredBlock338Done not] whileTrue: [
        recoveredBlock338Step := recoveredBlock338PC.
        recoveredBlock338Step = 344 ifTrue: [
            recoveredBlock338Stack1 := AMLXcpPag.
            recoveredBlock338PC := 346.
        ].
        recoveredBlock338Step = 346 ifTrue: [
            recoveredBlock338Stack1 := (recoveredBlock338Stack1) new.
            recoveredBlock338PC := 348.
        ].
        recoveredBlock338Step = 348 ifTrue: [
            recoveredBlock338Stack2 := recoveredLocal6.
            recoveredBlock338PC := 351.
        ].
        recoveredBlock338Step = 351 ifTrue: [
            recoveredBlock338Stack3 := recoveredLocal7.
            recoveredBlock338PC := 354.
        ].
        recoveredBlock338Step = 354 ifTrue: [
            recoveredBlock338Stack4 := true.
            recoveredBlock338PC := 355.
        ].
        recoveredBlock338Step = 355 ifTrue: [
            recoveredBlock338Stack1 := (recoveredBlock338Stack1) zipDirectoryRecursive: (recoveredBlock338Stack2) into: (recoveredBlock338Stack3) delete: (recoveredBlock338Stack4).
            recoveredBlock338PC := 358.
        ].
        recoveredBlock338Step = 358 ifTrue: [
            recoveredLocal5 := recoveredBlock338Stack1.
            recoveredBlock338PC := 361.
        ].
        recoveredBlock338Step = 361 ifTrue: [
            recoveredBlock338Stack1 := recoveredLocal5.
            recoveredBlock338PC := 364.
        ].
        recoveredBlock338Step = 364 ifTrue: [
            recoveredBlock338Stack1 := (recoveredBlock338Stack1) isError.
            recoveredBlock338PC := 366.
        ].
        recoveredBlock338Step = 366 ifTrue: [
            (recoveredBlock338Stack1) ifTrue: [recoveredBlock338PC := 370] ifFalse: [recoveredBlock338PC := 382].
        ].
        recoveredBlock338Step = 370 ifTrue: [
            recoveredBlock338Stack1 := self.
            recoveredBlock338PC := 371.
        ].
        recoveredBlock338Step = 371 ifTrue: [
            (recoveredBlock338Stack1) etasDevHalt.
            recoveredBlock338PC := 373.
        ].
        recoveredBlock338Step = 373 ifTrue: [
            recoveredBlock338Stack1 := nil.
            recoveredBlock338PC := 374.
        ].
        recoveredBlock338Step = 374 ifTrue: [
            recoveredBlock338Stack2 := recoveredBlock338Stack1.
            recoveredBlock338PC := 375.
        ].
        recoveredBlock338Step = 375 ifTrue: [
            recoveredLocal5 := recoveredBlock338Stack2.
            recoveredBlock338PC := 378.
        ].
        recoveredBlock338Step = 378 ifTrue: [
            recoveredBlock338PC := 387.
        ].
        recoveredBlock338Step = 382 ifTrue: [
            recoveredBlock338Stack1 := self.
            recoveredBlock338PC := 383.
        ].
        recoveredBlock338Step = 383 ifTrue: [
            recoveredBlock338Stack2 := recoveredBlock338Stack1.
            recoveredBlock338PC := 384.
        ].
        recoveredBlock338Step = 384 ifTrue: [
            recoveredLocal5 := recoveredBlock338Stack2.
            recoveredBlock338PC := 387.
        ].
        recoveredBlock338Step = 387 ifTrue: [
            recoveredBlock338Result := recoveredBlock338Stack1.
            recoveredBlock338Done := true.
        ].
    ].
    recoveredBlock338Result
].
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack2 := 'Creating ZIP Archive'.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            (recoveredStack0) execLongOperation: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack2 := 'deletion of temp path failed'.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack1 := (recoveredStack1) deletePathRecursive: (recoveredStack2).
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack2 := 'deletion of temp path failed'.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200067c4; bytecode file offset 0x159ac"
!ASDEHooksSpecificationToolbox class methodsFor: 'recovered'!
toolboxDescriptor
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ETASBinaryHexFile.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ASCET-EHooksSpecification'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'FEP-ASD-EHooksSpecification'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := 'none'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) packageName: (recoveredStack3) application: (recoveredStack4) fileName: (recoveredStack5).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'SGProjectEditorView'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := '~Tools'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := '~EHOOKS'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := '~Start EHOOKS...'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := [:block28001950Arg1 | 
    | block28001950Local1 block28001950Local2 block28001950Stack0 block28001950Stack1 block28001950Stack2 block28001950Stack3 block28001950Stack4 block28001950PC block28001950Step block28001950Done block28001950Result |
    block28001950Stack0 := self.
    block28001950PC := 4.
    block28001950Done := false.
    [block28001950Done not] whileTrue: [
        block28001950Step := block28001950PC.
        block28001950Step = 4 ifTrue: [
            block28001950Stack1 := false.
            block28001950PC := 5.
        ].
        block28001950Step = 5 ifTrue: [
            block28001950Stack2 := block28001950Arg1.
            block28001950PC := 6.
        ].
        block28001950Step = 6 ifTrue: [
            block28001950Stack2 := (block28001950Stack2) uiController.
            block28001950PC := 8.
        ].
        block28001950Step = 8 ifTrue: [
            block28001950Stack2 := (block28001950Stack2) item.
            block28001950PC := 10.
        ].
        block28001950Step = 10 ifTrue: [
            block28001950Stack3 := block28001950Stack2.
            block28001950PC := 11.
        ].
        block28001950Step = 11 ifTrue: [
            block28001950Local2 := block28001950Stack3.
            block28001950PC := 12.
        ].
        block28001950Step = 12 ifTrue: [
            block28001950Stack2 := (block28001950Stack2) isProject.
            block28001950PC := 14.
        ].
        block28001950Step = 14 ifTrue: [
            (block28001950Stack2) ifTrue: [block28001950PC := 18] ifFalse: [block28001950PC := 51].
        ].
        block28001950Step = 18 ifTrue: [
            block28001950Stack2 := block28001950Local2.
            block28001950PC := 19.
        ].
        block28001950Step = 19 ifTrue: [
            block28001950Stack2 := (block28001950Stack2) hasEHooksTarget.
            block28001950PC := 21.
        ].
        block28001950Step = 21 ifTrue: [
            (block28001950Stack2) ifTrue: [block28001950PC := 24] ifFalse: [block28001950PC := 51].
        ].
        block28001950Step = 24 ifTrue: [
            block28001950PC := 25.
        ].
        block28001950Step = 25 ifTrue: [
            block28001950Stack1 := false.
            block28001950PC := 26.
        ].
        block28001950Step = 26 ifTrue: [
            block28001950Stack2 := ASDEHooksSpecificationToolbox.
            block28001950PC := 28.
        ].
        block28001950Step = 28 ifTrue: [
            block28001950Stack3 := block28001950Arg1.
            block28001950PC := 29.
        ].
        block28001950Step = 29 ifTrue: [
            block28001950Stack2 := (block28001950Stack2) getEHooksWidget: (block28001950Stack3).
            block28001950PC := 31.
        ].
        block28001950Step = 31 ifTrue: [
            block28001950Stack3 := block28001950Stack2.
            block28001950PC := 32.
        ].
        block28001950Step = 32 ifTrue: [
            block28001950Local1 := block28001950Stack3.
            block28001950PC := 33.
        ].
        block28001950Step = 33 ifTrue: [
            (block28001950Stack2 == nil) ifTrue: [block28001950PC := 49] ifFalse: [block28001950PC := 36].
        ].
        block28001950Step = 36 ifTrue: [
            block28001950PC := 37.
        ].
        block28001950Step = 37 ifTrue: [
            block28001950Stack1 := false.
            block28001950PC := 38.
        ].
        block28001950Step = 38 ifTrue: [
            block28001950Stack2 := block28001950Local1.
            block28001950PC := 39.
        ].
        block28001950Step = 39 ifTrue: [
            block28001950Stack2 := (block28001950Stack2) itemIsModifiable.
            block28001950PC := 41.
        ].
        block28001950Step = 41 ifTrue: [
            (block28001950Stack2) ifTrue: [block28001950PC := 44] ifFalse: [block28001950PC := 49].
        ].
        block28001950Step = 44 ifTrue: [
            block28001950PC := 45.
        ].
        block28001950Step = 45 ifTrue: [
            block28001950Stack1 := block28001950Local1.
            block28001950PC := 46.
        ].
        block28001950Step = 46 ifTrue: [
            block28001950Stack1 := (block28001950Stack1) eHooksConfig.
            block28001950PC := 48.
        ].
        block28001950Step = 48 ifTrue: [
            block28001950Stack1 := (block28001950Stack1) notNil.
            block28001950PC := 49.
        ].
        block28001950Step = 49 ifTrue: [
            block28001950Stack2 := nil.
            block28001950PC := 50.
        ].
        block28001950Step = 50 ifTrue: [
            block28001950Local1 := block28001950Stack2.
            block28001950PC := 51.
        ].
        block28001950Step = 51 ifTrue: [
            block28001950Result := block28001950Stack1.
            block28001950Done := true.
        ].
    ].
    block28001950Result
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack7 := [:recoveredBlock80Arg1 | 
    | recoveredBlock80Value0 recoveredBlock80Value1 |
    recoveredBlock80Value0 := recoveredBlock80Arg1.
    recoveredBlock80Value1 := (self) menuEHooksOpen: (recoveredBlock80Value0).
    recoveredBlock80Value1
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack8 := 'EHOOKS change configuration file'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) addSubMenuCall: (recoveredStack2) menu: (recoveredStack3) submenu: (recoveredStack4) item: (recoveredStack5) enable: (recoveredStack6) action: (recoveredStack7) description: (recoveredStack8).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 'SGProjectEditorView'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := '~Tools'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := '~EHOOKS'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack5 := ''.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack6 := [:block28001974Arg1 | 
    true
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack7 := [:block28001998Arg1 | 
    nil
].
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack8 := 'line'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) addSubMenuCall: (recoveredStack2) menu: (recoveredStack3) submenu: (recoveredStack4) item: (recoveredStack5) enable: (recoveredStack6) action: (recoveredStack7) description: (recoveredStack8).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := 'SGProjectEditorView'.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := '~Tools'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack4 := '~EHOOKS'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack5 := '~Perform EHOOKS automapping (overwrite existing mappings)...'.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack6 := [:block280019bcArg1 | 
    | block280019bcLocal1 block280019bcLocal2 block280019bcStack0 block280019bcStack1 block280019bcStack2 block280019bcStack3 block280019bcStack4 block280019bcPC block280019bcStep block280019bcDone block280019bcResult |
    block280019bcStack0 := self.
    block280019bcPC := 4.
    block280019bcDone := false.
    [block280019bcDone not] whileTrue: [
        block280019bcStep := block280019bcPC.
        block280019bcStep = 4 ifTrue: [
            block280019bcStack1 := false.
            block280019bcPC := 5.
        ].
        block280019bcStep = 5 ifTrue: [
            block280019bcStack2 := block280019bcArg1.
            block280019bcPC := 6.
        ].
        block280019bcStep = 6 ifTrue: [
            block280019bcStack2 := (block280019bcStack2) uiController.
            block280019bcPC := 8.
        ].
        block280019bcStep = 8 ifTrue: [
            block280019bcStack2 := (block280019bcStack2) item.
            block280019bcPC := 10.
        ].
        block280019bcStep = 10 ifTrue: [
            block280019bcStack3 := block280019bcStack2.
            block280019bcPC := 11.
        ].
        block280019bcStep = 11 ifTrue: [
            block280019bcLocal2 := block280019bcStack3.
            block280019bcPC := 12.
        ].
        block280019bcStep = 12 ifTrue: [
            block280019bcStack2 := (block280019bcStack2) isProject.
            block280019bcPC := 14.
        ].
        block280019bcStep = 14 ifTrue: [
            (block280019bcStack2) ifTrue: [block280019bcPC := 18] ifFalse: [block280019bcPC := 51].
        ].
        block280019bcStep = 18 ifTrue: [
            block280019bcStack2 := block280019bcLocal2.
            block280019bcPC := 19.
        ].
        block280019bcStep = 19 ifTrue: [
            block280019bcStack2 := (block280019bcStack2) hasEHooksTarget.
            block280019bcPC := 21.
        ].
        block280019bcStep = 21 ifTrue: [
            (block280019bcStack2) ifTrue: [block280019bcPC := 24] ifFalse: [block280019bcPC := 51].
        ].
        block280019bcStep = 24 ifTrue: [
            block280019bcPC := 25.
        ].
        block280019bcStep = 25 ifTrue: [
            block280019bcStack1 := false.
            block280019bcPC := 26.
        ].
        block280019bcStep = 26 ifTrue: [
            block280019bcStack2 := ASDEHooksSpecificationToolbox.
            block280019bcPC := 28.
        ].
        block280019bcStep = 28 ifTrue: [
            block280019bcStack3 := block280019bcArg1.
            block280019bcPC := 29.
        ].
        block280019bcStep = 29 ifTrue: [
            block280019bcStack2 := (block280019bcStack2) getEHooksWidget: (block280019bcStack3).
            block280019bcPC := 31.
        ].
        block280019bcStep = 31 ifTrue: [
            block280019bcStack3 := block280019bcStack2.
            block280019bcPC := 32.
        ].
        block280019bcStep = 32 ifTrue: [
            block280019bcLocal1 := block280019bcStack3.
            block280019bcPC := 33.
        ].
        block280019bcStep = 33 ifTrue: [
            (block280019bcStack2 == nil) ifTrue: [block280019bcPC := 49] ifFalse: [block280019bcPC := 36].
        ].
        block280019bcStep = 36 ifTrue: [
            block280019bcPC := 37.
        ].
        block280019bcStep = 37 ifTrue: [
            block280019bcStack1 := false.
            block280019bcPC := 38.
        ].
        block280019bcStep = 38 ifTrue: [
            block280019bcStack2 := block280019bcLocal1.
            block280019bcPC := 39.
        ].
        block280019bcStep = 39 ifTrue: [
            block280019bcStack2 := (block280019bcStack2) itemIsModifiable.
            block280019bcPC := 41.
        ].
        block280019bcStep = 41 ifTrue: [
            (block280019bcStack2) ifTrue: [block280019bcPC := 44] ifFalse: [block280019bcPC := 49].
        ].
        block280019bcStep = 44 ifTrue: [
            block280019bcPC := 45.
        ].
        block280019bcStep = 45 ifTrue: [
            block280019bcStack1 := block280019bcLocal1.
            block280019bcPC := 46.
        ].
        block280019bcStep = 46 ifTrue: [
            block280019bcStack1 := (block280019bcStack1) eHooksConfig.
            block280019bcPC := 48.
        ].
        block280019bcStep = 48 ifTrue: [
            block280019bcStack1 := (block280019bcStack1) notNil.
            block280019bcPC := 49.
        ].
        block280019bcStep = 49 ifTrue: [
            block280019bcStack2 := nil.
            block280019bcPC := 50.
        ].
        block280019bcStep = 50 ifTrue: [
            block280019bcLocal1 := block280019bcStack2.
            block280019bcPC := 51.
        ].
        block280019bcStep = 51 ifTrue: [
            block280019bcResult := block280019bcStack1.
            block280019bcDone := true.
        ].
    ].
    block280019bcResult
].
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack7 := [:recoveredBlock188Arg1 | 
    | recoveredBlock188Value0 recoveredBlock188Value1 |
    recoveredBlock188Value0 := recoveredBlock188Arg1.
    recoveredBlock188Value1 := (self) menuEHooksAutomapping: (recoveredBlock188Value0) overwriteExisting: (true).
    recoveredBlock188Value1
].
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack8 := 'EHOOKS change configuration file'.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack1) addSubMenuCall: (recoveredStack2) menu: (recoveredStack3) submenu: (recoveredStack4) item: (recoveredStack5) enable: (recoveredStack6) action: (recoveredStack7) description: (recoveredStack8).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := 'SGProjectEditorView'.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack3 := '~Tools'.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack4 := '~EHOOKS'.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack5 := '~Perform EHOOKS automapping (keep existing mappings)...'.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack6 := [:block280019e0Arg1 | 
    | block280019e0Local1 block280019e0Local2 block280019e0Stack0 block280019e0Stack1 block280019e0Stack2 block280019e0Stack3 block280019e0Stack4 block280019e0PC block280019e0Step block280019e0Done block280019e0Result |
    block280019e0Stack0 := self.
    block280019e0PC := 4.
    block280019e0Done := false.
    [block280019e0Done not] whileTrue: [
        block280019e0Step := block280019e0PC.
        block280019e0Step = 4 ifTrue: [
            block280019e0Stack1 := false.
            block280019e0PC := 5.
        ].
        block280019e0Step = 5 ifTrue: [
            block280019e0Stack2 := block280019e0Arg1.
            block280019e0PC := 6.
        ].
        block280019e0Step = 6 ifTrue: [
            block280019e0Stack2 := (block280019e0Stack2) uiController.
            block280019e0PC := 8.
        ].
        block280019e0Step = 8 ifTrue: [
            block280019e0Stack2 := (block280019e0Stack2) item.
            block280019e0PC := 10.
        ].
        block280019e0Step = 10 ifTrue: [
            block280019e0Stack3 := block280019e0Stack2.
            block280019e0PC := 11.
        ].
        block280019e0Step = 11 ifTrue: [
            block280019e0Local2 := block280019e0Stack3.
            block280019e0PC := 12.
        ].
        block280019e0Step = 12 ifTrue: [
            block280019e0Stack2 := (block280019e0Stack2) isProject.
            block280019e0PC := 14.
        ].
        block280019e0Step = 14 ifTrue: [
            (block280019e0Stack2) ifTrue: [block280019e0PC := 18] ifFalse: [block280019e0PC := 51].
        ].
        block280019e0Step = 18 ifTrue: [
            block280019e0Stack2 := block280019e0Local2.
            block280019e0PC := 19.
        ].
        block280019e0Step = 19 ifTrue: [
            block280019e0Stack2 := (block280019e0Stack2) hasEHooksTarget.
            block280019e0PC := 21.
        ].
        block280019e0Step = 21 ifTrue: [
            (block280019e0Stack2) ifTrue: [block280019e0PC := 24] ifFalse: [block280019e0PC := 51].
        ].
        block280019e0Step = 24 ifTrue: [
            block280019e0PC := 25.
        ].
        block280019e0Step = 25 ifTrue: [
            block280019e0Stack1 := false.
            block280019e0PC := 26.
        ].
        block280019e0Step = 26 ifTrue: [
            block280019e0Stack2 := ASDEHooksSpecificationToolbox.
            block280019e0PC := 28.
        ].
        block280019e0Step = 28 ifTrue: [
            block280019e0Stack3 := block280019e0Arg1.
            block280019e0PC := 29.
        ].
        block280019e0Step = 29 ifTrue: [
            block280019e0Stack2 := (block280019e0Stack2) getEHooksWidget: (block280019e0Stack3).
            block280019e0PC := 31.
        ].
        block280019e0Step = 31 ifTrue: [
            block280019e0Stack3 := block280019e0Stack2.
            block280019e0PC := 32.
        ].
        block280019e0Step = 32 ifTrue: [
            block280019e0Local1 := block280019e0Stack3.
            block280019e0PC := 33.
        ].
        block280019e0Step = 33 ifTrue: [
            (block280019e0Stack2 == nil) ifTrue: [block280019e0PC := 49] ifFalse: [block280019e0PC := 36].
        ].
        block280019e0Step = 36 ifTrue: [
            block280019e0PC := 37.
        ].
        block280019e0Step = 37 ifTrue: [
            block280019e0Stack1 := false.
            block280019e0PC := 38.
        ].
        block280019e0Step = 38 ifTrue: [
            block280019e0Stack2 := block280019e0Local1.
            block280019e0PC := 39.
        ].
        block280019e0Step = 39 ifTrue: [
            block280019e0Stack2 := (block280019e0Stack2) itemIsModifiable.
            block280019e0PC := 41.
        ].
        block280019e0Step = 41 ifTrue: [
            (block280019e0Stack2) ifTrue: [block280019e0PC := 44] ifFalse: [block280019e0PC := 49].
        ].
        block280019e0Step = 44 ifTrue: [
            block280019e0PC := 45.
        ].
        block280019e0Step = 45 ifTrue: [
            block280019e0Stack1 := block280019e0Local1.
            block280019e0PC := 46.
        ].
        block280019e0Step = 46 ifTrue: [
            block280019e0Stack1 := (block280019e0Stack1) eHooksConfig.
            block280019e0PC := 48.
        ].
        block280019e0Step = 48 ifTrue: [
            block280019e0Stack1 := (block280019e0Stack1) notNil.
            block280019e0PC := 49.
        ].
        block280019e0Step = 49 ifTrue: [
            block280019e0Stack2 := nil.
            block280019e0PC := 50.
        ].
        block280019e0Step = 50 ifTrue: [
            block280019e0Local1 := block280019e0Stack2.
            block280019e0PC := 51.
        ].
        block280019e0Step = 51 ifTrue: [
            block280019e0Result := block280019e0Stack1.
            block280019e0Done := true.
        ].
    ].
    block280019e0Result
].
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack7 := [:recoveredBlock266Arg1 | 
    | recoveredBlock266Value0 recoveredBlock266Value1 |
    recoveredBlock266Value0 := recoveredBlock266Arg1.
    recoveredBlock266Value1 := (self) menuEHooksAutomapping: (recoveredBlock266Value0) overwriteExisting: (false).
    recoveredBlock266Value1
].
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack8 := 'EHOOKS change configuration file'.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack1) addSubMenuCall: (recoveredStack2) menu: (recoveredStack3) submenu: (recoveredStack4) item: (recoveredStack5) enable: (recoveredStack6) action: (recoveredStack7) description: (recoveredStack8).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := 'SGProjectEditorView'.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack3 := '~Tools'.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack4 := '~EHOOKS'.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack5 := 'Cancel ~automapping highlights'.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack6 := [:block28001a04Arg1 | 
    | block28001a04Local1 block28001a04Local2 block28001a04Stack0 block28001a04Stack1 block28001a04Stack2 block28001a04Stack3 block28001a04Stack4 block28001a04PC block28001a04Step block28001a04Done block28001a04Result |
    block28001a04Stack0 := self.
    block28001a04PC := 4.
    block28001a04Done := false.
    [block28001a04Done not] whileTrue: [
        block28001a04Step := block28001a04PC.
        block28001a04Step = 4 ifTrue: [
            block28001a04Stack1 := false.
            block28001a04PC := 5.
        ].
        block28001a04Step = 5 ifTrue: [
            block28001a04Stack2 := block28001a04Arg1.
            block28001a04PC := 6.
        ].
        block28001a04Step = 6 ifTrue: [
            block28001a04Stack2 := (block28001a04Stack2) uiController.
            block28001a04PC := 8.
        ].
        block28001a04Step = 8 ifTrue: [
            block28001a04Stack2 := (block28001a04Stack2) item.
            block28001a04PC := 10.
        ].
        block28001a04Step = 10 ifTrue: [
            block28001a04Stack3 := block28001a04Stack2.
            block28001a04PC := 11.
        ].
        block28001a04Step = 11 ifTrue: [
            block28001a04Local2 := block28001a04Stack3.
            block28001a04PC := 12.
        ].
        block28001a04Step = 12 ifTrue: [
            block28001a04Stack2 := (block28001a04Stack2) isProject.
            block28001a04PC := 14.
        ].
        block28001a04Step = 14 ifTrue: [
            (block28001a04Stack2) ifTrue: [block28001a04PC := 18] ifFalse: [block28001a04PC := 52].
        ].
        block28001a04Step = 18 ifTrue: [
            block28001a04Stack2 := block28001a04Local2.
            block28001a04PC := 19.
        ].
        block28001a04Step = 19 ifTrue: [
            block28001a04Stack2 := (block28001a04Stack2) hasEHooksTarget.
            block28001a04PC := 21.
        ].
        block28001a04Step = 21 ifTrue: [
            (block28001a04Stack2) ifTrue: [block28001a04PC := 24] ifFalse: [block28001a04PC := 52].
        ].
        block28001a04Step = 24 ifTrue: [
            block28001a04PC := 25.
        ].
        block28001a04Step = 25 ifTrue: [
            block28001a04Stack1 := false.
            block28001a04PC := 26.
        ].
        block28001a04Step = 26 ifTrue: [
            block28001a04Stack2 := ASDEHooksSpecificationToolbox.
            block28001a04PC := 28.
        ].
        block28001a04Step = 28 ifTrue: [
            block28001a04Stack3 := block28001a04Arg1.
            block28001a04PC := 29.
        ].
        block28001a04Step = 29 ifTrue: [
            block28001a04Stack2 := (block28001a04Stack2) getEHooksWidget: (block28001a04Stack3).
            block28001a04PC := 31.
        ].
        block28001a04Step = 31 ifTrue: [
            block28001a04Stack3 := block28001a04Stack2.
            block28001a04PC := 32.
        ].
        block28001a04Step = 32 ifTrue: [
            block28001a04Local1 := block28001a04Stack3.
            block28001a04PC := 33.
        ].
        block28001a04Step = 33 ifTrue: [
            (block28001a04Stack2 == nil) ifTrue: [block28001a04PC := 50] ifFalse: [block28001a04PC := 36].
        ].
        block28001a04Step = 36 ifTrue: [
            block28001a04PC := 37.
        ].
        block28001a04Step = 37 ifTrue: [
            block28001a04Stack1 := false.
            block28001a04PC := 38.
        ].
        block28001a04Step = 38 ifTrue: [
            block28001a04Stack2 := block28001a04Local1.
            block28001a04PC := 39.
        ].
        block28001a04Step = 39 ifTrue: [
            block28001a04Stack2 := (block28001a04Stack2) eHooksConfig.
            block28001a04PC := 41.
        ].
        block28001a04Step = 41 ifTrue: [
            (block28001a04Stack2 == nil) ifTrue: [block28001a04PC := 50] ifFalse: [block28001a04PC := 44].
        ].
        block28001a04Step = 44 ifTrue: [
            block28001a04PC := 45.
        ].
        block28001a04Step = 45 ifTrue: [
            block28001a04Stack1 := block28001a04Local1.
            block28001a04PC := 46.
        ].
        block28001a04Step = 46 ifTrue: [
            block28001a04Stack1 := (block28001a04Stack1) eHooksCommunicationWidget.
            block28001a04PC := 48.
        ].
        block28001a04Step = 48 ifTrue: [
            block28001a04Stack1 := (block28001a04Stack1) isAutomappingActive.
            block28001a04PC := 50.
        ].
        block28001a04Step = 50 ifTrue: [
            block28001a04Stack2 := nil.
            block28001a04PC := 51.
        ].
        block28001a04Step = 51 ifTrue: [
            block28001a04Local1 := block28001a04Stack2.
            block28001a04PC := 52.
        ].
        block28001a04Step = 52 ifTrue: [
            block28001a04Result := block28001a04Stack1.
            block28001a04Done := true.
        ].
    ].
    block28001a04Result
].
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack7 := [:recoveredBlock345Arg1 | 
    | recoveredBlock345Value0 recoveredBlock345Value1 |
    recoveredBlock345Value0 := recoveredBlock345Arg1.
    recoveredBlock345Value1 := (self) menuEHooksAutomapping: (recoveredBlock345Value0) overwriteExisting: (false).
    recoveredBlock345Value1
].
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack8 := 'EHOOKS change configuration file'.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            (recoveredStack1) addSubMenuCall: (recoveredStack2) menu: (recoveredStack3) submenu: (recoveredStack4) item: (recoveredStack5) enable: (recoveredStack6) action: (recoveredStack7) description: (recoveredStack8).
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack2 := 'SGProjectEditorView'.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack3 := '~Tools'.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack4 := '~EHOOKS'.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack5 := ''.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack6 := [:block28001a28Arg1 | 
    true
].
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack7 := [:block28001a4cArg1 | 
    nil
].
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack8 := 'line'.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            (recoveredStack1) addSubMenuCall: (recoveredStack2) menu: (recoveredStack3) submenu: (recoveredStack4) item: (recoveredStack5) enable: (recoveredStack6) action: (recoveredStack7) description: (recoveredStack8).
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack2 := 'SGProjectEditorView'.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack3 := '~Tools'.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack4 := '~EHOOKS'.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack5 := '~Export...'.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack6 := [:block28001a70Arg1 | 
    | block28001a70Local1 block28001a70Stack0 block28001a70Stack1 block28001a70Stack2 block28001a70Stack3 block28001a70Stack4 block28001a70PC block28001a70Step block28001a70Done block28001a70Result |
    block28001a70Stack0 := self.
    block28001a70PC := 4.
    block28001a70Done := false.
    [block28001a70Done not] whileTrue: [
        block28001a70Step := block28001a70PC.
        block28001a70Step = 4 ifTrue: [
            block28001a70Stack1 := false.
            block28001a70PC := 5.
        ].
        block28001a70Step = 5 ifTrue: [
            block28001a70Stack2 := block28001a70Arg1.
            block28001a70PC := 6.
        ].
        block28001a70Step = 6 ifTrue: [
            block28001a70Stack2 := (block28001a70Stack2) uiController.
            block28001a70PC := 8.
        ].
        block28001a70Step = 8 ifTrue: [
            block28001a70Stack2 := (block28001a70Stack2) item.
            block28001a70PC := 10.
        ].
        block28001a70Step = 10 ifTrue: [
            block28001a70Stack3 := block28001a70Stack2.
            block28001a70PC := 11.
        ].
        block28001a70Step = 11 ifTrue: [
            block28001a70Local1 := block28001a70Stack3.
            block28001a70PC := 12.
        ].
        block28001a70Step = 12 ifTrue: [
            block28001a70Stack2 := (block28001a70Stack2) isProject.
            block28001a70PC := 14.
        ].
        block28001a70Step = 14 ifTrue: [
            (block28001a70Stack2) ifTrue: [block28001a70PC := 18] ifFalse: [block28001a70PC := 22].
        ].
        block28001a70Step = 18 ifTrue: [
            block28001a70PC := 19.
        ].
        block28001a70Step = 19 ifTrue: [
            block28001a70Stack1 := block28001a70Local1.
            block28001a70PC := 20.
        ].
        block28001a70Step = 20 ifTrue: [
            block28001a70Stack1 := (block28001a70Stack1) containsEHooksData.
            block28001a70PC := 22.
        ].
        block28001a70Step = 22 ifTrue: [
            block28001a70Result := block28001a70Stack1.
            block28001a70Done := true.
        ].
    ].
    block28001a70Result
].
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack7 := [:recoveredBlock425Arg1 | 
    | recoveredBlock425Value0 recoveredBlock425Value1 |
    recoveredBlock425Value0 := recoveredBlock425Arg1.
    recoveredBlock425Value1 := (self) menuExportEHooks: (recoveredBlock425Value0).
    recoveredBlock425Value1
].
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack8 := 'Export PSL configuration'.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            (recoveredStack1) addSubMenuCall: (recoveredStack2) menu: (recoveredStack3) submenu: (recoveredStack4) item: (recoveredStack5) enable: (recoveredStack6) action: (recoveredStack7) description: (recoveredStack8).
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack2 := 'SGProjectEditorView'.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack3 := '~Tools'.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack4 := '~EHOOKS'.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack5 := '~Import...'.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack6 := [:block28001a94Arg1 | 
    | block28001a94Local1 block28001a94Stack0 block28001a94Stack1 block28001a94Stack2 block28001a94Stack3 block28001a94Stack4 block28001a94PC block28001a94Step block28001a94Done block28001a94Result |
    block28001a94Stack0 := self.
    block28001a94PC := 4.
    block28001a94Done := false.
    [block28001a94Done not] whileTrue: [
        block28001a94Step := block28001a94PC.
        block28001a94Step = 4 ifTrue: [
            block28001a94Stack1 := false.
            block28001a94PC := 5.
        ].
        block28001a94Step = 5 ifTrue: [
            block28001a94Stack2 := block28001a94Arg1.
            block28001a94PC := 6.
        ].
        block28001a94Step = 6 ifTrue: [
            block28001a94Stack2 := (block28001a94Stack2) uiController.
            block28001a94PC := 8.
        ].
        block28001a94Step = 8 ifTrue: [
            block28001a94Stack2 := (block28001a94Stack2) item.
            block28001a94PC := 10.
        ].
        block28001a94Step = 10 ifTrue: [
            block28001a94Stack3 := block28001a94Stack2.
            block28001a94PC := 11.
        ].
        block28001a94Step = 11 ifTrue: [
            block28001a94Local1 := block28001a94Stack3.
            block28001a94PC := 12.
        ].
        block28001a94Step = 12 ifTrue: [
            block28001a94Stack2 := (block28001a94Stack2) isProject.
            block28001a94PC := 14.
        ].
        block28001a94Step = 14 ifTrue: [
            (block28001a94Stack2) ifTrue: [block28001a94PC := 18] ifFalse: [block28001a94PC := 30].
        ].
        block28001a94Step = 18 ifTrue: [
            block28001a94PC := 19.
        ].
        block28001a94Step = 19 ifTrue: [
            block28001a94Stack1 := false.
            block28001a94PC := 20.
        ].
        block28001a94Step = 20 ifTrue: [
            block28001a94Stack2 := block28001a94Local1.
            block28001a94PC := 21.
        ].
        block28001a94Step = 21 ifTrue: [
            block28001a94Stack2 := (block28001a94Stack2) modifiable.
            block28001a94PC := 23.
        ].
        block28001a94Step = 23 ifTrue: [
            (block28001a94Stack2) ifTrue: [block28001a94PC := 26] ifFalse: [block28001a94PC := 30].
        ].
        block28001a94Step = 26 ifTrue: [
            block28001a94PC := 27.
        ].
        block28001a94Step = 27 ifTrue: [
            block28001a94Stack1 := block28001a94Local1.
            block28001a94PC := 28.
        ].
        block28001a94Step = 28 ifTrue: [
            block28001a94Stack1 := (block28001a94Stack1) hasEHooksTarget.
            block28001a94PC := 30.
        ].
        block28001a94Step = 30 ifTrue: [
            block28001a94Result := block28001a94Stack1.
            block28001a94Done := true.
        ].
    ].
    block28001a94Result
].
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack7 := [:recoveredBlock483Arg1 | 
    | recoveredBlock483Value0 recoveredBlock483Value1 |
    recoveredBlock483Value0 := recoveredBlock483Arg1.
    recoveredBlock483Value1 := (self) menuImportEHooks: (recoveredBlock483Value0).
    recoveredBlock483Value1
].
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack8 := 'Import PSL configuration'.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            (recoveredStack1) addSubMenuCall: (recoveredStack2) menu: (recoveredStack3) submenu: (recoveredStack4) item: (recoveredStack5) enable: (recoveredStack6) action: (recoveredStack7) description: (recoveredStack8).
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x20007088; bytecode file offset 0x162c4"
!ASDEHooksSpecificationToolbox class methodsFor: 'recovered'!
menuImportEHooks: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) getEHooksASCETConfigFile.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal14 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'Overwrite existing EHOOKS configuration: '.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := '?'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) confirmWarning: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := '*.Zip'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := 'ZIP files'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := '*.*'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := 'All files'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := CommentConnectionLineStyle.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := 'Select Import File'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := CommentConnectionLineStyle.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := (recoveredStack4) getOrCreateExportPath.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack5 := '*.zip'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack6 := recoveredLocal12.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack7 := true.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack8 := false.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack9 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) promptForFileNameLabel: (recoveredStack2) defaultFileName: (recoveredStack3) searchPath: (recoveredStack4) searchMask: (recoveredStack5) filterDict: (recoveredStack6) shouldExist: (recoveredStack7) multipleSelect: (recoveredStack8) parentWindow: (recoveredStack9).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal11 := recoveredStack2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) getNewTempPath.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock103Stack0 recoveredBlock103Stack1 recoveredBlock103Stack2 recoveredBlock103Stack3 recoveredBlock103Stack4 recoveredBlock103Stack5 recoveredBlock103PC recoveredBlock103Step recoveredBlock103Done recoveredBlock103Result |
    recoveredBlock103Stack0 := self.
    recoveredBlock103PC := 110.
    recoveredBlock103Done := false.
    [recoveredBlock103Done not] whileTrue: [
        recoveredBlock103Step := recoveredBlock103PC.
        recoveredBlock103Step = 110 ifTrue: [
            recoveredBlock103Stack1 := AMLXcpPag.
            recoveredBlock103PC := 112.
        ].
        recoveredBlock103Step = 112 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) new.
            recoveredBlock103PC := 114.
        ].
        recoveredBlock103Step = 114 ifTrue: [
            recoveredBlock103Stack2 := recoveredLocal11.
            recoveredBlock103PC := 117.
        ].
        recoveredBlock103Step = 117 ifTrue: [
            recoveredBlock103Stack3 := recoveredLocal9.
            recoveredBlock103PC := 120.
        ].
        recoveredBlock103Step = 120 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) unzipAllFrom: (recoveredBlock103Stack2) into: (recoveredBlock103Stack3).
            recoveredBlock103PC := 122.
        ].
        recoveredBlock103Step = 122 ifTrue: [
            recoveredLocal10 := recoveredBlock103Stack1.
            recoveredBlock103PC := 125.
        ].
        recoveredBlock103Step = 125 ifTrue: [
            recoveredBlock103Stack1 := recoveredLocal10.
            recoveredBlock103PC := 128.
        ].
        recoveredBlock103Step = 128 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) isError.
            recoveredBlock103PC := 130.
        ].
        recoveredBlock103Step = 130 ifTrue: [
            (recoveredBlock103Stack1) ifTrue: [recoveredBlock103PC := 134] ifFalse: [recoveredBlock103PC := 161].
        ].
        recoveredBlock103Step = 134 ifTrue: [
            recoveredBlock103Stack1 := ASDSimCTGSLVarStepSolver.
            recoveredBlock103PC := 136.
        ].
        recoveredBlock103Step = 136 ifTrue: [
            recoveredBlock103Stack2 := 'Error when unzipping file '.
            recoveredBlock103PC := 138.
        ].
        recoveredBlock103Step = 138 ifTrue: [
            recoveredBlock103Stack3 := recoveredLocal11.
            recoveredBlock103PC := 141.
        ].
        recoveredBlock103Step = 141 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 143.
        ].
        recoveredBlock103Step = 143 ifTrue: [
            recoveredBlock103Stack3 := '. '.
            recoveredBlock103PC := 145.
        ].
        recoveredBlock103Step = 145 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 147.
        ].
        recoveredBlock103Step = 147 ifTrue: [
            recoveredBlock103Stack3 := EHooksImportAborted.
            recoveredBlock103PC := 149.
        ].
        recoveredBlock103Step = 149 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 151.
        ].
        recoveredBlock103Step = 151 ifTrue: [
            recoveredBlock103Stack3 := EHooksFullStop.
            recoveredBlock103PC := 153.
        ].
        recoveredBlock103Step = 153 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 155.
        ].
        recoveredBlock103Step = 155 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) errorMessage: (recoveredBlock103Stack2).
            recoveredBlock103PC := 157.
        ].
        recoveredBlock103Step = 157 ifTrue: [
            (recoveredBlock103Stack1) prompt.
            recoveredBlock103PC := 159.
        ].
        recoveredBlock103Step = 159 ifTrue: [
            recoveredBlock103Stack1 := nil.
            recoveredBlock103PC := 160.
        ].
        recoveredBlock103Step = 160 ifTrue: [
            ^recoveredBlock103Stack1
        ].
        recoveredBlock103Step = 161 ifTrue: [
            recoveredBlock103Stack1 := CfsDirectoryDescriptor.
            recoveredBlock103PC := 163.
        ].
        recoveredBlock103Step = 163 ifTrue: [
            recoveredBlock103Stack2 := '*.*'.
            recoveredBlock103PC := 165.
        ].
        recoveredBlock103Step = 165 ifTrue: [
            recoveredBlock103Stack3 := recoveredLocal9.
            recoveredBlock103PC := 168.
        ].
        recoveredBlock103Step = 168 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) findFiles: (recoveredBlock103Stack2) in: (recoveredBlock103Stack3).
            recoveredBlock103PC := 170.
        ].
        recoveredBlock103Step = 170 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Stack1.
            recoveredBlock103PC := 171.
        ].
        recoveredBlock103Step = 171 ifTrue: [
            recoveredLocal8 := recoveredBlock103Stack2.
            recoveredBlock103PC := 174.
        ].
        recoveredBlock103Step = 174 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) isEmpty.
            recoveredBlock103PC := 176.
        ].
        recoveredBlock103Step = 176 ifTrue: [
            (recoveredBlock103Stack1) ifTrue: [recoveredBlock103PC := 180] ifFalse: [recoveredBlock103PC := 207].
        ].
        recoveredBlock103Step = 180 ifTrue: [
            recoveredBlock103Stack1 := ASDSimCTGSLVarStepSolver.
            recoveredBlock103PC := 182.
        ].
        recoveredBlock103Step = 182 ifTrue: [
            recoveredBlock103Stack2 := 'Empty zip file '.
            recoveredBlock103PC := 184.
        ].
        recoveredBlock103Step = 184 ifTrue: [
            recoveredBlock103Stack3 := recoveredLocal11.
            recoveredBlock103PC := 187.
        ].
        recoveredBlock103Step = 187 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 189.
        ].
        recoveredBlock103Step = 189 ifTrue: [
            recoveredBlock103Stack3 := '. '.
            recoveredBlock103PC := 191.
        ].
        recoveredBlock103Step = 191 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 193.
        ].
        recoveredBlock103Step = 193 ifTrue: [
            recoveredBlock103Stack3 := EHooksImportAborted.
            recoveredBlock103PC := 195.
        ].
        recoveredBlock103Step = 195 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 197.
        ].
        recoveredBlock103Step = 197 ifTrue: [
            recoveredBlock103Stack3 := EHooksFullStop.
            recoveredBlock103PC := 199.
        ].
        recoveredBlock103Step = 199 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 201.
        ].
        recoveredBlock103Step = 201 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) errorMessage: (recoveredBlock103Stack2).
            recoveredBlock103PC := 203.
        ].
        recoveredBlock103Step = 203 ifTrue: [
            (recoveredBlock103Stack1) prompt.
            recoveredBlock103PC := 205.
        ].
        recoveredBlock103Step = 205 ifTrue: [
            recoveredBlock103Stack1 := nil.
            recoveredBlock103PC := 206.
        ].
        recoveredBlock103Step = 206 ifTrue: [
            ^recoveredBlock103Stack1
        ].
        recoveredBlock103Step = 207 ifTrue: [
            recoveredBlock103Stack1 := recoveredLocal8.
            recoveredBlock103PC := 210.
        ].
        recoveredBlock103Step = 210 ifTrue: [
            recoveredBlock103Stack2 := [:block28001b48Arg1 | 
    | block28001b48Value0 block28001b48Value1 block28001b48Value2 block28001b48Value3 |
    block28001b48Value0 := block28001b48Arg1.
    block28001b48Value1 := (block28001b48Value0) dName.
    block28001b48Value2 := AscetConfigFileExt.
    block28001b48Value3 := (block28001b48Value1) endsWithIgnoreCase: (block28001b48Value2).
    block28001b48Value3
].
            recoveredBlock103PC := 212.
        ].
        recoveredBlock103Step = 212 ifTrue: [
            recoveredBlock103PC := 224.
        ].
        recoveredBlock103Step = 224 ifTrue: [
            recoveredBlock103Stack3 := [].
            recoveredBlock103PC := 226.
        ].
        recoveredBlock103Step = 226 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) detect: (recoveredBlock103Stack2) ifNone: (recoveredBlock103Stack3).
            recoveredBlock103PC := 228.
        ].
        recoveredBlock103Step = 228 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Stack1.
            recoveredBlock103PC := 229.
        ].
        recoveredBlock103Step = 229 ifTrue: [
            recoveredLocal7 := recoveredBlock103Stack2.
            recoveredBlock103PC := 232.
        ].
        recoveredBlock103Step = 232 ifTrue: [
            (recoveredBlock103Stack1 ~~ nil) ifTrue: [recoveredBlock103PC := 254] ifFalse: [recoveredBlock103PC := 236].
        ].
        recoveredBlock103Step = 236 ifTrue: [
            recoveredBlock103Stack1 := ASDSimCTGSLVarStepSolver.
            recoveredBlock103PC := 238.
        ].
        recoveredBlock103Step = 238 ifTrue: [
            recoveredBlock103Stack2 := 'Missing ASCET configuration file. '.
            recoveredBlock103PC := 240.
        ].
        recoveredBlock103Step = 240 ifTrue: [
            recoveredBlock103Stack3 := EHooksImportAborted.
            recoveredBlock103PC := 242.
        ].
        recoveredBlock103Step = 242 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 244.
        ].
        recoveredBlock103Step = 244 ifTrue: [
            recoveredBlock103Stack3 := EHooksFullStop.
            recoveredBlock103PC := 246.
        ].
        recoveredBlock103Step = 246 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 248.
        ].
        recoveredBlock103Step = 248 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) errorMessage: (recoveredBlock103Stack2).
            recoveredBlock103PC := 250.
        ].
        recoveredBlock103Step = 250 ifTrue: [
            (recoveredBlock103Stack1) prompt.
            recoveredBlock103PC := 252.
        ].
        recoveredBlock103Step = 252 ifTrue: [
            recoveredBlock103Stack1 := nil.
            recoveredBlock103PC := 253.
        ].
        recoveredBlock103Step = 253 ifTrue: [
            ^recoveredBlock103Stack1
        ].
        recoveredBlock103Step = 254 ifTrue: [
            recoveredBlock103Stack1 := recoveredLocal7.
            recoveredBlock103PC := 257.
        ].
        recoveredBlock103Step = 257 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) dName.
            recoveredBlock103PC := 259.
        ].
        recoveredBlock103Step = 259 ifTrue: [
            recoveredBlock103Stack2 := 1.
            recoveredBlock103PC := 261.
        ].
        recoveredBlock103Step = 261 ifTrue: [
            recoveredBlock103Stack3 := recoveredLocal7.
            recoveredBlock103PC := 264.
        ].
        recoveredBlock103Step = 264 ifTrue: [
            recoveredBlock103Stack3 := (recoveredBlock103Stack3) dName.
            recoveredBlock103PC := 266.
        ].
        recoveredBlock103Step = 266 ifTrue: [
            recoveredBlock103Stack4 := AscetConfigFileExt.
            recoveredBlock103PC := 268.
        ].
        recoveredBlock103Step = 268 ifTrue: [
            recoveredBlock103Stack3 := (recoveredBlock103Stack3) indexOfString: (recoveredBlock103Stack4).
            recoveredBlock103PC := 270.
        ].
        recoveredBlock103Step = 270 ifTrue: [
            recoveredBlock103Stack3 := (recoveredBlock103Stack3) + (-1).
            recoveredBlock103PC := 271.
        ].
        recoveredBlock103Step = 271 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) copyFrom: (recoveredBlock103Stack2) to: (recoveredBlock103Stack3).
            recoveredBlock103PC := 273.
        ].
        recoveredBlock103Step = 273 ifTrue: [
            recoveredLocal6 := recoveredBlock103Stack1.
            recoveredBlock103PC := 276.
        ].
        recoveredBlock103Step = 276 ifTrue: [
            recoveredBlock103Stack1 := recoveredLocal8.
            recoveredBlock103PC := 279.
        ].
        recoveredBlock103Step = 279 ifTrue: [
            recoveredBlock103Stack2 := [:block28001b6cArg1 | 
    | block28001b6cValue0 block28001b6cValue1 block28001b6cValue2 block28001b6cValue3 |
    block28001b6cValue0 := block28001b6cArg1.
    block28001b6cValue1 := (block28001b6cValue0) dName.
    block28001b6cValue2 := EHooksConfigFileExt.
    block28001b6cValue3 := (block28001b6cValue1) endsWithIgnoreCase: (block28001b6cValue2).
    block28001b6cValue3
].
            recoveredBlock103PC := 281.
        ].
        recoveredBlock103Step = 281 ifTrue: [
            recoveredBlock103PC := 292.
        ].
        recoveredBlock103Step = 292 ifTrue: [
            recoveredBlock103Stack3 := [].
            recoveredBlock103PC := 294.
        ].
        recoveredBlock103Step = 294 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) detect: (recoveredBlock103Stack2) ifNone: (recoveredBlock103Stack3).
            recoveredBlock103PC := 296.
        ].
        recoveredBlock103Step = 296 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Stack1.
            recoveredBlock103PC := 297.
        ].
        recoveredBlock103Step = 297 ifTrue: [
            recoveredLocal4 := recoveredBlock103Stack2.
            recoveredBlock103PC := 300.
        ].
        recoveredBlock103Step = 300 ifTrue: [
            (recoveredBlock103Stack1 ~~ nil) ifTrue: [recoveredBlock103PC := 322] ifFalse: [recoveredBlock103PC := 304].
        ].
        recoveredBlock103Step = 304 ifTrue: [
            recoveredBlock103Stack1 := ASDSimCTGSLVarStepSolver.
            recoveredBlock103PC := 306.
        ].
        recoveredBlock103Step = 306 ifTrue: [
            recoveredBlock103Stack2 := 'Missing EHOOKS configuration file. '.
            recoveredBlock103PC := 308.
        ].
        recoveredBlock103Step = 308 ifTrue: [
            recoveredBlock103Stack3 := EHooksImportAborted.
            recoveredBlock103PC := 310.
        ].
        recoveredBlock103Step = 310 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 312.
        ].
        recoveredBlock103Step = 312 ifTrue: [
            recoveredBlock103Stack3 := EHooksFullStop.
            recoveredBlock103PC := 314.
        ].
        recoveredBlock103Step = 314 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 316.
        ].
        recoveredBlock103Step = 316 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) errorMessage: (recoveredBlock103Stack2).
            recoveredBlock103PC := 318.
        ].
        recoveredBlock103Step = 318 ifTrue: [
            (recoveredBlock103Stack1) prompt.
            recoveredBlock103PC := 320.
        ].
        recoveredBlock103Step = 320 ifTrue: [
            recoveredBlock103Stack1 := nil.
            recoveredBlock103PC := 321.
        ].
        recoveredBlock103Step = 321 ifTrue: [
            ^recoveredBlock103Stack1
        ].
        recoveredBlock103Step = 322 ifTrue: [
            recoveredBlock103Stack1 := recoveredLocal4.
            recoveredBlock103PC := 325.
        ].
        recoveredBlock103Step = 325 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) dName.
            recoveredBlock103PC := 327.
        ].
        recoveredBlock103Step = 327 ifTrue: [
            recoveredBlock103Stack2 := 1.
            recoveredBlock103PC := 329.
        ].
        recoveredBlock103Step = 329 ifTrue: [
            recoveredBlock103Stack3 := recoveredLocal4.
            recoveredBlock103PC := 332.
        ].
        recoveredBlock103Step = 332 ifTrue: [
            recoveredBlock103Stack3 := (recoveredBlock103Stack3) dName.
            recoveredBlock103PC := 334.
        ].
        recoveredBlock103Step = 334 ifTrue: [
            recoveredBlock103Stack4 := EHooksConfigFileExt.
            recoveredBlock103PC := 336.
        ].
        recoveredBlock103Step = 336 ifTrue: [
            recoveredBlock103Stack3 := (recoveredBlock103Stack3) indexOfString: (recoveredBlock103Stack4).
            recoveredBlock103PC := 338.
        ].
        recoveredBlock103Step = 338 ifTrue: [
            recoveredBlock103Stack3 := (recoveredBlock103Stack3) + (-1).
            recoveredBlock103PC := 339.
        ].
        recoveredBlock103Step = 339 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) copyFrom: (recoveredBlock103Stack2) to: (recoveredBlock103Stack3).
            recoveredBlock103PC := 341.
        ].
        recoveredBlock103Step = 341 ifTrue: [
            recoveredLocal3 := recoveredBlock103Stack1.
            recoveredBlock103PC := 344.
        ].
        recoveredBlock103Step = 344 ifTrue: [
            recoveredBlock103Stack1 := ASDSpecialInfoImpl.
            recoveredBlock103PC := 346.
        ].
        recoveredBlock103Step = 346 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) getAppDataPath.
            recoveredBlock103PC := 348.
        ].
        recoveredBlock103Step = 348 ifTrue: [
            recoveredBlock103Stack2 := 'eHooks'.
            recoveredBlock103PC := 350.
        ].
        recoveredBlock103Step = 350 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) , (recoveredBlock103Stack2).
            recoveredBlock103PC := 352.
        ].
        recoveredBlock103Step = 352 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) asPathname.
            recoveredBlock103PC := 354.
        ].
        recoveredBlock103Step = 354 ifTrue: [
            recoveredLocal1 := recoveredBlock103Stack1.
            recoveredBlock103PC := 357.
        ].
        recoveredBlock103Step = 357 ifTrue: [
            recoveredBlock103Stack1 := CfsStat.
            recoveredBlock103PC := 359.
        ].
        recoveredBlock103Step = 359 ifTrue: [
            recoveredBlock103Stack2 := recoveredLocal1.
            recoveredBlock103PC := 362.
        ].
        recoveredBlock103Step = 362 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) ensurePath: (recoveredBlock103Stack2).
            recoveredBlock103PC := 364.
        ].
        recoveredBlock103Step = 364 ifTrue: [
            (recoveredBlock103Stack1) ifTrue: [recoveredBlock103PC := 395] ifFalse: [recoveredBlock103PC := 368].
        ].
        recoveredBlock103Step = 368 ifTrue: [
            recoveredBlock103Stack1 := ASDSimCTGSLVarStepSolver.
            recoveredBlock103PC := 370.
        ].
        recoveredBlock103Step = 370 ifTrue: [
            recoveredBlock103Stack2 := 'Import path not available: '.
            recoveredBlock103PC := 372.
        ].
        recoveredBlock103Step = 372 ifTrue: [
            recoveredBlock103Stack3 := recoveredLocal1.
            recoveredBlock103PC := 375.
        ].
        recoveredBlock103Step = 375 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 377.
        ].
        recoveredBlock103Step = 377 ifTrue: [
            recoveredBlock103Stack3 := '. '.
            recoveredBlock103PC := 379.
        ].
        recoveredBlock103Step = 379 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 381.
        ].
        recoveredBlock103Step = 381 ifTrue: [
            recoveredBlock103Stack3 := EHooksImportAborted.
            recoveredBlock103PC := 383.
        ].
        recoveredBlock103Step = 383 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 385.
        ].
        recoveredBlock103Step = 385 ifTrue: [
            recoveredBlock103Stack3 := EHooksFullStop.
            recoveredBlock103PC := 387.
        ].
        recoveredBlock103Step = 387 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 389.
        ].
        recoveredBlock103Step = 389 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) errorMessage: (recoveredBlock103Stack2).
            recoveredBlock103PC := 391.
        ].
        recoveredBlock103Step = 391 ifTrue: [
            (recoveredBlock103Stack1) prompt.
            recoveredBlock103PC := 393.
        ].
        recoveredBlock103Step = 393 ifTrue: [
            recoveredBlock103Stack1 := nil.
            recoveredBlock103PC := 394.
        ].
        recoveredBlock103Step = 394 ifTrue: [
            ^recoveredBlock103Stack1
        ].
        recoveredBlock103Step = 395 ifTrue: [
            recoveredBlock103Stack1 := recoveredLocal1.
            recoveredBlock103PC := 398.
        ].
        recoveredBlock103Step = 398 ifTrue: [
            recoveredBlock103Stack2 := recoveredLocal6.
            recoveredBlock103PC := 401.
        ].
        recoveredBlock103Step = 401 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) , (recoveredBlock103Stack2).
            recoveredBlock103PC := 403.
        ].
        recoveredBlock103Step = 403 ifTrue: [
            recoveredBlock103Stack2 := AscetConfigFileExt.
            recoveredBlock103PC := 405.
        ].
        recoveredBlock103Step = 405 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) , (recoveredBlock103Stack2).
            recoveredBlock103PC := 407.
        ].
        recoveredBlock103Step = 407 ifTrue: [
            recoveredLocal5 := recoveredBlock103Stack1.
            recoveredBlock103PC := 410.
        ].
        recoveredBlock103Step = 410 ifTrue: [
            recoveredBlock103Stack1 := recoveredLocal1.
            recoveredBlock103PC := 413.
        ].
        recoveredBlock103Step = 413 ifTrue: [
            recoveredBlock103Stack2 := recoveredLocal3.
            recoveredBlock103PC := 416.
        ].
        recoveredBlock103Step = 416 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) , (recoveredBlock103Stack2).
            recoveredBlock103PC := 418.
        ].
        recoveredBlock103Step = 418 ifTrue: [
            recoveredBlock103Stack2 := EHooksConfigFileExt.
            recoveredBlock103PC := 420.
        ].
        recoveredBlock103Step = 420 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) , (recoveredBlock103Stack2).
            recoveredBlock103PC := 422.
        ].
        recoveredBlock103Step = 422 ifTrue: [
            recoveredLocal2 := recoveredBlock103Stack1.
            recoveredBlock103PC := 425.
        ].
        recoveredBlock103Step = 425 ifTrue: [
            recoveredBlock103Stack1 := CfsStat.
            recoveredBlock103PC := 427.
        ].
        recoveredBlock103Step = 427 ifTrue: [
            recoveredBlock103Stack2 := recoveredLocal5.
            recoveredBlock103PC := 430.
        ].
        recoveredBlock103Step = 430 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) exists: (recoveredBlock103Stack2).
            recoveredBlock103PC := 432.
        ].
        recoveredBlock103Step = 432 ifTrue: [
            (recoveredBlock103Stack1) ifTrue: [recoveredBlock103PC := 436] ifFalse: [recoveredBlock103PC := 467].
        ].
        recoveredBlock103Step = 436 ifTrue: [
            recoveredBlock103Stack1 := self.
            recoveredBlock103PC := 437.
        ].
        recoveredBlock103Step = 437 ifTrue: [
            recoveredBlock103Stack2 := 'Overwrite existing file: '.
            recoveredBlock103PC := 439.
        ].
        recoveredBlock103Step = 439 ifTrue: [
            recoveredBlock103Stack3 := recoveredLocal5.
            recoveredBlock103PC := 442.
        ].
        recoveredBlock103Step = 442 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 444.
        ].
        recoveredBlock103Step = 444 ifTrue: [
            recoveredBlock103Stack3 := '?'.
            recoveredBlock103PC := 446.
        ].
        recoveredBlock103Step = 446 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 448.
        ].
        recoveredBlock103Step = 448 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) confirmWarning: (recoveredBlock103Stack2).
            recoveredBlock103PC := 450.
        ].
        recoveredBlock103Step = 450 ifTrue: [
            (recoveredBlock103Stack1) ifTrue: [recoveredBlock103PC := 456] ifFalse: [recoveredBlock103PC := 454].
        ].
        recoveredBlock103Step = 454 ifTrue: [
            recoveredBlock103Stack1 := nil.
            recoveredBlock103PC := 455.
        ].
        recoveredBlock103Step = 455 ifTrue: [
            ^recoveredBlock103Stack1
        ].
        recoveredBlock103Step = 456 ifTrue: [
            recoveredBlock103Stack1 := OSCall.
            recoveredBlock103PC := 458.
        ].
        recoveredBlock103Step = 458 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) new.
            recoveredBlock103PC := 460.
        ].
        recoveredBlock103Step = 460 ifTrue: [
            recoveredBlock103Stack2 := recoveredLocal5.
            recoveredBlock103PC := 463.
        ].
        recoveredBlock103Step = 463 ifTrue: [
            (recoveredBlock103Stack1) deleteFile: (recoveredBlock103Stack2).
            recoveredBlock103PC := 467.
        ].
        recoveredBlock103Step = 467 ifTrue: [
            recoveredBlock103Stack1 := CfsStat.
            recoveredBlock103PC := 469.
        ].
        recoveredBlock103Step = 469 ifTrue: [
            recoveredBlock103Stack2 := recoveredLocal2.
            recoveredBlock103PC := 472.
        ].
        recoveredBlock103Step = 472 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) exists: (recoveredBlock103Stack2).
            recoveredBlock103PC := 474.
        ].
        recoveredBlock103Step = 474 ifTrue: [
            (recoveredBlock103Stack1) ifTrue: [recoveredBlock103PC := 478] ifFalse: [recoveredBlock103PC := 509].
        ].
        recoveredBlock103Step = 478 ifTrue: [
            recoveredBlock103Stack1 := self.
            recoveredBlock103PC := 479.
        ].
        recoveredBlock103Step = 479 ifTrue: [
            recoveredBlock103Stack2 := 'Overwrite existing file: '.
            recoveredBlock103PC := 481.
        ].
        recoveredBlock103Step = 481 ifTrue: [
            recoveredBlock103Stack3 := recoveredLocal2.
            recoveredBlock103PC := 484.
        ].
        recoveredBlock103Step = 484 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 486.
        ].
        recoveredBlock103Step = 486 ifTrue: [
            recoveredBlock103Stack3 := '?'.
            recoveredBlock103PC := 488.
        ].
        recoveredBlock103Step = 488 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 490.
        ].
        recoveredBlock103Step = 490 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) confirmWarning: (recoveredBlock103Stack2).
            recoveredBlock103PC := 492.
        ].
        recoveredBlock103Step = 492 ifTrue: [
            (recoveredBlock103Stack1) ifTrue: [recoveredBlock103PC := 498] ifFalse: [recoveredBlock103PC := 496].
        ].
        recoveredBlock103Step = 496 ifTrue: [
            recoveredBlock103Stack1 := nil.
            recoveredBlock103PC := 497.
        ].
        recoveredBlock103Step = 497 ifTrue: [
            ^recoveredBlock103Stack1
        ].
        recoveredBlock103Step = 498 ifTrue: [
            recoveredBlock103Stack1 := OSCall.
            recoveredBlock103PC := 500.
        ].
        recoveredBlock103Step = 500 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) new.
            recoveredBlock103PC := 502.
        ].
        recoveredBlock103Step = 502 ifTrue: [
            recoveredBlock103Stack2 := recoveredLocal2.
            recoveredBlock103PC := 505.
        ].
        recoveredBlock103Step = 505 ifTrue: [
            (recoveredBlock103Stack1) deleteFile: (recoveredBlock103Stack2).
            recoveredBlock103PC := 509.
        ].
        recoveredBlock103Step = 509 ifTrue: [
            recoveredBlock103Stack1 := CfsFileDescriptor.
            recoveredBlock103PC := 512.
        ].
        recoveredBlock103Step = 512 ifTrue: [
            recoveredBlock103Stack2 := recoveredLocal9.
            recoveredBlock103PC := 515.
        ].
        recoveredBlock103Step = 515 ifTrue: [
            recoveredBlock103Stack3 := recoveredLocal7.
            recoveredBlock103PC := 518.
        ].
        recoveredBlock103Step = 518 ifTrue: [
            recoveredBlock103Stack3 := (recoveredBlock103Stack3) dName.
            recoveredBlock103PC := 520.
        ].
        recoveredBlock103Step = 520 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 522.
        ].
        recoveredBlock103Step = 522 ifTrue: [
            recoveredBlock103Stack3 := recoveredLocal5.
            recoveredBlock103PC := 525.
        ].
        recoveredBlock103Step = 525 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) copy: (recoveredBlock103Stack2) to: (recoveredBlock103Stack3).
            recoveredBlock103PC := 529.
        ].
        recoveredBlock103Step = 529 ifTrue: [
            recoveredBlock103Stack2 := 0.
            recoveredBlock103PC := 531.
        ].
        recoveredBlock103Step = 531 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) ~= (recoveredBlock103Stack2).
            recoveredBlock103PC := 532.
        ].
        recoveredBlock103Step = 532 ifTrue: [
            (recoveredBlock103Stack1) ifTrue: [recoveredBlock103PC := 536] ifFalse: [recoveredBlock103PC := 565].
        ].
        recoveredBlock103Step = 536 ifTrue: [
            recoveredBlock103Stack1 := ASDSimCTGSLVarStepSolver.
            recoveredBlock103PC := 538.
        ].
        recoveredBlock103Step = 538 ifTrue: [
            recoveredBlock103Stack2 := 'Unable to copy file to: '.
            recoveredBlock103PC := 542.
        ].
        recoveredBlock103Step = 542 ifTrue: [
            recoveredBlock103Stack3 := recoveredLocal5.
            recoveredBlock103PC := 545.
        ].
        recoveredBlock103Step = 545 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 547.
        ].
        recoveredBlock103Step = 547 ifTrue: [
            recoveredBlock103Stack3 := '. '.
            recoveredBlock103PC := 549.
        ].
        recoveredBlock103Step = 549 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 551.
        ].
        recoveredBlock103Step = 551 ifTrue: [
            recoveredBlock103Stack3 := EHooksImportAborted.
            recoveredBlock103PC := 553.
        ].
        recoveredBlock103Step = 553 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 555.
        ].
        recoveredBlock103Step = 555 ifTrue: [
            recoveredBlock103Stack3 := EHooksFullStop.
            recoveredBlock103PC := 557.
        ].
        recoveredBlock103Step = 557 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 559.
        ].
        recoveredBlock103Step = 559 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) errorMessage: (recoveredBlock103Stack2).
            recoveredBlock103PC := 561.
        ].
        recoveredBlock103Step = 561 ifTrue: [
            (recoveredBlock103Stack1) prompt.
            recoveredBlock103PC := 563.
        ].
        recoveredBlock103Step = 563 ifTrue: [
            recoveredBlock103Stack1 := nil.
            recoveredBlock103PC := 564.
        ].
        recoveredBlock103Step = 564 ifTrue: [
            ^recoveredBlock103Stack1
        ].
        recoveredBlock103Step = 565 ifTrue: [
            recoveredBlock103Stack1 := CfsFileDescriptor.
            recoveredBlock103PC := 568.
        ].
        recoveredBlock103Step = 568 ifTrue: [
            recoveredBlock103Stack2 := recoveredLocal9.
            recoveredBlock103PC := 571.
        ].
        recoveredBlock103Step = 571 ifTrue: [
            recoveredBlock103Stack3 := recoveredLocal4.
            recoveredBlock103PC := 574.
        ].
        recoveredBlock103Step = 574 ifTrue: [
            recoveredBlock103Stack3 := (recoveredBlock103Stack3) dName.
            recoveredBlock103PC := 576.
        ].
        recoveredBlock103Step = 576 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 578.
        ].
        recoveredBlock103Step = 578 ifTrue: [
            recoveredBlock103Stack3 := recoveredLocal2.
            recoveredBlock103PC := 581.
        ].
        recoveredBlock103Step = 581 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) copy: (recoveredBlock103Stack2) to: (recoveredBlock103Stack3).
            recoveredBlock103PC := 585.
        ].
        recoveredBlock103Step = 585 ifTrue: [
            recoveredBlock103Stack2 := 0.
            recoveredBlock103PC := 587.
        ].
        recoveredBlock103Step = 587 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) ~= (recoveredBlock103Stack2).
            recoveredBlock103PC := 588.
        ].
        recoveredBlock103Step = 588 ifTrue: [
            (recoveredBlock103Stack1) ifTrue: [recoveredBlock103PC := 592] ifFalse: [recoveredBlock103PC := 621].
        ].
        recoveredBlock103Step = 592 ifTrue: [
            recoveredBlock103Stack1 := ASDSimCTGSLVarStepSolver.
            recoveredBlock103PC := 594.
        ].
        recoveredBlock103Step = 594 ifTrue: [
            recoveredBlock103Stack2 := 'Unable to copy file to: '.
            recoveredBlock103PC := 598.
        ].
        recoveredBlock103Step = 598 ifTrue: [
            recoveredBlock103Stack3 := recoveredLocal2.
            recoveredBlock103PC := 601.
        ].
        recoveredBlock103Step = 601 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 603.
        ].
        recoveredBlock103Step = 603 ifTrue: [
            recoveredBlock103Stack3 := '. '.
            recoveredBlock103PC := 605.
        ].
        recoveredBlock103Step = 605 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 607.
        ].
        recoveredBlock103Step = 607 ifTrue: [
            recoveredBlock103Stack3 := EHooksImportAborted.
            recoveredBlock103PC := 609.
        ].
        recoveredBlock103Step = 609 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 611.
        ].
        recoveredBlock103Step = 611 ifTrue: [
            recoveredBlock103Stack3 := EHooksFullStop.
            recoveredBlock103PC := 613.
        ].
        recoveredBlock103Step = 613 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) , (recoveredBlock103Stack3).
            recoveredBlock103PC := 615.
        ].
        recoveredBlock103Step = 615 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) errorMessage: (recoveredBlock103Stack2).
            recoveredBlock103PC := 617.
        ].
        recoveredBlock103Step = 617 ifTrue: [
            (recoveredBlock103Stack1) prompt.
            recoveredBlock103PC := 619.
        ].
        recoveredBlock103Step = 619 ifTrue: [
            recoveredBlock103Stack1 := nil.
            recoveredBlock103PC := 620.
        ].
        recoveredBlock103Step = 620 ifTrue: [
            ^recoveredBlock103Stack1
        ].
        recoveredBlock103Step = 621 ifTrue: [
            recoveredBlock103Stack1 := recoveredLocal13.
            recoveredBlock103PC := 624.
        ].
        recoveredBlock103Step = 624 ifTrue: [
            recoveredBlock103Stack2 := recoveredLocal5.
            recoveredBlock103PC := 627.
        ].
        recoveredBlock103Step = 627 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) setEHooksProjectFile: (recoveredBlock103Stack2).
            recoveredBlock103PC := 631.
        ].
        recoveredBlock103Step = 631 ifTrue: [
            recoveredBlock103Result := recoveredBlock103Stack1.
            recoveredBlock103Done := true.
        ].
    ].
    recoveredBlock103Result
].
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock632Value0 recoveredBlock632Value1 recoveredBlock632Value2 recoveredBlock632Value3 recoveredBlock632Value4 recoveredBlock632Value5 |
    recoveredBlock632Value0 := CfsDirectoryDescriptor.
    recoveredBlock632Value1 := recoveredLocal9.
    recoveredBlock632Value2 := (recoveredBlock632Value0) deletePathRecursive: (recoveredBlock632Value1).
    recoveredBlock632Value3 := (recoveredBlock632Value2) isCfsError.
    recoveredBlock632Value4 := (recoveredBlock632Value3) not.
    recoveredBlock632Value5 := (self) runtimeAssert: (recoveredBlock632Value4) additionalInfo: ('deletion of temp path failed').
    recoveredBlock632Value5
].
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            (recoveredStack0) ensure: (recoveredStack1).
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

