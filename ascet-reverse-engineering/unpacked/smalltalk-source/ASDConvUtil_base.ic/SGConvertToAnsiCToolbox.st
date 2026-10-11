"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDConvUtil_base.ic method 0x20000250; bytecode file offset 0x9c8c"
!SGConvertToAnsiCToolbox methodsFor: 'recovered'!
dbAccess
    | recoveredValue0 |
    recoveredValue0 := dbAccess.
    ^recoveredValue0
! !

"ASDConvUtil_base.ic method 0x20000328; bytecode file offset 0x9d84"
!SGConvertToAnsiCToolbox methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGDatabaseAccess.
    recoveredValue1 := (recoveredValue0) create.
    (self) dbAccess: (recoveredValue1).
    ^self
! !

"ASDConvUtil_base.ic method 0x20000364; bytecode file offset 0x9db0"
!SGConvertToAnsiCToolbox methodsFor: 'recovered'!
dbAccess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dbAccess := recoveredValue0.
    ^self
! !

"ASDConvUtil_base.ic method 0x20003bc8; bytecode file offset 0xd6dc"
!SGConvertToAnsiCToolbox methodsFor: 'recovered'!
convertWholeDatabaseToAnsiC: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) dbAccess.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) libraryKeys.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack1 := [:block2800149cArg1 | 
    | block2800149cStack0 block2800149cStack1 block2800149cStack2 block2800149cStack3 block2800149cPC block2800149cStep block2800149cDone block2800149cResult |
    block2800149cStack0 := self.
    block2800149cPC := 4.
    block2800149cDone := false.
    [block2800149cDone not] whileTrue: [
        block2800149cStep := block2800149cPC.
        block2800149cStep = 4 ifTrue: [
            block2800149cStack1 := block2800149cArg1.
            block2800149cPC := 5.
        ].
        block2800149cStep = 5 ifTrue: [
            block2800149cStack2 := [:block280014c0Arg1 | 
    nil
].
            block2800149cPC := 7.
        ].
        block2800149cStep = 7 ifTrue: [
            block2800149cPC := 12.
        ].
        block2800149cStep = 12 ifTrue: [
            block2800149cStack1 := (block2800149cStack1) getObjectIfUndefined: (block2800149cStack2).
            block2800149cPC := 14.
        ].
        block2800149cStep = 14 ifTrue: [
            block2800149cResult := block2800149cStack1.
            block2800149cDone := true.
        ].
    ].
    block2800149cResult
].
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) collect: (recoveredBlock6Stack1).
            recoveredBlock6PC := 33.
        ].
        recoveredBlock6Step = 33 ifTrue: [
            recoveredBlock6Stack1 := [:block280014e4Arg1 | 
    | block280014e4Value0 block280014e4Value1 |
    block280014e4Value0 := block280014e4Arg1.
    block280014e4Value1 := (block280014e4Value0) notNil.
    block280014e4Value1
].
            recoveredBlock6PC := 35.
        ].
        recoveredBlock6Step = 35 ifTrue: [
            recoveredBlock6PC := 41.
        ].
        recoveredBlock6Step = 41 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) select: (recoveredBlock6Stack1).
            recoveredBlock6PC := 43.
        ].
        recoveredBlock6Step = 43 ifTrue: [
            recoveredLocal3 := recoveredBlock6Stack0.
            recoveredBlock6PC := 46.
        ].
        recoveredBlock6Step = 46 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal3.
            recoveredBlock6PC := 49.
        ].
        recoveredBlock6Step = 49 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) isEmpty.
            recoveredBlock6PC := 51.
        ].
        recoveredBlock6Step = 51 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 54] ifFalse: [recoveredBlock6PC := 56].
        ].
        recoveredBlock6Step = 54 ifTrue: [
            recoveredBlock6Stack0 := nil.
            recoveredBlock6PC := 55.
        ].
        recoveredBlock6Step = 55 ifTrue: [
            ^recoveredBlock6Stack0
        ].
        recoveredBlock6Step = 56 ifTrue: [
            recoveredBlock6Stack0 := OrderedCollection.
            recoveredBlock6PC := 58.
        ].
        recoveredBlock6Step = 58 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) new.
            recoveredBlock6PC := 60.
        ].
        recoveredBlock6Step = 60 ifTrue: [
            recoveredLocal2 := recoveredBlock6Stack0.
            recoveredBlock6PC := 63.
        ].
        recoveredBlock6Step = 63 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal3.
            recoveredBlock6PC := 66.
        ].
        recoveredBlock6Step = 66 ifTrue: [
            recoveredBlock6Stack1 := [:recoveredBlock6Block66Arg1 | 
    | recoveredBlock6Block66Stack0 recoveredBlock6Block66Stack1 recoveredBlock6Block66Stack2 recoveredBlock6Block66Stack3 recoveredBlock6Block66Stack4 recoveredBlock6Block66PC recoveredBlock6Block66Step recoveredBlock6Block66Done recoveredBlock6Block66Result |
    recoveredBlock6Block66Stack0 := nil.
    recoveredBlock6Block66PC := 72.
    recoveredBlock6Block66Done := false.
    [recoveredBlock6Block66Done not] whileTrue: [
        recoveredBlock6Block66Step := recoveredBlock6Block66PC.
        recoveredBlock6Block66Step = 72 ifTrue: [
            recoveredBlock6Block66Stack1 := recoveredLocal2.
            recoveredBlock6Block66PC := 75.
        ].
        recoveredBlock6Block66Step = 75 ifTrue: [
            recoveredBlock6Block66Stack2 := recoveredBlock6Block66Arg1.
            recoveredBlock6Block66PC := 76.
        ].
        recoveredBlock6Block66Step = 76 ifTrue: [
            recoveredBlock6Block66Stack2 := (recoveredBlock6Block66Stack2) allNotFolderChildrenKeys.
            recoveredBlock6Block66PC := 78.
        ].
        recoveredBlock6Block66Step = 78 ifTrue: [
            (recoveredBlock6Block66Stack1) addAll: (recoveredBlock6Block66Stack2).
            recoveredBlock6Block66PC := 80.
        ].
        recoveredBlock6Block66Step = 80 ifTrue: [
            recoveredBlock6Block66Stack1 := recoveredLocal2.
            recoveredBlock6Block66PC := 83.
        ].
        recoveredBlock6Block66Step = 83 ifTrue: [
            recoveredBlock6Block66Stack2 := recoveredBlock6Block66Arg1.
            recoveredBlock6Block66PC := 84.
        ].
        recoveredBlock6Block66Step = 84 ifTrue: [
            recoveredBlock6Block66Stack2 := (recoveredBlock6Block66Stack2) allFolderChildrenRecursive.
            recoveredBlock6Block66PC := 86.
        ].
        recoveredBlock6Block66Step = 86 ifTrue: [
            recoveredBlock6Block66Stack3 := [:block28001508Arg1 | 
    | block28001508Value0 block28001508Value1 |
    block28001508Value0 := block28001508Arg1.
    block28001508Value1 := (block28001508Value0) asRBDBReference.
    block28001508Value1
].
            recoveredBlock6Block66PC := 88.
        ].
        recoveredBlock6Block66Step = 88 ifTrue: [
            recoveredBlock6Block66PC := 96.
        ].
        recoveredBlock6Block66Step = 96 ifTrue: [
            recoveredBlock6Block66Stack2 := (recoveredBlock6Block66Stack2) collect: (recoveredBlock6Block66Stack3).
            recoveredBlock6Block66PC := 98.
        ].
        recoveredBlock6Block66Step = 98 ifTrue: [
            (recoveredBlock6Block66Stack1) addAll: (recoveredBlock6Block66Stack2).
            recoveredBlock6Block66PC := 100.
        ].
        recoveredBlock6Block66Step = 100 ifTrue: [
            recoveredBlock6Block66Stack1 := recoveredLocal2.
            recoveredBlock6Block66PC := 103.
        ].
        recoveredBlock6Block66Step = 103 ifTrue: [
            recoveredBlock6Block66Stack2 := recoveredBlock6Block66Arg1.
            recoveredBlock6Block66PC := 104.
        ].
        recoveredBlock6Block66Step = 104 ifTrue: [
            recoveredBlock6Block66Stack2 := (recoveredBlock6Block66Stack2) asRBDBReference.
            recoveredBlock6Block66PC := 106.
        ].
        recoveredBlock6Block66Step = 106 ifTrue: [
            recoveredBlock6Block66Stack1 := (recoveredBlock6Block66Stack1) add: (recoveredBlock6Block66Stack2).
            recoveredBlock6Block66PC := 108.
        ].
        recoveredBlock6Block66Step = 108 ifTrue: [
            recoveredBlock6Block66Result := recoveredBlock6Block66Stack1.
            recoveredBlock6Block66Done := true.
        ].
    ].
    recoveredBlock6Block66Result
].
            recoveredBlock6PC := 109.
        ].
        recoveredBlock6Step = 109 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) do: (recoveredBlock6Stack1).
            recoveredBlock6PC := 111.
        ].
        recoveredBlock6Step = 111 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    recoveredValue2 := SGMonitorStreamDummy.
    recoveredValue3 := (recoveredValue2) create.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) addText: ('Check valid C identifiers...').
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := [:recoveredBlock131Arg1 | 
    | recoveredBlock131Value0 recoveredBlock131Value1 recoveredBlock131Value2 |
    recoveredBlock131Value0 := recoveredLocal2.
    recoveredBlock131Value1 := [:recoveredBlock131Block141Arg1 :recoveredBlock131Block141Arg2 | 
    | recoveredBlock131Block141Local1 recoveredBlock131Block141Stack0 recoveredBlock131Block141Stack1 recoveredBlock131Block141Stack2 recoveredBlock131Block141Stack3 recoveredBlock131Block141Stack4 recoveredBlock131Block141PC recoveredBlock131Block141Step recoveredBlock131Block141Done recoveredBlock131Block141Result |
    recoveredBlock131Block141Stack0 := nil.
    recoveredBlock131Block141PC := 148.
    recoveredBlock131Block141Done := false.
    [recoveredBlock131Block141Done not] whileTrue: [
        recoveredBlock131Block141Step := recoveredBlock131Block141PC.
        recoveredBlock131Block141Step = 148 ifTrue: [
            recoveredBlock131Block141Stack1 := recoveredBlock131Arg1.
            recoveredBlock131Block141PC := 151.
        ].
        recoveredBlock131Block141Step = 151 ifTrue: [
            recoveredBlock131Block141Stack2 := recoveredBlock131Block141Arg2.
            recoveredBlock131Block141PC := 152.
        ].
        recoveredBlock131Block141Step = 152 ifTrue: [
            recoveredBlock131Block141Stack3 := recoveredLocal2.
            recoveredBlock131Block141PC := 155.
        ].
        recoveredBlock131Block141Step = 155 ifTrue: [
            recoveredBlock131Block141Stack3 := (recoveredBlock131Block141Stack3) size.
            recoveredBlock131Block141PC := 157.
        ].
        recoveredBlock131Block141Step = 157 ifTrue: [
            recoveredBlock131Block141Stack2 := (recoveredBlock131Block141Stack2) / (recoveredBlock131Block141Stack3).
            recoveredBlock131Block141PC := 159.
        ].
        recoveredBlock131Block141Step = 159 ifTrue: [
            (recoveredBlock131Block141Stack1) fractionComplete: (recoveredBlock131Block141Stack2).
            recoveredBlock131Block141PC := 161.
        ].
        recoveredBlock131Block141Step = 161 ifTrue: [
            recoveredBlock131Block141Stack1 := nil.
            recoveredBlock131Block141PC := 162.
        ].
        recoveredBlock131Block141Step = 162 ifTrue: [
            recoveredBlock131Block141Stack2 := recoveredBlock131Block141Arg1.
            recoveredBlock131Block141PC := 163.
        ].
        recoveredBlock131Block141Step = 163 ifTrue: [
            recoveredBlock131Block141Stack3 := [:block2800152cArg1 | 
    nil
].
            recoveredBlock131Block141PC := 165.
        ].
        recoveredBlock131Block141Step = 165 ifTrue: [
            recoveredBlock131Block141PC := 170.
        ].
        recoveredBlock131Block141Step = 170 ifTrue: [
            recoveredBlock131Block141Stack2 := (recoveredBlock131Block141Stack2) getObjectIfUndefined: (recoveredBlock131Block141Stack3).
            recoveredBlock131Block141PC := 172.
        ].
        recoveredBlock131Block141Step = 172 ifTrue: [
            recoveredBlock131Block141Stack3 := recoveredBlock131Block141Stack2.
            recoveredBlock131Block141PC := 173.
        ].
        recoveredBlock131Block141Step = 173 ifTrue: [
            recoveredBlock131Block141Local1 := recoveredBlock131Block141Stack3.
            recoveredBlock131Block141PC := 174.
        ].
        recoveredBlock131Block141Step = 174 ifTrue: [
            (recoveredBlock131Block141Stack2 == nil) ifTrue: [recoveredBlock131Block141PC := 236] ifFalse: [recoveredBlock131Block141PC := 178].
        ].
        recoveredBlock131Block141Step = 178 ifTrue: [
            recoveredBlock131Block141PC := 179.
        ].
        recoveredBlock131Block141Step = 179 ifTrue: [
            recoveredBlock131Block141Stack1 := recoveredBlock131Block141Local1.
            recoveredBlock131Block141PC := 180.
        ].
        recoveredBlock131Block141Step = 180 ifTrue: [
            recoveredBlock131Block141Stack1 := (recoveredBlock131Block141Stack1) modifiable.
            recoveredBlock131Block141PC := 182.
        ].
        recoveredBlock131Block141Step = 182 ifTrue: [
            (recoveredBlock131Block141Stack1) ifTrue: [recoveredBlock131Block141PC := 186] ifFalse: [recoveredBlock131Block141PC := 202].
        ].
        recoveredBlock131Block141Step = 186 ifTrue: [
            recoveredBlock131Block141Stack1 := recoveredBlock131Block141Local1.
            recoveredBlock131Block141PC := 187.
        ].
        recoveredBlock131Block141Step = 187 ifTrue: [
            recoveredBlock131Block141Stack1 := (recoveredBlock131Block141Stack1) isRead.
            recoveredBlock131Block141PC := 189.
        ].
        recoveredBlock131Block141Step = 189 ifTrue: [
            (recoveredBlock131Block141Stack1) ifTrue: [recoveredBlock131Block141PC := 192] ifFalse: [recoveredBlock131Block141PC := 202].
        ].
        recoveredBlock131Block141Step = 192 ifTrue: [
            recoveredBlock131Block141Stack1 := recoveredBlock131Block141Local1.
            recoveredBlock131Block141PC := 193.
        ].
        recoveredBlock131Block141Step = 193 ifTrue: [
            recoveredBlock131Block141Stack2 := nil.
            recoveredBlock131Block141PC := 194.
        ].
        recoveredBlock131Block141Step = 194 ifTrue: [
            recoveredBlock131Block141Stack3 := recoveredLocal1.
            recoveredBlock131Block141PC := 197.
        ].
        recoveredBlock131Block141Step = 197 ifTrue: [
            recoveredBlock131Block141Stack1 := (recoveredBlock131Block141Stack1) convertToAnsiCReplaceString: (recoveredBlock131Block141Stack2) monitor: (recoveredBlock131Block141Stack3).
            recoveredBlock131Block141PC := 199.
        ].
        recoveredBlock131Block141Step = 199 ifTrue: [
            recoveredBlock131Block141PC := 236.
        ].
        recoveredBlock131Block141Step = 202 ifTrue: [
            recoveredBlock131Block141Stack1 := recoveredBlock131Block141Local1.
            recoveredBlock131Block141PC := 203.
        ].
        recoveredBlock131Block141Step = 203 ifTrue: [
            recoveredBlock131Block141Stack1 := (recoveredBlock131Block141Stack1) isRead.
            recoveredBlock131Block141PC := 205.
        ].
        recoveredBlock131Block141Step = 205 ifTrue: [
            (recoveredBlock131Block141Stack1) ifTrue: [recoveredBlock131Block141PC := 224] ifFalse: [recoveredBlock131Block141PC := 208].
        ].
        recoveredBlock131Block141Step = 208 ifTrue: [
            recoveredBlock131Block141Stack1 := recoveredLocal1.
            recoveredBlock131Block141PC := 211.
        ].
        recoveredBlock131Block141Step = 211 ifTrue: [
            recoveredBlock131Block141Stack2 := recoveredBlock131Block141Local1.
            recoveredBlock131Block141PC := 212.
        ].
        recoveredBlock131Block141Step = 212 ifTrue: [
            recoveredBlock131Block141Stack2 := (recoveredBlock131Block141Stack2) importLabel.
            recoveredBlock131Block141PC := 214.
        ].
        recoveredBlock131Block141Step = 214 ifTrue: [
            recoveredBlock131Block141Stack3 := ' has no read access, therefore it is not converted.'.
            recoveredBlock131Block141PC := 216.
        ].
        recoveredBlock131Block141Step = 216 ifTrue: [
            recoveredBlock131Block141Stack2 := (recoveredBlock131Block141Stack2) , (recoveredBlock131Block141Stack3).
            recoveredBlock131Block141PC := 218.
        ].
        recoveredBlock131Block141Step = 218 ifTrue: [
            recoveredBlock131Block141Stack1 := (recoveredBlock131Block141Stack1) addWarningText: (recoveredBlock131Block141Stack2).
            recoveredBlock131Block141PC := 220.
        ].
        recoveredBlock131Block141Step = 220 ifTrue: [
            recoveredBlock131Block141PC := 236.
        ].
        recoveredBlock131Block141Step = 224 ifTrue: [
            recoveredBlock131Block141Stack1 := recoveredLocal1.
            recoveredBlock131Block141PC := 227.
        ].
        recoveredBlock131Block141Step = 227 ifTrue: [
            recoveredBlock131Block141Stack2 := recoveredBlock131Block141Local1.
            recoveredBlock131Block141PC := 228.
        ].
        recoveredBlock131Block141Step = 228 ifTrue: [
            recoveredBlock131Block141Stack2 := (recoveredBlock131Block141Stack2) importLabel.
            recoveredBlock131Block141PC := 230.
        ].
        recoveredBlock131Block141Step = 230 ifTrue: [
            recoveredBlock131Block141Stack3 := ' is not modifiable, therefore it is not converted.'.
            recoveredBlock131Block141PC := 232.
        ].
        recoveredBlock131Block141Step = 232 ifTrue: [
            recoveredBlock131Block141Stack2 := (recoveredBlock131Block141Stack2) , (recoveredBlock131Block141Stack3).
            recoveredBlock131Block141PC := 234.
        ].
        recoveredBlock131Block141Step = 234 ifTrue: [
            recoveredBlock131Block141Stack1 := (recoveredBlock131Block141Stack1) addWarningText: (recoveredBlock131Block141Stack2).
            recoveredBlock131Block141PC := 236.
        ].
        recoveredBlock131Block141Step = 236 ifTrue: [
            recoveredBlock131Block141Result := recoveredBlock131Block141Stack1.
            recoveredBlock131Block141Done := true.
        ].
    ].
    recoveredBlock131Block141Result
].
    recoveredBlock131Value2 := (recoveredBlock131Value0) doWithIndex: (recoveredBlock131Value1).
    recoveredBlock131Value2
].
    recoveredValue7 := (self) library.
    recoveredValue8 := (recoveredValue7) location.
    recoveredValue9 := ('Database ') , (recoveredValue8).
    (recoveredValue5) execWithProgressDialog: (recoveredValue6) message: ('Convert To Ansi C...') showProgress: (true) title: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    (recoveredValue10) printReady.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) uiController.
    recoveredValue13 := (recoveredValue12) mainController.
    recoveredValue14 := recoveredArg1.
    (recoveredValue13) commitDBView: (recoveredValue14).
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := [
    | recoveredBlock275Local1 recoveredBlock275Stack0 recoveredBlock275Stack1 recoveredBlock275Stack2 recoveredBlock275PC recoveredBlock275Step recoveredBlock275Done recoveredBlock275Result |
    recoveredBlock275Stack0 := self.
    recoveredBlock275PC := 282.
    recoveredBlock275Done := false.
    [recoveredBlock275Done not] whileTrue: [
        recoveredBlock275Step := recoveredBlock275PC.
        recoveredBlock275Step = 282 ifTrue: [
            recoveredBlock275Stack0 := (recoveredBlock275Stack0) dbAccess.
            recoveredBlock275PC := 283.
        ].
        recoveredBlock275Step = 283 ifTrue: [
            recoveredBlock275Stack1 := SGCodeContainerExternal.
            recoveredBlock275PC := 285.
        ].
        recoveredBlock275Step = 285 ifTrue: [
            recoveredBlock275Stack0 := (recoveredBlock275Stack0) readClassKeys: (recoveredBlock275Stack1).
            recoveredBlock275PC := 287.
        ].
        recoveredBlock275Step = 287 ifTrue: [
            recoveredBlock275Local1 := recoveredBlock275Stack0.
            recoveredBlock275PC := 288.
        ].
        recoveredBlock275Step = 288 ifTrue: [
            recoveredBlock275Stack0 := recoveredBlock275Local1.
            recoveredBlock275PC := 289.
        ].
        recoveredBlock275Step = 289 ifTrue: [
            recoveredBlock275Stack1 := [:block28001550Arg1 | 
    | block28001550Value0 block28001550Value1 block28001550Value2 block28001550Value3 block28001550Value4 block28001550Value5 |
    block28001550Value0 := block28001550Arg1.
    (block28001550Value0) updateApplicationTimeStamp: (0).
    block28001550Value1 := block28001550Arg1.
    block28001550Value2 := block28001550Arg1.
    block28001550Value3 := (block28001550Value2) applicationFlag.
    block28001550Value4 := (block28001550Value3) bitOr: (1).
    block28001550Value5 := (block28001550Value1) updateApplicationFlag: (block28001550Value4).
    block28001550Value5
].
            recoveredBlock275PC := 291.
        ].
        recoveredBlock275Step = 291 ifTrue: [
            recoveredBlock275PC := 310.
        ].
        recoveredBlock275Step = 310 ifTrue: [
            recoveredBlock275Stack0 := (recoveredBlock275Stack0) do: (recoveredBlock275Stack1).
            recoveredBlock275PC := 312.
        ].
        recoveredBlock275Step = 312 ifTrue: [
            recoveredBlock275Result := recoveredBlock275Stack0.
            recoveredBlock275Done := true.
        ].
    ].
    recoveredBlock275Result
].
    (recoveredValue15) execShortOperation: (recoveredValue16).
    ^self
! !

"ASDConvUtil_base.ic method 0x20004278; bytecode file offset 0xde08"
!SGConvertToAnsiCToolbox methodsFor: 'recovered'!
convertAmbiguousComponentNames: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) ambiguousComponentNames.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := Locale.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) current.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) preferredStringClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := 'The following device names are reserved by the system and can cause problems when used as component names:'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := [:recoveredBlock43Arg1 :recoveredBlock43Arg2 | 
    | recoveredBlock43Stack0 recoveredBlock43Stack1 recoveredBlock43Stack2 recoveredBlock43Stack3 recoveredBlock43PC recoveredBlock43Step recoveredBlock43Done recoveredBlock43Result |
    recoveredBlock43Stack0 := self.
    recoveredBlock43PC := 50.
    recoveredBlock43Done := false.
    [recoveredBlock43Done not] whileTrue: [
        recoveredBlock43Step := recoveredBlock43PC.
        recoveredBlock43Step = 50 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal1.
            recoveredBlock43PC := 53.
        ].
        recoveredBlock43Step = 53 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Arg1.
            recoveredBlock43PC := 54.
        ].
        recoveredBlock43Step = 54 ifTrue: [
            (recoveredBlock43Stack1) nextPutAll: (recoveredBlock43Stack2).
            recoveredBlock43PC := 56.
        ].
        recoveredBlock43Step = 56 ifTrue: [
            recoveredBlock43Stack1 := recoveredBlock43Arg2.
            recoveredBlock43PC := 57.
        ].
        recoveredBlock43Step = 57 ifTrue: [
            recoveredBlock43Stack2 := recoveredLocal2.
            recoveredBlock43PC := 60.
        ].
        recoveredBlock43Step = 60 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) size.
            recoveredBlock43PC := 62.
        ].
        recoveredBlock43Step = 62 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) ~= (recoveredBlock43Stack2).
            recoveredBlock43PC := 63.
        ].
        recoveredBlock43Step = 63 ifTrue: [
            (recoveredBlock43Stack1) ifTrue: [recoveredBlock43PC := 66] ifFalse: [recoveredBlock43PC := 74].
        ].
        recoveredBlock43Step = 66 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal1.
            recoveredBlock43PC := 69.
        ].
        recoveredBlock43Step = 69 ifTrue: [
            recoveredBlock43Stack2 := $;.
            recoveredBlock43PC := 72.
        ].
        recoveredBlock43Step = 72 ifTrue: [
            (recoveredBlock43Stack1) nextPut: (recoveredBlock43Stack2).
            recoveredBlock43PC := 74.
        ].
        recoveredBlock43Step = 74 ifTrue: [
            recoveredBlock43Stack1 := recoveredBlock43Arg2.
            recoveredBlock43PC := 75.
        ].
        recoveredBlock43Step = 75 ifTrue: [
            recoveredBlock43Stack2 := 10.
            recoveredBlock43PC := 77.
        ].
        recoveredBlock43Step = 77 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) \\ (recoveredBlock43Stack2).
            recoveredBlock43PC := 78.
        ].
        recoveredBlock43Step = 78 ifTrue: [
            recoveredBlock43Stack2 := 0.
            recoveredBlock43PC := 80.
        ].
        recoveredBlock43Step = 80 ifTrue: [
            (recoveredBlock43Stack1 ~~ recoveredBlock43Stack2) ifTrue: [recoveredBlock43PC := 92] ifFalse: [recoveredBlock43PC := 84].
        ].
        recoveredBlock43Step = 84 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal1.
            recoveredBlock43PC := 87.
        ].
        recoveredBlock43Step = 87 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) cr.
            recoveredBlock43PC := 89.
        ].
        recoveredBlock43Step = 89 ifTrue: [
            recoveredBlock43PC := 97.
        ].
        recoveredBlock43Step = 92 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal1.
            recoveredBlock43PC := 95.
        ].
        recoveredBlock43Step = 95 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) space.
            recoveredBlock43PC := 97.
        ].
        recoveredBlock43Step = 97 ifTrue: [
            recoveredBlock43Result := recoveredBlock43Stack1.
            recoveredBlock43Done := true.
        ].
    ].
    recoveredBlock43Result
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'Do you want to continue renaming components using one of these reserved names?'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := RBUserQuestion.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack2) okCancel.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := 'call_82379'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock140Stack0 recoveredBlock140Stack1 recoveredBlock140Stack2 recoveredBlock140PC recoveredBlock140Step recoveredBlock140Done recoveredBlock140Result |
    recoveredBlock140Stack0 := self.
    recoveredBlock140PC := 146.
    recoveredBlock140Done := false.
    [recoveredBlock140Done not] whileTrue: [
        recoveredBlock140Step := recoveredBlock140PC.
        recoveredBlock140Step = 146 ifTrue: [
            recoveredBlock140Stack0 := (recoveredBlock140Stack0) dbAccess.
            recoveredBlock140PC := 148.
        ].
        recoveredBlock140Step = 148 ifTrue: [
            recoveredBlock140Stack0 := (recoveredBlock140Stack0) libraryKeys.
            recoveredBlock140PC := 150.
        ].
        recoveredBlock140Step = 150 ifTrue: [
            recoveredBlock140Stack1 := [:block28001598Arg1 | 
    | block28001598Stack0 block28001598Stack1 block28001598Stack2 block28001598Stack3 block28001598PC block28001598Step block28001598Done block28001598Result |
    block28001598Stack0 := self.
    block28001598PC := 4.
    block28001598Done := false.
    [block28001598Done not] whileTrue: [
        block28001598Step := block28001598PC.
        block28001598Step = 4 ifTrue: [
            block28001598Stack1 := block28001598Arg1.
            block28001598PC := 5.
        ].
        block28001598Step = 5 ifTrue: [
            block28001598Stack2 := [:block280015bcArg1 | 
    nil
].
            block28001598PC := 7.
        ].
        block28001598Step = 7 ifTrue: [
            block28001598PC := 12.
        ].
        block28001598Step = 12 ifTrue: [
            block28001598Stack1 := (block28001598Stack1) getObjectIfUndefined: (block28001598Stack2).
            block28001598PC := 14.
        ].
        block28001598Step = 14 ifTrue: [
            block28001598Result := block28001598Stack1.
            block28001598Done := true.
        ].
    ].
    block28001598Result
].
            recoveredBlock140PC := 152.
        ].
        recoveredBlock140Step = 152 ifTrue: [
            recoveredBlock140PC := 167.
        ].
        recoveredBlock140Step = 167 ifTrue: [
            recoveredBlock140Stack0 := (recoveredBlock140Stack0) collect: (recoveredBlock140Stack1).
            recoveredBlock140PC := 169.
        ].
        recoveredBlock140Step = 169 ifTrue: [
            recoveredBlock140Stack1 := [:block280015e0Arg1 | 
    | block280015e0Value0 block280015e0Value1 |
    block280015e0Value0 := block280015e0Arg1.
    block280015e0Value1 := (block280015e0Value0) notNil.
    block280015e0Value1
].
            recoveredBlock140PC := 171.
        ].
        recoveredBlock140Step = 171 ifTrue: [
            recoveredBlock140PC := 177.
        ].
        recoveredBlock140Step = 177 ifTrue: [
            recoveredBlock140Stack0 := (recoveredBlock140Stack0) select: (recoveredBlock140Stack1).
            recoveredBlock140PC := 179.
        ].
        recoveredBlock140Step = 179 ifTrue: [
            recoveredLocal5 := recoveredBlock140Stack0.
            recoveredBlock140PC := 182.
        ].
        recoveredBlock140Step = 182 ifTrue: [
            recoveredBlock140Stack0 := recoveredLocal5.
            recoveredBlock140PC := 185.
        ].
        recoveredBlock140Step = 185 ifTrue: [
            recoveredBlock140Stack0 := (recoveredBlock140Stack0) isEmpty.
            recoveredBlock140PC := 187.
        ].
        recoveredBlock140Step = 187 ifTrue: [
            (recoveredBlock140Stack0) ifTrue: [recoveredBlock140PC := 190] ifFalse: [recoveredBlock140PC := 192].
        ].
        recoveredBlock140Step = 190 ifTrue: [
            recoveredBlock140Stack0 := nil.
            recoveredBlock140PC := 191.
        ].
        recoveredBlock140Step = 191 ifTrue: [
            ^recoveredBlock140Stack0
        ].
        recoveredBlock140Step = 192 ifTrue: [
            recoveredBlock140Stack0 := OrderedCollection.
            recoveredBlock140PC := 194.
        ].
        recoveredBlock140Step = 194 ifTrue: [
            recoveredBlock140Stack0 := (recoveredBlock140Stack0) new.
            recoveredBlock140PC := 196.
        ].
        recoveredBlock140Step = 196 ifTrue: [
            recoveredLocal4 := recoveredBlock140Stack0.
            recoveredBlock140PC := 199.
        ].
        recoveredBlock140Step = 199 ifTrue: [
            recoveredBlock140Stack0 := recoveredLocal5.
            recoveredBlock140PC := 202.
        ].
        recoveredBlock140Step = 202 ifTrue: [
            recoveredBlock140Stack1 := [:recoveredBlock140Block202Arg1 | 
    | recoveredBlock140Block202Stack0 recoveredBlock140Block202Stack1 recoveredBlock140Block202Stack2 recoveredBlock140Block202Stack3 recoveredBlock140Block202Stack4 recoveredBlock140Block202PC recoveredBlock140Block202Step recoveredBlock140Block202Done recoveredBlock140Block202Result |
    recoveredBlock140Block202Stack0 := nil.
    recoveredBlock140Block202PC := 208.
    recoveredBlock140Block202Done := false.
    [recoveredBlock140Block202Done not] whileTrue: [
        recoveredBlock140Block202Step := recoveredBlock140Block202PC.
        recoveredBlock140Block202Step = 208 ifTrue: [
            recoveredBlock140Block202Stack1 := recoveredLocal4.
            recoveredBlock140Block202PC := 211.
        ].
        recoveredBlock140Block202Step = 211 ifTrue: [
            recoveredBlock140Block202Stack2 := recoveredBlock140Block202Arg1.
            recoveredBlock140Block202PC := 212.
        ].
        recoveredBlock140Block202Step = 212 ifTrue: [
            recoveredBlock140Block202Stack2 := (recoveredBlock140Block202Stack2) allNotFolderChildrenKeys.
            recoveredBlock140Block202PC := 214.
        ].
        recoveredBlock140Block202Step = 214 ifTrue: [
            (recoveredBlock140Block202Stack1) addAll: (recoveredBlock140Block202Stack2).
            recoveredBlock140Block202PC := 216.
        ].
        recoveredBlock140Block202Step = 216 ifTrue: [
            recoveredBlock140Block202Stack1 := recoveredLocal4.
            recoveredBlock140Block202PC := 219.
        ].
        recoveredBlock140Block202Step = 219 ifTrue: [
            recoveredBlock140Block202Stack2 := recoveredBlock140Block202Arg1.
            recoveredBlock140Block202PC := 220.
        ].
        recoveredBlock140Block202Step = 220 ifTrue: [
            recoveredBlock140Block202Stack2 := (recoveredBlock140Block202Stack2) allFolderChildrenRecursive.
            recoveredBlock140Block202PC := 222.
        ].
        recoveredBlock140Block202Step = 222 ifTrue: [
            recoveredBlock140Block202Stack3 := [:block28001604Arg1 | 
    | block28001604Value0 block28001604Value1 |
    block28001604Value0 := block28001604Arg1.
    block28001604Value1 := (block28001604Value0) asRBDBReference.
    block28001604Value1
].
            recoveredBlock140Block202PC := 224.
        ].
        recoveredBlock140Block202Step = 224 ifTrue: [
            recoveredBlock140Block202PC := 232.
        ].
        recoveredBlock140Block202Step = 232 ifTrue: [
            recoveredBlock140Block202Stack2 := (recoveredBlock140Block202Stack2) collect: (recoveredBlock140Block202Stack3).
            recoveredBlock140Block202PC := 234.
        ].
        recoveredBlock140Block202Step = 234 ifTrue: [
            (recoveredBlock140Block202Stack1) addAll: (recoveredBlock140Block202Stack2).
            recoveredBlock140Block202PC := 236.
        ].
        recoveredBlock140Block202Step = 236 ifTrue: [
            recoveredBlock140Block202Stack1 := recoveredLocal4.
            recoveredBlock140Block202PC := 239.
        ].
        recoveredBlock140Block202Step = 239 ifTrue: [
            recoveredBlock140Block202Stack2 := recoveredBlock140Block202Arg1.
            recoveredBlock140Block202PC := 240.
        ].
        recoveredBlock140Block202Step = 240 ifTrue: [
            recoveredBlock140Block202Stack2 := (recoveredBlock140Block202Stack2) asRBDBReference.
            recoveredBlock140Block202PC := 242.
        ].
        recoveredBlock140Block202Step = 242 ifTrue: [
            recoveredBlock140Block202Stack1 := (recoveredBlock140Block202Stack1) add: (recoveredBlock140Block202Stack2).
            recoveredBlock140Block202PC := 244.
        ].
        recoveredBlock140Block202Step = 244 ifTrue: [
            recoveredBlock140Block202Result := recoveredBlock140Block202Stack1.
            recoveredBlock140Block202Done := true.
        ].
    ].
    recoveredBlock140Block202Result
].
            recoveredBlock140PC := 245.
        ].
        recoveredBlock140Step = 245 ifTrue: [
            recoveredBlock140Stack0 := (recoveredBlock140Stack0) do: (recoveredBlock140Stack1).
            recoveredBlock140PC := 247.
        ].
        recoveredBlock140Step = 247 ifTrue: [
            recoveredBlock140Result := recoveredBlock140Stack0.
            recoveredBlock140Done := true.
        ].
    ].
    recoveredBlock140Result
].
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack1) showBusyCursorWhile: (recoveredStack2).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := 'Check ambiguous component names...'.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack1) addText: (recoveredStack2).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := [:recoveredBlock267Arg1 | 
    | recoveredBlock267Value0 recoveredBlock267Value1 recoveredBlock267Value2 |
    recoveredBlock267Value0 := recoveredLocal4.
    recoveredBlock267Value1 := [:recoveredBlock267Block277Arg1 :recoveredBlock267Block277Arg2 | 
    | recoveredBlock267Block277Local1 recoveredBlock267Block277Local2 recoveredBlock267Block277Stack0 recoveredBlock267Block277Stack1 recoveredBlock267Block277Stack2 recoveredBlock267Block277Stack3 recoveredBlock267Block277Stack4 recoveredBlock267Block277Stack5 recoveredBlock267Block277PC recoveredBlock267Block277Step recoveredBlock267Block277Done recoveredBlock267Block277Result |
    recoveredBlock267Block277Stack0 := nil.
    recoveredBlock267Block277PC := 284.
    recoveredBlock267Block277Done := false.
    [recoveredBlock267Block277Done not] whileTrue: [
        recoveredBlock267Block277Step := recoveredBlock267Block277PC.
        recoveredBlock267Block277Step = 284 ifTrue: [
            recoveredBlock267Block277Stack1 := recoveredBlock267Arg1.
            recoveredBlock267Block277PC := 287.
        ].
        recoveredBlock267Block277Step = 287 ifTrue: [
            recoveredBlock267Block277Stack2 := recoveredBlock267Block277Arg2.
            recoveredBlock267Block277PC := 290.
        ].
        recoveredBlock267Block277Step = 290 ifTrue: [
            recoveredBlock267Block277Stack3 := recoveredLocal4.
            recoveredBlock267Block277PC := 293.
        ].
        recoveredBlock267Block277Step = 293 ifTrue: [
            recoveredBlock267Block277Stack3 := (recoveredBlock267Block277Stack3) size.
            recoveredBlock267Block277PC := 295.
        ].
        recoveredBlock267Block277Step = 295 ifTrue: [
            recoveredBlock267Block277Stack2 := (recoveredBlock267Block277Stack2) / (recoveredBlock267Block277Stack3).
            recoveredBlock267Block277PC := 297.
        ].
        recoveredBlock267Block277Step = 297 ifTrue: [
            (recoveredBlock267Block277Stack1) fractionComplete: (recoveredBlock267Block277Stack2).
            recoveredBlock267Block277PC := 299.
        ].
        recoveredBlock267Block277Step = 299 ifTrue: [
            recoveredBlock267Block277Stack1 := nil.
            recoveredBlock267Block277PC := 300.
        ].
        recoveredBlock267Block277Step = 300 ifTrue: [
            recoveredBlock267Block277Stack2 := recoveredBlock267Block277Arg1.
            recoveredBlock267Block277PC := 303.
        ].
        recoveredBlock267Block277Step = 303 ifTrue: [
            recoveredBlock267Block277Stack3 := [:block28001628Arg1 | 
    nil
].
            recoveredBlock267Block277PC := 305.
        ].
        recoveredBlock267Block277Step = 305 ifTrue: [
            recoveredBlock267Block277PC := 310.
        ].
        recoveredBlock267Block277Step = 310 ifTrue: [
            recoveredBlock267Block277Stack2 := (recoveredBlock267Block277Stack2) getObjectIfUndefined: (recoveredBlock267Block277Stack3).
            recoveredBlock267Block277PC := 312.
        ].
        recoveredBlock267Block277Step = 312 ifTrue: [
            recoveredBlock267Block277Stack3 := recoveredBlock267Block277Stack2.
            recoveredBlock267Block277PC := 313.
        ].
        recoveredBlock267Block277Step = 313 ifTrue: [
            recoveredBlock267Block277Local2 := recoveredBlock267Block277Stack3.
            recoveredBlock267Block277PC := 316.
        ].
        recoveredBlock267Block277Step = 316 ifTrue: [
            (recoveredBlock267Block277Stack2 == nil) ifTrue: [recoveredBlock267Block277PC := 505] ifFalse: [recoveredBlock267Block277PC := 320].
        ].
        recoveredBlock267Block277Step = 320 ifTrue: [
            recoveredBlock267Block277PC := 321.
        ].
        recoveredBlock267Block277Step = 321 ifTrue: [
            recoveredBlock267Block277Stack1 := nil.
            recoveredBlock267Block277PC := 322.
        ].
        recoveredBlock267Block277Step = 322 ifTrue: [
            recoveredBlock267Block277Stack2 := recoveredLocal2.
            recoveredBlock267Block277PC := 325.
        ].
        recoveredBlock267Block277Step = 325 ifTrue: [
            recoveredBlock267Block277Stack3 := [:recoveredBlock267Block277Block325Arg1 | 
    | recoveredBlock267Block277Block325Value0 recoveredBlock267Block277Block325Value1 recoveredBlock267Block277Block325Value2 recoveredBlock267Block277Block325Value3 |
    recoveredBlock267Block277Block325Value0 := recoveredBlock267Block277Block325Arg1.
    recoveredBlock267Block277Block325Value1 := recoveredBlock267Block277Local2.
    recoveredBlock267Block277Block325Value2 := (recoveredBlock267Block277Block325Value1) label.
    recoveredBlock267Block277Block325Value3 := (recoveredBlock267Block277Block325Value0) equalsIgnoringCase: (recoveredBlock267Block277Block325Value2).
    recoveredBlock267Block277Block325Value3
].
            recoveredBlock267Block277PC := 341.
        ].
        recoveredBlock267Block277Step = 341 ifTrue: [
            recoveredBlock267Block277Stack4 := [].
            recoveredBlock267Block277PC := 343.
        ].
        recoveredBlock267Block277Step = 343 ifTrue: [
            recoveredBlock267Block277Stack2 := (recoveredBlock267Block277Stack2) detect: (recoveredBlock267Block277Stack3) ifNone: (recoveredBlock267Block277Stack4).
            recoveredBlock267Block277PC := 345.
        ].
        recoveredBlock267Block277Step = 345 ifTrue: [
            (recoveredBlock267Block277Stack2 == nil) ifTrue: [recoveredBlock267Block277PC := 505] ifFalse: [recoveredBlock267Block277PC := 348].
        ].
        recoveredBlock267Block277Step = 348 ifTrue: [
            recoveredBlock267Block277PC := 349.
        ].
        recoveredBlock267Block277Step = 349 ifTrue: [
            recoveredBlock267Block277Stack1 := recoveredBlock267Block277Local2.
            recoveredBlock267Block277PC := 352.
        ].
        recoveredBlock267Block277Step = 352 ifTrue: [
            recoveredBlock267Block277Stack1 := (recoveredBlock267Block277Stack1) modifiable.
            recoveredBlock267Block277PC := 354.
        ].
        recoveredBlock267Block277Step = 354 ifTrue: [
            (recoveredBlock267Block277Stack1) ifTrue: [recoveredBlock267Block277PC := 358] ifFalse: [recoveredBlock267Block277PC := 454].
        ].
        recoveredBlock267Block277Step = 358 ifTrue: [
            recoveredBlock267Block277Stack1 := recoveredBlock267Block277Local2.
            recoveredBlock267Block277PC := 361.
        ].
        recoveredBlock267Block277Step = 361 ifTrue: [
            recoveredBlock267Block277Stack1 := (recoveredBlock267Block277Stack1) isRead.
            recoveredBlock267Block277PC := 363.
        ].
        recoveredBlock267Block277Step = 363 ifTrue: [
            (recoveredBlock267Block277Stack1) ifTrue: [recoveredBlock267Block277PC := 366] ifFalse: [recoveredBlock267Block277PC := 454].
        ].
        recoveredBlock267Block277Step = 366 ifTrue: [
            recoveredBlock267Block277Stack1 := recoveredBlock267Block277Local2.
            recoveredBlock267Block277PC := 369.
        ].
        recoveredBlock267Block277Step = 369 ifTrue: [
            recoveredBlock267Block277Stack1 := (recoveredBlock267Block277Stack1) importLabel.
            recoveredBlock267Block277PC := 371.
        ].
        recoveredBlock267Block277Step = 371 ifTrue: [
            recoveredBlock267Block277Local1 := recoveredBlock267Block277Stack1.
            recoveredBlock267Block277PC := 374.
        ].
        recoveredBlock267Block277Step = 374 ifTrue: [
            recoveredBlock267Block277Stack1 := recoveredBlock267Block277Local2.
            recoveredBlock267Block277PC := 377.
        ].
        recoveredBlock267Block277Step = 377 ifTrue: [
            recoveredBlock267Block277Stack2 := recoveredBlock267Block277Local2.
            recoveredBlock267Block277PC := 380.
        ].
        recoveredBlock267Block277Step = 380 ifTrue: [
            recoveredBlock267Block277Stack2 := (recoveredBlock267Block277Stack2) label.
            recoveredBlock267Block277PC := 382.
        ].
        recoveredBlock267Block277Step = 382 ifTrue: [
            recoveredBlock267Block277Stack3 := '_1'.
            recoveredBlock267Block277PC := 386.
        ].
        recoveredBlock267Block277Step = 386 ifTrue: [
            recoveredBlock267Block277Stack2 := (recoveredBlock267Block277Stack2) , (recoveredBlock267Block277Stack3).
            recoveredBlock267Block277PC := 391.
        ].
        recoveredBlock267Block277Step = 391 ifTrue: [
            (recoveredBlock267Block277Stack1) label: (recoveredBlock267Block277Stack2).
            recoveredBlock267Block277PC := 395.
        ].
        recoveredBlock267Block277Step = 395 ifTrue: [
            recoveredBlock267Block277Stack1 := recoveredBlock267Block277Local2.
            recoveredBlock267Block277PC := 398.
        ].
        recoveredBlock267Block277Step = 398 ifTrue: [
            (recoveredBlock267Block277Stack1) buildUniqueName.
            recoveredBlock267Block277PC := 403.
        ].
        recoveredBlock267Block277Step = 403 ifTrue: [
            recoveredBlock267Block277Stack1 := recoveredLocal3.
            recoveredBlock267Block277PC := 406.
        ].
        recoveredBlock267Block277Step = 406 ifTrue: [
            recoveredBlock267Block277Stack2 := 'Renamed '.
            recoveredBlock267Block277PC := 410.
        ].
        recoveredBlock267Block277Step = 410 ifTrue: [
            recoveredBlock267Block277Stack3 := recoveredBlock267Block277Local1.
            recoveredBlock267Block277PC := 413.
        ].
        recoveredBlock267Block277Step = 413 ifTrue: [
            recoveredBlock267Block277Stack2 := (recoveredBlock267Block277Stack2) , (recoveredBlock267Block277Stack3).
            recoveredBlock267Block277PC := 417.
        ].
        recoveredBlock267Block277Step = 417 ifTrue: [
            recoveredBlock267Block277Stack3 := ' to '.
            recoveredBlock267Block277PC := 420.
        ].
        recoveredBlock267Block277Step = 420 ifTrue: [
            recoveredBlock267Block277Stack2 := (recoveredBlock267Block277Stack2) , (recoveredBlock267Block277Stack3).
            recoveredBlock267Block277PC := 425.
        ].
        recoveredBlock267Block277Step = 425 ifTrue: [
            recoveredBlock267Block277Stack3 := recoveredBlock267Block277Local2.
            recoveredBlock267Block277PC := 428.
        ].
        recoveredBlock267Block277Step = 428 ifTrue: [
            recoveredBlock267Block277Stack3 := (recoveredBlock267Block277Stack3) label.
            recoveredBlock267Block277PC := 430.
        ].
        recoveredBlock267Block277Step = 430 ifTrue: [
            recoveredBlock267Block277Stack2 := (recoveredBlock267Block277Stack2) , (recoveredBlock267Block277Stack3).
            recoveredBlock267Block277PC := 435.
        ].
        recoveredBlock267Block277Step = 435 ifTrue: [
            recoveredBlock267Block277Stack3 := '.'.
            recoveredBlock267Block277PC := 438.
        ].
        recoveredBlock267Block277Step = 438 ifTrue: [
            recoveredBlock267Block277Stack2 := (recoveredBlock267Block277Stack2) , (recoveredBlock267Block277Stack3).
            recoveredBlock267Block277PC := 443.
        ].
        recoveredBlock267Block277Step = 443 ifTrue: [
            recoveredBlock267Block277Stack1 := (recoveredBlock267Block277Stack1) addImportantInfoText: (recoveredBlock267Block277Stack2).
            recoveredBlock267Block277PC := 447.
        ].
        recoveredBlock267Block277Step = 447 ifTrue: [
            recoveredBlock267Block277Stack2 := nil.
            recoveredBlock267Block277PC := 448.
        ].
        recoveredBlock267Block277Step = 448 ifTrue: [
            recoveredBlock267Block277Local1 := recoveredBlock267Block277Stack2.
            recoveredBlock267Block277PC := 451.
        ].
        recoveredBlock267Block277Step = 451 ifTrue: [
            recoveredBlock267Block277PC := 505.
        ].
        recoveredBlock267Block277Step = 454 ifTrue: [
            recoveredBlock267Block277Stack1 := recoveredBlock267Block277Local2.
            recoveredBlock267Block277PC := 457.
        ].
        recoveredBlock267Block277Step = 457 ifTrue: [
            recoveredBlock267Block277Stack1 := (recoveredBlock267Block277Stack1) isRead.
            recoveredBlock267Block277PC := 459.
        ].
        recoveredBlock267Block277Step = 459 ifTrue: [
            (recoveredBlock267Block277Stack1) ifTrue: [recoveredBlock267Block277PC := 486] ifFalse: [recoveredBlock267Block277PC := 462].
        ].
        recoveredBlock267Block277Step = 462 ifTrue: [
            recoveredBlock267Block277Stack1 := recoveredLocal3.
            recoveredBlock267Block277PC := 465.
        ].
        recoveredBlock267Block277Step = 465 ifTrue: [
            recoveredBlock267Block277Stack2 := recoveredBlock267Block277Local2.
            recoveredBlock267Block277PC := 468.
        ].
        recoveredBlock267Block277Step = 468 ifTrue: [
            recoveredBlock267Block277Stack2 := (recoveredBlock267Block277Stack2) importLabel.
            recoveredBlock267Block277PC := 470.
        ].
        recoveredBlock267Block277Step = 470 ifTrue: [
            recoveredBlock267Block277Stack3 := ' has no read access, therefore it is not converted.'.
            recoveredBlock267Block277PC := 474.
        ].
        recoveredBlock267Block277Step = 474 ifTrue: [
            recoveredBlock267Block277Stack2 := (recoveredBlock267Block277Stack2) , (recoveredBlock267Block277Stack3).
            recoveredBlock267Block277PC := 479.
        ].
        recoveredBlock267Block277Step = 479 ifTrue: [
            recoveredBlock267Block277Stack1 := (recoveredBlock267Block277Stack1) addWarningText: (recoveredBlock267Block277Stack2).
            recoveredBlock267Block277PC := 483.
        ].
        recoveredBlock267Block277Step = 483 ifTrue: [
            recoveredBlock267Block277PC := 505.
        ].
        recoveredBlock267Block277Step = 486 ifTrue: [
            recoveredBlock267Block277Stack1 := recoveredLocal3.
            recoveredBlock267Block277PC := 489.
        ].
        recoveredBlock267Block277Step = 489 ifTrue: [
            recoveredBlock267Block277Stack2 := recoveredBlock267Block277Local2.
            recoveredBlock267Block277PC := 492.
        ].
        recoveredBlock267Block277Step = 492 ifTrue: [
            recoveredBlock267Block277Stack2 := (recoveredBlock267Block277Stack2) importLabel.
            recoveredBlock267Block277PC := 494.
        ].
        recoveredBlock267Block277Step = 494 ifTrue: [
            recoveredBlock267Block277Stack3 := ' is not modifiable, therefore it is not converted.'.
            recoveredBlock267Block277PC := 498.
        ].
        recoveredBlock267Block277Step = 498 ifTrue: [
            recoveredBlock267Block277Stack2 := (recoveredBlock267Block277Stack2) , (recoveredBlock267Block277Stack3).
            recoveredBlock267Block277PC := 503.
        ].
        recoveredBlock267Block277Step = 503 ifTrue: [
            recoveredBlock267Block277Stack1 := (recoveredBlock267Block277Stack1) addText: (recoveredBlock267Block277Stack2).
            recoveredBlock267Block277PC := 505.
        ].
        recoveredBlock267Block277Step = 505 ifTrue: [
            recoveredBlock267Block277Result := recoveredBlock267Block277Stack1.
            recoveredBlock267Block277Done := true.
        ].
    ].
    recoveredBlock267Block277Result
].
    recoveredBlock267Value2 := (recoveredBlock267Value0) doWithIndex: (recoveredBlock267Value1).
    recoveredBlock267Value2
].
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack3 := 'Convert ambiguous component names...'.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack5 := 'Database '.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack6 := (recoveredStack6) library.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack6 := (recoveredStack6) location.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            (recoveredStack1) execWithProgressDialog: (recoveredStack2) message: (recoveredStack3) showProgress: (recoveredStack4) title: (recoveredStack5).
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            (recoveredStack1) printReady.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack1 := (recoveredStack1) mainController.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            (recoveredStack1) commitDBView: (recoveredStack2).
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock564Local1 recoveredBlock564Stack0 recoveredBlock564Stack1 recoveredBlock564Stack2 recoveredBlock564PC recoveredBlock564Step recoveredBlock564Done recoveredBlock564Result |
    recoveredBlock564Stack0 := self.
    recoveredBlock564PC := 570.
    recoveredBlock564Done := false.
    [recoveredBlock564Done not] whileTrue: [
        recoveredBlock564Step := recoveredBlock564PC.
        recoveredBlock564Step = 570 ifTrue: [
            recoveredBlock564Stack0 := (recoveredBlock564Stack0) dbAccess.
            recoveredBlock564PC := 572.
        ].
        recoveredBlock564Step = 572 ifTrue: [
            recoveredBlock564Stack1 := SGCodeContainerExternal.
            recoveredBlock564PC := 576.
        ].
        recoveredBlock564Step = 576 ifTrue: [
            recoveredBlock564Stack0 := (recoveredBlock564Stack0) readClassKeys: (recoveredBlock564Stack1).
            recoveredBlock564PC := 581.
        ].
        recoveredBlock564Step = 581 ifTrue: [
            recoveredBlock564Local1 := recoveredBlock564Stack0.
            recoveredBlock564PC := 582.
        ].
        recoveredBlock564Step = 582 ifTrue: [
            recoveredBlock564Stack0 := recoveredBlock564Local1.
            recoveredBlock564PC := 583.
        ].
        recoveredBlock564Step = 583 ifTrue: [
            recoveredBlock564Stack1 := [:block2800164cArg1 | 
    | block2800164cValue0 block2800164cValue1 block2800164cValue2 block2800164cValue3 block2800164cValue4 block2800164cValue5 |
    block2800164cValue0 := block2800164cArg1.
    (block2800164cValue0) updateApplicationTimeStamp: (0).
    block2800164cValue1 := block2800164cArg1.
    block2800164cValue2 := block2800164cArg1.
    block2800164cValue3 := (block2800164cValue2) applicationFlag.
    block2800164cValue4 := (block2800164cValue3) bitOr: (1).
    block2800164cValue5 := (block2800164cValue1) updateApplicationFlag: (block2800164cValue4).
    block2800164cValue5
].
            recoveredBlock564PC := 586.
        ].
        recoveredBlock564Step = 586 ifTrue: [
            recoveredBlock564PC := 614.
        ].
        recoveredBlock564Step = 614 ifTrue: [
            recoveredBlock564Stack0 := (recoveredBlock564Stack0) do: (recoveredBlock564Stack1).
            recoveredBlock564PC := 616.
        ].
        recoveredBlock564Step = 616 ifTrue: [
            recoveredBlock564Result := recoveredBlock564Stack0.
            recoveredBlock564Done := true.
        ].
    ].
    recoveredBlock564Result
].
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            (recoveredStack1) execShortOperation: (recoveredStack2).
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

