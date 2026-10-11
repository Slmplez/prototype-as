"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200184ac; bytecode file offset 0x92209c"
!EtasDatabaseWidgetCtrl class methodsFor: 'recovered'!
pasteBufferItemString
    ^'item'
! !

"ASDBase.ic method 0x200818f8; bytecode file offset 0x97e234"
!EtasDatabaseWidgetCtrl class methodsFor: 'recovered'!
collectReferencesWithChildrenTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := MainController.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) collectReferencesWithChildrenTo: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20588314; bytecode file offset 0xe84c6c"
!EtasDatabaseWidgetCtrl class methodsFor: 'recovered'!
checkReferencesForDelete: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 |
    recoveredBlock20Value0 := MainController.
    recoveredBlock20Value1 := MainController.
    recoveredBlock20Value2 := (recoveredBlock20Value1) userInterface.
    (recoveredBlock20Value0) commitDBView: (recoveredBlock20Value2).
    recoveredBlock20Value3 := (self) getDBInterfaceGlobal.
    recoveredBlock20Value4 := [
    | recoveredBlock20Block35Value0 recoveredBlock20Block35Value1 recoveredBlock20Block35Value2 recoveredBlock20Block35Value3 |
    recoveredBlock20Block35Value0 := MainController.
    recoveredBlock20Block35Value1 := recoveredArg1.
    recoveredBlock20Block35Value2 := (recoveredBlock20Block35Value0) collectReferencesWithChildrenTo: (recoveredBlock20Block35Value1).
    recoveredBlock20Block35Value3 := recoveredBlock20Block35Value2.
    recoveredLocal6 := recoveredBlock20Block35Value3.
    recoveredBlock20Block35Value2
].
    recoveredBlock20Value5 := (recoveredBlock20Value3) holdModifiedWhile: (recoveredBlock20Value4).
    recoveredBlock20Value5
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) showBusyCursorWhile: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := 'call_81104'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := [:block28113980Arg1 | 
    | block28113980Value0 block28113980Value1 |
    block28113980Value0 := block28113980Arg1.
    block28113980Value1 := (block28113980Value0) dbObject.
    block28113980Value1
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := [:recoveredBlock88Arg1 | 
    | recoveredBlock88Stack0 recoveredBlock88Stack1 recoveredBlock88Stack2 recoveredBlock88Stack3 recoveredBlock88Stack4 recoveredBlock88PC recoveredBlock88Step recoveredBlock88Done recoveredBlock88Result |
    recoveredBlock88Stack0 := self.
    recoveredBlock88PC := 94.
    recoveredBlock88Done := false.
    [recoveredBlock88Done not] whileTrue: [
        recoveredBlock88Step := recoveredBlock88PC.
        recoveredBlock88Step = 94 ifTrue: [
            recoveredBlock88Stack1 := recoveredLocal2.
            recoveredBlock88PC := 97.
        ].
        recoveredBlock88Step = 97 ifTrue: [
            recoveredBlock88Stack2 := recoveredBlock88Arg1.
            recoveredBlock88PC := 98.
        ].
        recoveredBlock88Step = 98 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) allChildren.
            recoveredBlock88PC := 100.
        ].
        recoveredBlock88Step = 100 ifTrue: [
            recoveredBlock88Stack3 := [:block281139a4Arg1 | 
    | block281139a4Value0 block281139a4Value1 |
    block281139a4Value0 := block281139a4Arg1.
    block281139a4Value1 := (block281139a4Value0) dbObject.
    block281139a4Value1
].
            recoveredBlock88PC := 102.
        ].
        recoveredBlock88Step = 102 ifTrue: [
            recoveredBlock88PC := 110.
        ].
        recoveredBlock88Step = 110 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) collect: (recoveredBlock88Stack3).
            recoveredBlock88PC := 112.
        ].
        recoveredBlock88Step = 112 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) addAll: (recoveredBlock88Stack2).
            recoveredBlock88PC := 114.
        ].
        recoveredBlock88Step = 114 ifTrue: [
            recoveredBlock88Result := recoveredBlock88Stack1.
            recoveredBlock88Done := true.
        ].
    ].
    recoveredBlock88Result
].
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := [:recoveredBlock135Arg1 | 
    | recoveredBlock135Stack0 recoveredBlock135Stack1 recoveredBlock135Stack2 recoveredBlock135Stack3 recoveredBlock135Stack4 recoveredBlock135PC recoveredBlock135Step recoveredBlock135Done recoveredBlock135Result |
    recoveredBlock135Stack0 := self.
    recoveredBlock135PC := 142.
    recoveredBlock135Done := false.
    [recoveredBlock135Done not] whileTrue: [
        recoveredBlock135Step := recoveredBlock135PC.
        recoveredBlock135Step = 142 ifTrue: [
            recoveredBlock135Stack1 := recoveredBlock135Arg1.
            recoveredBlock135PC := 143.
        ].
        recoveredBlock135Step = 143 ifTrue: [
            recoveredBlock135Stack1 := (recoveredBlock135Stack1) value.
            recoveredBlock135PC := 145.
        ].
        recoveredBlock135Step = 145 ifTrue: [
            recoveredBlock135Stack2 := [:recoveredBlock135Block145Arg1 | 
    | recoveredBlock135Block145Value0 recoveredBlock135Block145Value1 recoveredBlock135Block145Value2 recoveredBlock135Block145Value3 |
    recoveredBlock135Block145Value0 := recoveredLocal2.
    recoveredBlock135Block145Value1 := recoveredBlock135Block145Arg1.
    recoveredBlock135Block145Value2 := (recoveredBlock135Block145Value0) includes: (recoveredBlock135Block145Value1).
    recoveredBlock135Block145Value3 := (recoveredBlock135Block145Value2) not.
    recoveredBlock135Block145Value3
].
            recoveredBlock135PC := 160.
        ].
        recoveredBlock135Step = 160 ifTrue: [
            recoveredBlock135Stack1 := (recoveredBlock135Stack1) select: (recoveredBlock135Stack2).
            recoveredBlock135PC := 162.
        ].
        recoveredBlock135Step = 162 ifTrue: [
            recoveredLocal4 := recoveredBlock135Stack1.
            recoveredBlock135PC := 165.
        ].
        recoveredBlock135Step = 165 ifTrue: [
            recoveredBlock135Stack1 := nil.
            recoveredBlock135PC := 166.
        ].
        recoveredBlock135Step = 166 ifTrue: [
            recoveredBlock135Stack2 := recoveredLocal4.
            recoveredBlock135PC := 169.
        ].
        recoveredBlock135Step = 169 ifTrue: [
            recoveredBlock135Stack2 := (recoveredBlock135Stack2) notEmpty.
            recoveredBlock135PC := 171.
        ].
        recoveredBlock135Step = 171 ifTrue: [
            (recoveredBlock135Stack2) ifTrue: [recoveredBlock135PC := 174] ifFalse: [recoveredBlock135PC := 186].
        ].
        recoveredBlock135Step = 174 ifTrue: [
            recoveredBlock135PC := 175.
        ].
        recoveredBlock135Step = 175 ifTrue: [
            recoveredBlock135Stack1 := recoveredLocal1.
            recoveredBlock135PC := 178.
        ].
        recoveredBlock135Step = 178 ifTrue: [
            recoveredBlock135Stack2 := recoveredBlock135Arg1.
            recoveredBlock135PC := 179.
        ].
        recoveredBlock135Step = 179 ifTrue: [
            recoveredBlock135Stack2 := (recoveredBlock135Stack2) key.
            recoveredBlock135PC := 181.
        ].
        recoveredBlock135Step = 181 ifTrue: [
            recoveredBlock135Stack3 := recoveredLocal4.
            recoveredBlock135PC := 184.
        ].
        recoveredBlock135Step = 184 ifTrue: [
            recoveredBlock135Stack1 := (recoveredBlock135Stack1) at: (recoveredBlock135Stack2) put: (recoveredBlock135Stack3).
            recoveredBlock135PC := 186.
        ].
        recoveredBlock135Step = 186 ifTrue: [
            recoveredBlock135Result := recoveredBlock135Stack1.
            recoveredBlock135Done := true.
        ].
    ].
    recoveredBlock135Result
].
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack1) associationsDo: (recoveredStack2).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 198] ifFalse: [recoveredPC := 256].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := SGReferenceDialog.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack2) referenceDictionary: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack2) libCtrl: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack4 := [:block281139c8Arg1 :block281139c8Arg2 | 
    | block281139c8Value0 block281139c8Value1 block281139c8Value2 block281139c8Value3 block281139c8Value4 |
    block281139c8Value0 := block281139c8Arg1.
    block281139c8Value1 := (block281139c8Value0) label.
    block281139c8Value2 := block281139c8Arg2.
    block281139c8Value3 := (block281139c8Value2) label.
    block281139c8Value4 := (block281139c8Value1) < (block281139c8Value3).
    block281139c8Value4
].
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack3 := (recoveredStack3) asSortedCollection: (recoveredStack4).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack2) items: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack2) button2Sensitive: (recoveredStack3).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := EtContinueButton.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack1) button1Name: (recoveredStack2).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) promptAtCurrentMousePosition.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 264] ifFalse: [recoveredPC := 262].
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205f0bc8; bytecode file offset 0xeed55c"
!EtasDatabaseWidgetCtrl class methodsFor: 'recovered'!
promptDeleteMessageForItems: recoveredArg1 userInterface: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'ASDDeleteComponent'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkAllViewsExcept: (recoveredStack2).
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
            recoveredStack1 := ASDDialogOptions.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDialogDisabled: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := ASDDialogOptions.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDialogDecision: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 'call_86934'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Stack0 recoveredBlock58Stack1 recoveredBlock58Stack2 recoveredBlock58Stack3 recoveredBlock58Stack4 recoveredBlock58PC recoveredBlock58Step recoveredBlock58Done recoveredBlock58Result |
    recoveredBlock58Stack0 := self.
    recoveredBlock58PC := 64.
    recoveredBlock58Done := false.
    [recoveredBlock58Done not] whileTrue: [
        recoveredBlock58Step := recoveredBlock58PC.
        recoveredBlock58Step = 64 ifTrue: [
            recoveredBlock58Stack1 := nil.
            recoveredBlock58PC := 65.
        ].
        recoveredBlock58Step = 65 ifTrue: [
            recoveredBlock58Stack2 := recoveredBlock58Arg1.
            recoveredBlock58PC := 66.
        ].
        recoveredBlock58Step = 66 ifTrue: [
            recoveredBlock58Stack2 := (recoveredBlock58Stack2) isRBDBUndefinedObject.
            recoveredBlock58PC := 68.
        ].
        recoveredBlock58Step = 68 ifTrue: [
            recoveredBlock58Stack2 := (recoveredBlock58Stack2) not.
            recoveredBlock58PC := 69.
        ].
        recoveredBlock58Step = 69 ifTrue: [
            recoveredBlock58Stack3 := recoveredBlock58Arg1.
            recoveredBlock58PC := 70.
        ].
        recoveredBlock58Step = 70 ifTrue: [
            recoveredBlock58Stack3 := (recoveredBlock58Stack3) isError.
            recoveredBlock58PC := 72.
        ].
        recoveredBlock58Step = 72 ifTrue: [
            recoveredBlock58Stack3 := (recoveredBlock58Stack3) not.
            recoveredBlock58PC := 73.
        ].
        recoveredBlock58Step = 73 ifTrue: [
            recoveredBlock58Stack2 := (recoveredBlock58Stack2) & (recoveredBlock58Stack3).
            recoveredBlock58PC := 75.
        ].
        recoveredBlock58Step = 75 ifTrue: [
            (recoveredBlock58Stack2) ifTrue: [recoveredBlock58PC := 78] ifFalse: [recoveredBlock58PC := 104].
        ].
        recoveredBlock58Step = 78 ifTrue: [
            recoveredBlock58PC := 79.
        ].
        recoveredBlock58Step = 79 ifTrue: [
            recoveredBlock58Stack1 := recoveredBlock58Arg1.
            recoveredBlock58PC := 80.
        ].
        recoveredBlock58Step = 80 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) isFolder.
            recoveredBlock58PC := 82.
        ].
        recoveredBlock58Step = 82 ifTrue: [
            (recoveredBlock58Stack1) ifTrue: [recoveredBlock58PC := 86] ifFalse: [recoveredBlock58PC := 98].
        ].
        recoveredBlock58Step = 86 ifTrue: [
            recoveredBlock58Stack1 := recoveredLocal3.
            recoveredBlock58PC := 89.
        ].
        recoveredBlock58Step = 89 ifTrue: [
            recoveredBlock58Stack2 := recoveredBlock58Arg1.
            recoveredBlock58PC := 90.
        ].
        recoveredBlock58Step = 90 ifTrue: [
            recoveredBlock58Stack2 := (recoveredBlock58Stack2) allNotFolderChildren.
            recoveredBlock58PC := 92.
        ].
        recoveredBlock58Step = 92 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) addAll: (recoveredBlock58Stack2).
            recoveredBlock58PC := 94.
        ].
        recoveredBlock58Step = 94 ifTrue: [
            recoveredBlock58PC := 104.
        ].
        recoveredBlock58Step = 98 ifTrue: [
            recoveredBlock58Stack1 := recoveredLocal3.
            recoveredBlock58PC := 101.
        ].
        recoveredBlock58Step = 101 ifTrue: [
            recoveredBlock58Stack2 := recoveredBlock58Arg1.
            recoveredBlock58PC := 102.
        ].
        recoveredBlock58Step = 102 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) add: (recoveredBlock58Stack2).
            recoveredBlock58PC := 104.
        ].
        recoveredBlock58Step = 104 ifTrue: [
            recoveredBlock58Result := recoveredBlock58Stack1.
            recoveredBlock58Done := true.
        ].
    ].
    recoveredBlock58Result
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := Locale.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) current.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) preferredStringClass.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := EtDelete.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := (recoveredStack3) someElement.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredPC := 246.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := EtDeleteFollowingItems.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := 'call_86934'.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := [:block2811b7c8Arg1 :block2811b7c8Arg2 | 
    | block2811b7c8Value0 block2811b7c8Value1 block2811b7c8Value2 block2811b7c8Value3 block2811b7c8Value4 |
    block2811b7c8Value0 := block2811b7c8Arg1.
    block2811b7c8Value1 := (block2811b7c8Value0) label.
    block2811b7c8Value2 := block2811b7c8Arg2.
    block2811b7c8Value3 := (block2811b7c8Value2) label.
    block2811b7c8Value4 := (block2811b7c8Value1) < (block2811b7c8Value3).
    block2811b7c8Value4
].
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := [:recoveredBlock196Arg1 :recoveredBlock196Arg2 | 
    | recoveredBlock196Stack0 recoveredBlock196Stack1 recoveredBlock196Stack2 recoveredBlock196Stack3 recoveredBlock196Stack4 recoveredBlock196PC recoveredBlock196Step recoveredBlock196Done recoveredBlock196Result |
    recoveredBlock196Stack0 := self.
    recoveredBlock196PC := 202.
    recoveredBlock196Done := false.
    [recoveredBlock196Done not] whileTrue: [
        recoveredBlock196Step := recoveredBlock196PC.
        recoveredBlock196Step = 202 ifTrue: [
            recoveredBlock196Stack1 := recoveredBlock196Arg2.
            recoveredBlock196PC := 203.
        ].
        recoveredBlock196Step = 203 ifTrue: [
            recoveredBlock196Stack2 := 25.
            recoveredBlock196PC := 205.
        ].
        recoveredBlock196Step = 205 ifTrue: [
            recoveredBlock196Stack1 := (recoveredBlock196Stack1) < (recoveredBlock196Stack2).
            recoveredBlock196PC := 206.
        ].
        recoveredBlock196Step = 206 ifTrue: [
            (recoveredBlock196Stack1) ifTrue: [recoveredBlock196PC := 210] ifFalse: [recoveredBlock196PC := 224].
        ].
        recoveredBlock196Step = 210 ifTrue: [
            recoveredBlock196Stack1 := recoveredLocal4.
            recoveredBlock196PC := 213.
        ].
        recoveredBlock196Step = 213 ifTrue: [
            recoveredBlock196Stack2 := recoveredBlock196Stack1.
            recoveredBlock196PC := 214.
        ].
        recoveredBlock196Step = 214 ifTrue: [
            (recoveredBlock196Stack2) cr.
            recoveredBlock196PC := 216.
        ].
        recoveredBlock196Step = 216 ifTrue: [
            recoveredBlock196Stack2 := recoveredBlock196Arg1.
            recoveredBlock196PC := 217.
        ].
        recoveredBlock196Step = 217 ifTrue: [
            recoveredBlock196Stack2 := (recoveredBlock196Stack2) label.
            recoveredBlock196PC := 219.
        ].
        recoveredBlock196Step = 219 ifTrue: [
            recoveredBlock196Stack1 := (recoveredBlock196Stack1) nextPutAll: (recoveredBlock196Stack2).
            recoveredBlock196PC := 221.
        ].
        recoveredBlock196Step = 221 ifTrue: [
            recoveredBlock196PC := 243.
        ].
        recoveredBlock196Step = 224 ifTrue: [
            recoveredBlock196Stack1 := nil.
            recoveredBlock196PC := 225.
        ].
        recoveredBlock196Step = 225 ifTrue: [
            recoveredBlock196Stack2 := recoveredBlock196Arg2.
            recoveredBlock196PC := 226.
        ].
        recoveredBlock196Step = 226 ifTrue: [
            recoveredBlock196Stack3 := 25.
            recoveredBlock196PC := 228.
        ].
        recoveredBlock196Step = 228 ifTrue: [
            recoveredBlock196Stack2 := (recoveredBlock196Stack2) = (recoveredBlock196Stack3).
            recoveredBlock196PC := 229.
        ].
        recoveredBlock196Step = 229 ifTrue: [
            (recoveredBlock196Stack2) ifTrue: [recoveredBlock196PC := 232] ifFalse: [recoveredBlock196PC := 243].
        ].
        recoveredBlock196Step = 232 ifTrue: [
            recoveredBlock196PC := 233.
        ].
        recoveredBlock196Step = 233 ifTrue: [
            recoveredBlock196Stack1 := recoveredLocal4.
            recoveredBlock196PC := 236.
        ].
        recoveredBlock196Step = 236 ifTrue: [
            recoveredBlock196Stack2 := recoveredBlock196Stack1.
            recoveredBlock196PC := 237.
        ].
        recoveredBlock196Step = 237 ifTrue: [
            (recoveredBlock196Stack2) cr.
            recoveredBlock196PC := 239.
        ].
        recoveredBlock196Step = 239 ifTrue: [
            recoveredBlock196Stack2 := '...'.
            recoveredBlock196PC := 241.
        ].
        recoveredBlock196Step = 241 ifTrue: [
            recoveredBlock196Stack1 := (recoveredBlock196Stack1) nextPutAll: (recoveredBlock196Stack2).
            recoveredBlock196PC := 243.
        ].
        recoveredBlock196Step = 243 ifTrue: [
            recoveredBlock196Result := recoveredBlock196Stack1.
            recoveredBlock196Done := true.
        ].
    ].
    recoveredBlock196Result
].
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := ' ?'.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := EtasUserQuestion.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack2) prompterID: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack3 := 'CANCELOK'.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack2) buttonStyle: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack3 := 'question'.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            (recoveredStack1) isNil: (recoveredStack2).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 302] ifFalse: [recoveredPC := 300].
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 314] ifFalse: [recoveredPC := 364].
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 360] ifFalse: [recoveredPC := 324].
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack1 := (recoveredStack1) isWrite.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 360] ifFalse: [recoveredPC := 334].
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := RBUserQuestion.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack2 := EtItemProtectedContinue.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack3 := (recoveredStack3) someElement.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := (recoveredStack1) confirm: (recoveredStack2).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            (recoveredStack2) yesNo.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 360] ifFalse: [recoveredPC := 358].
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 360 ifTrue: [
            recoveredPC := 408.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack2 := [:block2811b7ecArg1 | 
    | block2811b7ecStack0 block2811b7ecStack1 block2811b7ecStack2 block2811b7ecStack3 block2811b7ecPC block2811b7ecStep block2811b7ecDone block2811b7ecResult |
    block2811b7ecStack0 := self.
    block2811b7ecPC := 4.
    block2811b7ecDone := false.
    [block2811b7ecDone not] whileTrue: [
        block2811b7ecStep := block2811b7ecPC.
        block2811b7ecStep = 4 ifTrue: [
            block2811b7ecStack1 := false.
            block2811b7ecPC := 5.
        ].
        block2811b7ecStep = 5 ifTrue: [
            block2811b7ecStack2 := block2811b7ecArg1.
            block2811b7ecPC := 6.
        ].
        block2811b7ecStep = 6 ifTrue: [
            block2811b7ecStack2 := (block2811b7ecStack2) isError.
            block2811b7ecPC := 8.
        ].
        block2811b7ecStep = 8 ifTrue: [
            (block2811b7ecStack2) ifTrue: [block2811b7ecPC := 17] ifFalse: [block2811b7ecPC := 12].
        ].
        block2811b7ecStep = 12 ifTrue: [
            block2811b7ecPC := 13.
        ].
        block2811b7ecStep = 13 ifTrue: [
            block2811b7ecStack1 := block2811b7ecArg1.
            block2811b7ecPC := 14.
        ].
        block2811b7ecStep = 14 ifTrue: [
            block2811b7ecStack1 := (block2811b7ecStack1) isWrite.
            block2811b7ecPC := 16.
        ].
        block2811b7ecStep = 16 ifTrue: [
            block2811b7ecStack1 := (block2811b7ecStack1) not.
            block2811b7ecPC := 17.
        ].
        block2811b7ecStep = 17 ifTrue: [
            block2811b7ecResult := block2811b7ecStack1.
            block2811b7ecDone := true.
        ].
    ].
    block2811b7ecResult
].
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 392] ifFalse: [recoveredPC := 408].
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := RBUserQuestion.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack2 := EtSomeProtectedContinue.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := (recoveredStack1) confirm: (recoveredStack2).
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            (recoveredStack2) yesNo.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 408] ifFalse: [recoveredPC := 406].
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

