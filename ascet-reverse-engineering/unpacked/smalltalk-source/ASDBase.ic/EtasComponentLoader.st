"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2015686c; bytecode file offset 0xa53134"
!EtasComponentLoader methodsFor: 'recovered'!
loadProject: recoveredArg1 makeConfig: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGAnalyzeGraph.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := SGAnalyzeCommand.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := (recoveredValue0) createGraphFor: (recoveredValue1) command: (recoveredValue3).
    analyzeGraph := recoveredValue4.
    recoveredValue5 := analyzeGraph.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) setProject: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20181090; bytecode file offset 0xa7d94c"
!EtasComponentLoader methodsFor: 'recovered'!
terminate
    | recoveredValue0 |
    recoveredValue0 := [
    components := #().
    stage := 10.
    10
].
    (recoveredValue0) critical.
    ^self
! !

"ASDBase.ic method 0x2032d854; bytecode file offset 0xc2a130"
!EtasComponentLoader methodsFor: 'recovered'!
statusString
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'Pre-load stage '.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := stage.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := ': '.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := loaded.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := ' components loaded, '.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := components.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := ' remaining'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20372288; bytecode file offset 0xc6eb64"
!EtasComponentLoader methodsFor: 'recovered'!
initialize
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            showDebug := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            components := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            stage := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            loaded := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 'EmUser'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := [
    ^self
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) uniqueName.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 'mikepple'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            showDebug := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) searchRootComponents.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203922e8; bytecode file offset 0xc8ebd8"
!EtasComponentLoader methodsFor: 'recovered'!
searchRootComponents
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'SGLibrary'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) queryForClassName: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'all'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) setSearchMode: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) showPerformance: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) library.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) searchDropOlderVersions: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:block280f3a44Arg1 | 
    | block280f3a44Value0 block280f3a44Value1 |
    block280f3a44Value0 := block280f3a44Arg1.
    block280f3a44Value1 := (block280f3a44Value0) getObjectOrUndefined.
    block280f3a44Value1
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := [:block280f3a68Arg1 | 
    | block280f3a68Value0 block280f3a68Value1 block280f3a68Value2 |
    block280f3a68Value0 := block280f3a68Arg1.
    block280f3a68Value1 := (block280f3a68Value0) isNil.
    block280f3a68Value2 := (block280f3a68Value1) not.
    block280f3a68Value2
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            components := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            loaded := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205cad88; bytecode file offset 0xec76f8"
!EtasComponentLoader methodsFor: 'recovered'!
loadComponent
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := analyzeGraph.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock18Value0 |
    recoveredBlock18Value0 := analyzeGraph.
    (recoveredBlock18Value0) build.
    analyzeGraph := nil.
    nil
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := ExAll.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := [:block28118cc0Arg1 | 
    | block28118cc0Value0 block28118cc0Value1 |
    block28118cc0Value0 := block28118cc0Arg1.
    block28118cc0Value1 := (block28118cc0Value0) exitWith: (nil).
    block28118cc0Value1
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock49Stack0 recoveredBlock49Stack1 recoveredBlock49Stack2 recoveredBlock49Stack3 recoveredBlock49Stack4 recoveredBlock49PC recoveredBlock49Step recoveredBlock49Done recoveredBlock49Result |
    recoveredBlock49Stack0 := self.
    recoveredBlock49PC := 56.
    recoveredBlock49Done := false.
    [recoveredBlock49Done not] whileTrue: [
        recoveredBlock49Step := recoveredBlock49PC.
        recoveredBlock49Step = 56 ifTrue: [
            recoveredBlock49Stack1 := components.
            recoveredBlock49PC := 58.
        ].
        recoveredBlock49Step = 58 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) size.
            recoveredBlock49PC := 60.
        ].
        recoveredBlock49Step = 60 ifTrue: [
            recoveredBlock49Stack2 := 0.
            recoveredBlock49PC := 62.
        ].
        recoveredBlock49Step = 62 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) > (recoveredBlock49Stack2).
            recoveredBlock49PC := 63.
        ].
        recoveredBlock49Step = 63 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 66] ifFalse: [recoveredBlock49PC := 274].
        ].
        recoveredBlock49Step = 66 ifTrue: [
            recoveredBlock49Stack1 := OSMemorystatus.
            recoveredBlock49PC := 68.
        ].
        recoveredBlock49Step = 68 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) create.
            recoveredBlock49PC := 70.
        ].
        recoveredBlock49Step = 70 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Stack1.
            recoveredBlock49PC := 71.
        ].
        recoveredBlock49Step = 71 ifTrue: [
            recoveredLocal1 := recoveredBlock49Stack2.
            recoveredBlock49PC := 74.
        ].
        recoveredBlock49Step = 74 ifTrue: [
            (recoveredBlock49Stack1) globalMemoryStatus.
            recoveredBlock49PC := 76.
        ].
        recoveredBlock49Step = 76 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal1.
            recoveredBlock49PC := 79.
        ].
        recoveredBlock49Step = 79 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) getFreeMemory.
            recoveredBlock49PC := 81.
        ].
        recoveredBlock49Step = 81 ifTrue: [
            recoveredBlock49Stack2 := 419430400.
            recoveredBlock49PC := 83.
        ].
        recoveredBlock49Step = 83 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) < (recoveredBlock49Stack2).
            recoveredBlock49PC := 84.
        ].
        recoveredBlock49Step = 84 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 124] ifFalse: [recoveredBlock49PC := 88].
        ].
        recoveredBlock49Step = 88 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal1.
            recoveredBlock49PC := 91.
        ].
        recoveredBlock49Step = 91 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) dwAvailPhys.
            recoveredBlock49PC := 93.
        ].
        recoveredBlock49Step = 93 ifTrue: [
            recoveredBlock49Stack2 := 209715200.
            recoveredBlock49PC := 95.
        ].
        recoveredBlock49Step = 95 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) < (recoveredBlock49Stack2).
            recoveredBlock49PC := 96.
        ].
        recoveredBlock49Step = 96 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 124] ifFalse: [recoveredBlock49PC := 100].
        ].
        recoveredBlock49Step = 100 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal1.
            recoveredBlock49PC := 103.
        ].
        recoveredBlock49Step = 103 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) getFreeMemory.
            recoveredBlock49PC := 105.
        ].
        recoveredBlock49Step = 105 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal1.
            recoveredBlock49PC := 108.
        ].
        recoveredBlock49Step = 108 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) dwTotalPhys.
            recoveredBlock49PC := 110.
        ].
        recoveredBlock49Step = 110 ifTrue: [
            recoveredBlock49Stack3 := recoveredLocal1.
            recoveredBlock49PC := 113.
        ].
        recoveredBlock49Step = 113 ifTrue: [
            recoveredBlock49Stack3 := (recoveredBlock49Stack3) dwTotalPageFile.
            recoveredBlock49PC := 115.
        ].
        recoveredBlock49Step = 115 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) + (recoveredBlock49Stack3).
            recoveredBlock49PC := 116.
        ].
        recoveredBlock49Step = 116 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) / (recoveredBlock49Stack2).
            recoveredBlock49PC := 118.
        ].
        recoveredBlock49Step = 118 ifTrue: [
            recoveredBlock49Stack2 := #[51 51 51 51 51 51 211 63].
            recoveredBlock49PC := 120.
        ].
        recoveredBlock49Step = 120 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) < (recoveredBlock49Stack2).
            recoveredBlock49PC := 121.
        ].
        recoveredBlock49Step = 121 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 124] ifFalse: [recoveredBlock49PC := 126].
        ].
        recoveredBlock49Step = 124 ifTrue: [
            recoveredBlock49Stack1 := false.
            recoveredBlock49PC := 125.
        ].
        recoveredBlock49Step = 125 ifTrue: [
            ^recoveredBlock49Stack1
        ].
        recoveredBlock49Step = 126 ifTrue: [
            recoveredBlock49Stack1 := components.
            recoveredBlock49PC := 128.
        ].
        recoveredBlock49Step = 128 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) first.
            recoveredBlock49PC := 130.
        ].
        recoveredBlock49Step = 130 ifTrue: [
            recoveredLocal2 := recoveredBlock49Stack1.
            recoveredBlock49PC := 133.
        ].
        recoveredBlock49Step = 133 ifTrue: [
            recoveredBlock49Stack1 := components.
            recoveredBlock49PC := 135.
        ].
        recoveredBlock49Step = 135 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal2.
            recoveredBlock49PC := 138.
        ].
        recoveredBlock49Step = 138 ifTrue: [
            (recoveredBlock49Stack1) remove: (recoveredBlock49Stack2).
            recoveredBlock49PC := 140.
        ].
        recoveredBlock49Step = 140 ifTrue: [
            recoveredBlock49Stack1 := loaded.
            recoveredBlock49PC := 142.
        ].
        recoveredBlock49Step = 142 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) + (1).
            recoveredBlock49PC := 143.
        ].
        recoveredBlock49Step = 143 ifTrue: [
            loaded := recoveredBlock49Stack1.
            recoveredBlock49PC := 145.
        ].
        recoveredBlock49Step = 145 ifTrue: [
            recoveredBlock49Stack1 := nil.
            recoveredBlock49PC := 146.
        ].
        recoveredBlock49Step = 146 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal2.
            recoveredBlock49PC := 149.
        ].
        recoveredBlock49Step = 149 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) getObjectOrUndefined.
            recoveredBlock49PC := 151.
        ].
        recoveredBlock49Step = 151 ifTrue: [
            (recoveredBlock49Stack2 == nil) ifTrue: [recoveredBlock49PC := 270] ifFalse: [recoveredBlock49PC := 154].
        ].
        recoveredBlock49Step = 154 ifTrue: [
            recoveredBlock49PC := 155.
        ].
        recoveredBlock49Step = 155 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal2.
            recoveredBlock49PC := 158.
        ].
        recoveredBlock49Step = 158 ifTrue: [
            recoveredBlock49Stack2 := 'children'.
            recoveredBlock49PC := 160.
        ].
        recoveredBlock49Step = 160 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) respondsTo: (recoveredBlock49Stack2).
            recoveredBlock49PC := 162.
        ].
        recoveredBlock49Step = 162 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 166] ifFalse: [recoveredBlock49PC := 175].
        ].
        recoveredBlock49Step = 166 ifTrue: [
            recoveredBlock49Stack1 := components.
            recoveredBlock49PC := 168.
        ].
        recoveredBlock49Step = 168 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal2.
            recoveredBlock49PC := 171.
        ].
        recoveredBlock49Step = 171 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) children.
            recoveredBlock49PC := 173.
        ].
        recoveredBlock49Step = 173 ifTrue: [
            (recoveredBlock49Stack1) addAll: (recoveredBlock49Stack2).
            recoveredBlock49PC := 175.
        ].
        recoveredBlock49Step = 175 ifTrue: [
            recoveredBlock49Stack1 := showDebug.
            recoveredBlock49PC := 177.
        ].
        recoveredBlock49Step = 177 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 180] ifFalse: [recoveredBlock49PC := 207].
        ].
        recoveredBlock49Step = 180 ifTrue: [
            recoveredBlock49Stack1 := CwAppContext.
            recoveredBlock49PC := 182.
        ].
        recoveredBlock49Step = 182 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) default.
            recoveredBlock49PC := 184.
        ].
        recoveredBlock49Step = 184 ifTrue: [
            recoveredBlock49Stack2 := [
    | recoveredBlock49Block184Value0 recoveredBlock49Block184Value1 recoveredBlock49Block184Value2 recoveredBlock49Block184Value3 recoveredBlock49Block184Value4 recoveredBlock49Block184Value5 |
    recoveredBlock49Block184Value0 := Transcript.
    recoveredBlock49Block184Value1 := recoveredBlock49Block184Value0.
    recoveredBlock49Block184Value2 := recoveredLocal2.
    recoveredBlock49Block184Value3 := (recoveredBlock49Block184Value2) dbObject.
    recoveredBlock49Block184Value4 := (recoveredBlock49Block184Value3) name.
    (recoveredBlock49Block184Value1) show: (recoveredBlock49Block184Value4).
    recoveredBlock49Block184Value5 := (recoveredBlock49Block184Value0) cr.
    recoveredBlock49Block184Value5
].
            recoveredBlock49PC := 205.
        ].
        recoveredBlock49Step = 205 ifTrue: [
            (recoveredBlock49Stack1) asyncExecInUI: (recoveredBlock49Stack2).
            recoveredBlock49PC := 207.
        ].
        recoveredBlock49Step = 207 ifTrue: [
            recoveredBlock49Stack1 := stage.
            recoveredBlock49PC := 209.
        ].
        recoveredBlock49Step = 209 ifTrue: [
            recoveredBlock49Stack2 := 1.
            recoveredBlock49PC := 211.
        ].
        recoveredBlock49Step = 211 ifTrue: [
            (recoveredBlock49Stack1 ~~ recoveredBlock49Stack2) ifTrue: [recoveredBlock49PC := 236] ifFalse: [recoveredBlock49PC := 214].
        ].
        recoveredBlock49Step = 214 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal2.
            recoveredBlock49PC := 217.
        ].
        recoveredBlock49Step = 217 ifTrue: [
            recoveredBlock49Stack2 := 'allVariablesDo:'.
            recoveredBlock49PC := 219.
        ].
        recoveredBlock49Step = 219 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) respondsTo: (recoveredBlock49Stack2).
            recoveredBlock49PC := 221.
        ].
        recoveredBlock49Step = 221 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 224] ifFalse: [recoveredBlock49PC := 236].
        ].
        recoveredBlock49Step = 224 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal2.
            recoveredBlock49PC := 227.
        ].
        recoveredBlock49Step = 227 ifTrue: [
            recoveredBlock49Stack2 := [:block28118ce4Arg1 | 
    nil
].
            recoveredBlock49PC := 229.
        ].
        recoveredBlock49Step = 229 ifTrue: [
            recoveredBlock49PC := 234.
        ].
        recoveredBlock49Step = 234 ifTrue: [
            (recoveredBlock49Stack1) allVariablesDo: (recoveredBlock49Stack2).
            recoveredBlock49PC := 236.
        ].
        recoveredBlock49Step = 236 ifTrue: [
            recoveredBlock49Stack1 := nil.
            recoveredBlock49PC := 237.
        ].
        recoveredBlock49Step = 237 ifTrue: [
            recoveredBlock49Stack2 := stage.
            recoveredBlock49PC := 239.
        ].
        recoveredBlock49Step = 239 ifTrue: [
            recoveredBlock49Stack3 := 2.
            recoveredBlock49PC := 241.
        ].
        recoveredBlock49Step = 241 ifTrue: [
            (recoveredBlock49Stack2 ~~ recoveredBlock49Stack3) ifTrue: [recoveredBlock49PC := 270] ifFalse: [recoveredBlock49PC := 244].
        ].
        recoveredBlock49Step = 244 ifTrue: [
            recoveredBlock49PC := 245.
        ].
        recoveredBlock49Step = 245 ifTrue: [
            recoveredBlock49Stack1 := nil.
            recoveredBlock49PC := 246.
        ].
        recoveredBlock49Step = 246 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal2.
            recoveredBlock49PC := 249.
        ].
        recoveredBlock49Step = 249 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) isSGClass.
            recoveredBlock49PC := 251.
        ].
        recoveredBlock49Step = 251 ifTrue: [
            (recoveredBlock49Stack2) ifTrue: [recoveredBlock49PC := 254] ifFalse: [recoveredBlock49PC := 270].
        ].
        recoveredBlock49Step = 254 ifTrue: [
            recoveredBlock49PC := 255.
        ].
        recoveredBlock49Step = 255 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal2.
            recoveredBlock49PC := 258.
        ].
        recoveredBlock49Step = 258 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) methods.
            recoveredBlock49PC := 260.
        ].
        recoveredBlock49Step = 260 ifTrue: [
            recoveredBlock49Stack2 := [:block28118d08Arg1 | 
    nil
].
            recoveredBlock49PC := 262.
        ].
        recoveredBlock49Step = 262 ifTrue: [
            recoveredBlock49PC := 268.
        ].
        recoveredBlock49Step = 268 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) do: (recoveredBlock49Stack2).
            recoveredBlock49PC := 270.
        ].
        recoveredBlock49Step = 270 ifTrue: [
            recoveredBlock49PC := 340.
        ].
        recoveredBlock49Step = 274 ifTrue: [
            recoveredBlock49Stack1 := stage.
            recoveredBlock49PC := 276.
        ].
        recoveredBlock49Step = 276 ifTrue: [
            recoveredBlock49Stack2 := 3.
            recoveredBlock49PC := 278.
        ].
        recoveredBlock49Step = 278 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) < (recoveredBlock49Stack2).
            recoveredBlock49PC := 279.
        ].
        recoveredBlock49Step = 279 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 282] ifFalse: [recoveredBlock49PC := 332].
        ].
        recoveredBlock49Step = 282 ifTrue: [
            recoveredBlock49Stack1 := stage.
            recoveredBlock49PC := 284.
        ].
        recoveredBlock49Step = 284 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) + (1).
            recoveredBlock49PC := 285.
        ].
        recoveredBlock49Step = 285 ifTrue: [
            stage := recoveredBlock49Stack1.
            recoveredBlock49PC := 287.
        ].
        recoveredBlock49Step = 287 ifTrue: [
            recoveredBlock49Stack1 := showDebug.
            recoveredBlock49PC := 289.
        ].
        recoveredBlock49Step = 289 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 292] ifFalse: [recoveredBlock49PC := 326].
        ].
        recoveredBlock49Step = 292 ifTrue: [
            recoveredBlock49Stack1 := CwAppContext.
            recoveredBlock49PC := 294.
        ].
        recoveredBlock49Step = 294 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) default.
            recoveredBlock49PC := 296.
        ].
        recoveredBlock49Step = 296 ifTrue: [
            recoveredBlock49Stack2 := [
    | recoveredBlock49Block296Value0 recoveredBlock49Block296Value1 recoveredBlock49Block296Value2 recoveredBlock49Block296Value3 recoveredBlock49Block296Value4 recoveredBlock49Block296Value5 recoveredBlock49Block296Value6 recoveredBlock49Block296Value7 |
    recoveredBlock49Block296Value0 := Transcript.
    recoveredBlock49Block296Value1 := recoveredBlock49Block296Value0.
    (recoveredBlock49Block296Value1) cr.
    recoveredBlock49Block296Value2 := recoveredBlock49Block296Value0.
    recoveredBlock49Block296Value3 := stage.
    recoveredBlock49Block296Value4 := (recoveredBlock49Block296Value3) asString.
    recoveredBlock49Block296Value5 := ('Stage ') , (recoveredBlock49Block296Value4).
    (recoveredBlock49Block296Value2) show: (recoveredBlock49Block296Value5).
    recoveredBlock49Block296Value6 := recoveredBlock49Block296Value0.
    (recoveredBlock49Block296Value6) cr.
    recoveredBlock49Block296Value7 := (recoveredBlock49Block296Value0) cr.
    recoveredBlock49Block296Value7
].
            recoveredBlock49PC := 324.
        ].
        recoveredBlock49Step = 324 ifTrue: [
            (recoveredBlock49Stack1) asyncExecInUI: (recoveredBlock49Stack2).
            recoveredBlock49PC := 326.
        ].
        recoveredBlock49Step = 326 ifTrue: [
            recoveredBlock49Stack1 := self.
            recoveredBlock49PC := 327.
        ].
        recoveredBlock49Step = 327 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) searchRootComponents.
            recoveredBlock49PC := 329.
        ].
        recoveredBlock49Step = 329 ifTrue: [
            recoveredBlock49PC := 340.
        ].
        recoveredBlock49Step = 332 ifTrue: [
            recoveredBlock49Stack1 := Delay.
            recoveredBlock49PC := 334.
        ].
        recoveredBlock49Step = 334 ifTrue: [
            recoveredBlock49Stack2 := 1.
            recoveredBlock49PC := 336.
        ].
        recoveredBlock49Step = 336 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) forSeconds: (recoveredBlock49Stack2).
            recoveredBlock49PC := 338.
        ].
        recoveredBlock49Step = 338 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) wait.
            recoveredBlock49PC := 340.
        ].
        recoveredBlock49Step = 340 ifTrue: [
            recoveredBlock49Result := recoveredBlock49Stack1.
            recoveredBlock49Done := true.
        ].
    ].
    recoveredBlock49Result
].
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

