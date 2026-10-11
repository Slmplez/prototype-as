"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015bc0; bytecode file offset 0x92209c"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
xmlVarDeclName
    ^'varDecl'
! !

"ASDBase.ic method 0x20015dac; bytecode file offset 0x92209c"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
xmlCalledMethodName
    ^'calledMethod'
! !

"ASDBase.ic method 0x20017738; bytecode file offset 0x92209c"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
xmlElementName
    ^'method'
! !

"ASDBase.ic method 0x20017810; bytecode file offset 0x92209c"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
xmlResourceName
    ^'resource'
! !

"ASDBase.ic method 0x200186bc; bytecode file offset 0x92209c"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
xmlReferenceAnalysisName
    ^'references'
! !

"ASDBase.ic method 0x20019448; bytecode file offset 0x92209c"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
xmlUsedElementsName
    ^'usedElements'
! !

"ASDBase.ic method 0x2001a708; bytecode file offset 0x92209c"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
xmlSideEffectsName
    ^'sideEffects'
! !

"ASDBase.ic method 0x2001ac24; bytecode file offset 0x92209c"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
xmlSourceMapName
    ^'sourceMap'
! !

"ASDBase.ic method 0x2001bde8; bytecode file offset 0x92209c"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
xmlParmDeclName
    ^'parmDecl'
! !

"ASDBase.ic method 0x2001c04c; bytecode file offset 0x92209c"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
xmlVerifyCalls
    ^'verifyCalls'
! !

"ASDBase.ic method 0x2001c394; bytecode file offset 0x92209c"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
xmlBlockDeclName
    ^'blockDecl'
! !

"ASDBase.ic method 0x20021014; bytecode file offset 0x92209c"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
xmlOperationName
    ^'operation'
! !

"ASDBase.ic method 0x20021764; bytecode file offset 0x92209c"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
xmlMessageName
    ^'message'
! !

"ASDBase.ic method 0x20024e84; bytecode file offset 0x92209c"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
xmlRTECallName
    ^'rteCall'
! !

"ASDBase.ic method 0x20073a98; bytecode file offset 0x970b34"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
failedToLoadAnalysisInfo
    ^nil
! !

"ASDBase.ic method 0x200de240; bytecode file offset 0x9dab5c"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
addScope: recoveredArg1 method: recoveredArg2 toElement: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) addScope: (recoveredValue0) method: (recoveredValue1) toElement: (recoveredValue2) prefix: ('scope').
    ^recoveredValue3
! !

"ASDBase.ic method 0x201978b0; bytecode file offset 0xa94174"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
findNames: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) symbols.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) mdlName.
    recoveredBlock8Value2 := (recoveredBlock8Value1) mdlLabel.
    recoveredBlock8Value3 := recoveredArg1.
    recoveredBlock8Value4 := (recoveredBlock8Value2) = (recoveredBlock8Value3).
    recoveredBlock8Value4
].
    recoveredValue3 := (recoveredValue1) select: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201b6728; bytecode file offset 0xab2ff0"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
findSymbols: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) symbols.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) mdlName.
    recoveredBlock8Value2 := (recoveredBlock8Value1) mdlKey.
    recoveredBlock8Value3 := (recoveredBlock8Value2) aliasAsIdString.
    recoveredBlock8Value4 := recoveredArg1.
    recoveredBlock8Value5 := (recoveredBlock8Value3) = (recoveredBlock8Value4).
    recoveredBlock8Value5
].
    recoveredValue3 := (recoveredValue1) select: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2027218c; bytecode file offset 0xb6ea60"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
getMethodDeclFrom: recoveredArg1 context: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) getSymbolsFrom: (recoveredStack1) context: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280e07b4Arg1 | 
    | block280e07b4Value0 block280e07b4Value1 |
    block280e07b4Value0 := block280e07b4Arg1.
    block280e07b4Value1 := (block280e07b4Value0) isMdlExecutableDecl.
    block280e07b4Value1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) failedToLoadAnalysisInfo.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) someElement.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20319014; bytecode file offset 0xc158f0"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
addName: recoveredArg1 scope: recoveredArg2 method: recoveredArg3 toElement: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'name'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlLabel.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) key.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) key.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlKey.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasAsIdString.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 'alias'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) addScope: (recoveredStack1) method: (recoveredStack2) toElement: (recoveredStack3).
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

"ASDBase.ic method 0x20358154; bytecode file offset 0xc54a30"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
getSymbolsFrom: recoveredArg1 context: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) findClass: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'alias'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 'name'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodDecl.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := 'name'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) getAttribute: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) findNames: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) findSymbols: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2037da64; bytecode file offset 0xc7a348"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
addScope: recoveredArg1 method: recoveredArg2 toElement: recoveredArg3 prefix: recoveredArg4
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) scope.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) equalsType: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := 'ClassName'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) className.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := 'ClassId'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) classId.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) implId.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := 'ImplName'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) implName.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := 'ImplId'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) implId.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20454bac; bytecode file offset 0xd51494"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
mdlClass: recoveredArg1 method: recoveredArg2 toElement: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlPrimitiveBaseClassType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'type'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'baseType'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlEnumType.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := 'type'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) addScope: (recoveredStack2) method: (recoveredStack3) toElement: (recoveredStack4) prefix: (recoveredStack5).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'modelType'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) modelTypeClassName.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlBaseClassType.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := 'type'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := 'complexBaseType'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 'modelType'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) modelTypeClassName.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlComplexClassNoEnumType.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 'type'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := 'classType'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack5 := 'type'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) addScope: (recoveredStack2) method: (recoveredStack3) toElement: (recoveredStack4) prefix: (recoveredStack5).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := 'type'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := 'enumType'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack5 := 'type'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) addScope: (recoveredStack2) method: (recoveredStack3) toElement: (recoveredStack4) prefix: (recoveredStack5).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a589c; bytecode file offset 0xda21b8"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
sourceMapFromDOM: recoveredArg1 method: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'prefix'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'postfix'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := [:recoveredBlock55Arg1 | 
    | recoveredBlock55Local1 recoveredBlock55Local2 recoveredBlock55Stack0 recoveredBlock55Stack1 recoveredBlock55Stack2 recoveredBlock55Stack3 recoveredBlock55Stack4 recoveredBlock55Stack5 recoveredBlock55Stack6 recoveredBlock55PC recoveredBlock55Step recoveredBlock55Done recoveredBlock55Result |
    recoveredBlock55Stack0 := self.
    recoveredBlock55PC := 62.
    recoveredBlock55Done := false.
    [recoveredBlock55Done not] whileTrue: [
        recoveredBlock55Step := recoveredBlock55PC.
        recoveredBlock55Step = 62 ifTrue: [
            recoveredBlock55Stack1 := recoveredBlock55Arg1.
            recoveredBlock55PC := 63.
        ].
        recoveredBlock55Step = 63 ifTrue: [
            recoveredBlock55Stack2 := 'sourceId'.
            recoveredBlock55PC := 65.
        ].
        recoveredBlock55Step = 65 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) getAttribute: (recoveredBlock55Stack2).
            recoveredBlock55PC := 66.
        ].
        recoveredBlock55Step = 66 ifTrue: [
            recoveredBlock55Local2 := recoveredBlock55Stack1.
            recoveredBlock55PC := 67.
        ].
        recoveredBlock55Step = 67 ifTrue: [
            recoveredBlock55Stack1 := recoveredBlock55Arg1.
            recoveredBlock55PC := 68.
        ].
        recoveredBlock55Step = 68 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) name.
            recoveredBlock55PC := 70.
        ].
        recoveredBlock55Step = 70 ifTrue: [
            recoveredBlock55Stack2 := SGLmASCETLinkSource.
            recoveredBlock55PC := 72.
        ].
        recoveredBlock55Step = 72 ifTrue: [
            recoveredBlock55Stack2 := (recoveredBlock55Stack2) xmlName.
            recoveredBlock55PC := 74.
        ].
        recoveredBlock55Step = 74 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) = (recoveredBlock55Stack2).
            recoveredBlock55PC := 75.
        ].
        recoveredBlock55Step = 75 ifTrue: [
            (recoveredBlock55Stack1) ifTrue: [recoveredBlock55PC := 78] ifFalse: [recoveredBlock55PC := 112].
        ].
        recoveredBlock55Step = 78 ifTrue: [
            recoveredBlock55Stack1 := SGLmASCETLinkSource.
            recoveredBlock55PC := 80.
        ].
        recoveredBlock55Step = 80 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) create.
            recoveredBlock55PC := 82.
        ].
        recoveredBlock55Step = 82 ifTrue: [
            recoveredBlock55Stack2 := recoveredBlock55Stack1.
            recoveredBlock55PC := 83.
        ].
        recoveredBlock55Step = 83 ifTrue: [
            recoveredBlock55Stack3 := SGCodeManager.
            recoveredBlock55PC := 85.
        ].
        recoveredBlock55Step = 85 ifTrue: [
            recoveredBlock55Stack3 := (recoveredBlock55Stack3) current.
            recoveredBlock55PC := 87.
        ].
        recoveredBlock55Step = 87 ifTrue: [
            recoveredBlock55Stack3 := (recoveredBlock55Stack3) context.
            recoveredBlock55PC := 89.
        ].
        recoveredBlock55Step = 89 ifTrue: [
            (recoveredBlock55Stack2) context: (recoveredBlock55Stack3).
            recoveredBlock55Stack2 := recoveredBlock55Stack1.
            recoveredBlock55PC := 92.
        ].
        recoveredBlock55Step = 92 ifTrue: [
            recoveredBlock55Stack3 := recoveredLocal2.
            recoveredBlock55PC := 95.
        ].
        recoveredBlock55Step = 95 ifTrue: [
            recoveredBlock55Stack4 := recoveredBlock55Arg1.
            recoveredBlock55PC := 96.
        ].
        recoveredBlock55Step = 96 ifTrue: [
            recoveredBlock55Stack5 := 'ascetLink'.
            recoveredBlock55PC := 98.
        ].
        recoveredBlock55Step = 98 ifTrue: [
            recoveredBlock55Stack4 := (recoveredBlock55Stack4) getAttribute: (recoveredBlock55Stack5).
            recoveredBlock55PC := 99.
        ].
        recoveredBlock55Step = 99 ifTrue: [
            recoveredBlock55Stack3 := (recoveredBlock55Stack3) , (recoveredBlock55Stack4).
            recoveredBlock55PC := 101.
        ].
        recoveredBlock55Step = 101 ifTrue: [
            recoveredBlock55Stack4 := recoveredLocal1.
            recoveredBlock55PC := 104.
        ].
        recoveredBlock55Step = 104 ifTrue: [
            recoveredBlock55Stack3 := (recoveredBlock55Stack3) , (recoveredBlock55Stack4).
            recoveredBlock55PC := 106.
        ].
        recoveredBlock55Step = 106 ifTrue: [
            (recoveredBlock55Stack2) ascetLink: (recoveredBlock55Stack3).
            recoveredBlock55PC := 108.
        ].
        recoveredBlock55Step = 108 ifTrue: [
            recoveredBlock55Local1 := recoveredBlock55Stack1.
            recoveredBlock55PC := 109.
        ].
        recoveredBlock55Step = 109 ifTrue: [
            recoveredBlock55PC := 125.
        ].
        recoveredBlock55Step = 112 ifTrue: [
            recoveredBlock55Stack1 := SGLmSource.
            recoveredBlock55PC := 114.
        ].
        recoveredBlock55Step = 114 ifTrue: [
            recoveredBlock55Stack2 := recoveredBlock55Arg1.
            recoveredBlock55PC := 115.
        ].
        recoveredBlock55Step = 115 ifTrue: [
            recoveredBlock55Stack3 := recoveredArg2.
            recoveredBlock55PC := 118.
        ].
        recoveredBlock55Step = 118 ifTrue: [
            recoveredBlock55Stack4 := recoveredLocal3.
            recoveredBlock55PC := 121.
        ].
        recoveredBlock55Step = 121 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) fromDOM: (recoveredBlock55Stack2) method: (recoveredBlock55Stack3) sourceMap: (recoveredBlock55Stack4).
            recoveredBlock55PC := 124.
        ].
        recoveredBlock55Step = 124 ifTrue: [
            recoveredBlock55Local1 := recoveredBlock55Stack1.
            recoveredBlock55PC := 125.
        ].
        recoveredBlock55Step = 125 ifTrue: [
            recoveredBlock55Stack1 := recoveredLocal3.
            recoveredBlock55PC := 128.
        ].
        recoveredBlock55Step = 128 ifTrue: [
            recoveredBlock55Stack2 := recoveredBlock55Local2.
            recoveredBlock55PC := 129.
        ].
        recoveredBlock55Step = 129 ifTrue: [
            recoveredBlock55Stack3 := recoveredBlock55Local1.
            recoveredBlock55PC := 130.
        ].
        recoveredBlock55Step = 130 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) at: (recoveredBlock55Stack2) put: (recoveredBlock55Stack3).
            recoveredBlock55PC := 132.
        ].
        recoveredBlock55Step = 132 ifTrue: [
            recoveredBlock55Result := recoveredBlock55Stack1.
            recoveredBlock55Done := true.
        ].
    ].
    recoveredBlock55Result
].
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204c3628; bytecode file offset 0xdbff84"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
modelTypeMap
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ModelTypeMap.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 10].
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'SGANSICType'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := SGANSICType.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 'SGBoolean'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := SGBoolean.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := 'SGEnumeration'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := SGEnumeration.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := 'ARModeGroup'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := ARModeGroup.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := 'SGResource'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := SGResource.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := 'SGOneDCharTable'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := SGOneDCharTable.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := 'SGOneDGroupCharTable'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := SGOneDGroupCharTable.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := 'SGTwoDCharTable'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := SGTwoDCharTable.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := 'SGTwoDGroupCharTable'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := SGTwoDGroupCharTable.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := 'SGVector'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := SGVector.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := 'SGDistribution'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := SGDistribution.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := 'SGMatrix'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := SGMatrix.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := 'SGMessageType'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := SGMessageType.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := 'SGSignedInteger'.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack4 := SGSignedInteger.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := 'SGUnsignedInteger'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack4 := SGUnsignedInteger.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := 'SGReal'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack4 := SGReal.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := 'SGDeltaT'.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack4 := SGDeltaT.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := 'SGRTEStandardReturnType'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack4 := SGRTEStandardReturnType.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := 'SGVoid'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack4 := SGVoid.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            ModelTypeMap := recoveredStack1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := ModelTypeMap.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2052d850; bytecode file offset 0xe2a168"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
varDeclElement: recoveredArg1 ownerMethod: recoveredArg2 method: recoveredArg3 owner: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlParmDecl.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerDocument.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := SGMdMethodAnalysisInfo.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlParmDeclName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) createElement: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlArgumentUsageOut.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'direction'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := 'OUT'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlArgumentUsageInOut.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 'direction'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := 'INOUT'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := 'direction'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := 'IN'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) mdlClass: (recoveredStack2) method: (recoveredStack3) toElement: (recoveredStack4).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlName.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := (recoveredStack3) scope.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) addName: (recoveredStack2) scope: (recoveredStack3) method: (recoveredStack4) toElement: (recoveredStack5).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlName.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 113] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := 'parm'.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlLabel.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredPC := 199.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlBlockVarDecl.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerDocument.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := SGMdMethodAnalysisInfo.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlBlockDeclName.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) createElement: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlName.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := (recoveredStack3) scope.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) addName: (recoveredStack2) scope: (recoveredStack3) method: (recoveredStack4) toElement: (recoveredStack5).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := 'block'.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlLabel.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack1) mdlClass: (recoveredStack2) method: (recoveredStack3) toElement: (recoveredStack4).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := 'reference'.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := (recoveredStack3) isMdlReference.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredPC := 199.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerDocument.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := SGMdMethodAnalysisInfo.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlVarDeclName.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) createElement: (recoveredStack2).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlName.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := (recoveredStack3) scope.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack1) addName: (recoveredStack2) scope: (recoveredStack3) method: (recoveredStack4) toElement: (recoveredStack5).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205925f0; bytecode file offset 0xe8eef8"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
getMdlClassFrom: recoveredArg1 context: recoveredArg2
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
            recoveredStack2 := 'type'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'baseType'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'modelType'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 'typeClassId'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 'typeImplId'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) findClass: (recoveredStack2) impl: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := SGGeneratorFactory.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodDecl.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) createGlobalAnalysisMethodContext: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) findClass: (recoveredStack2) impl: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) failedToLoadAnalysisInfo.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClassType.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) modelTypeMap.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := 'modelType'.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) getAttribute: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock125Value0 recoveredBlock125Value1 |
    recoveredBlock125Value0 := recoveredArg2.
    recoveredBlock125Value1 := (recoveredBlock125Value0) failedToLoadAnalysisInfo.
    ^recoveredBlock125Value1
].
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := SGCgTypeFactory.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) createType: (recoveredStack2) implementation: (recoveredStack3).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := 'complexBaseType'.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := SGCgTypeFactory.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := (recoveredStack2) modelTypeMap.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack4 := 'modelType'.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := (recoveredStack3) getAttribute: (recoveredStack4).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock183Value0 recoveredBlock183Value1 |
    recoveredBlock183Value0 := recoveredArg2.
    recoveredBlock183Value1 := (recoveredBlock183Value0) failedToLoadAnalysisInfo.
    ^recoveredBlock183Value1
].
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := (recoveredStack2) createDefault.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) createType: (recoveredStack2) implementation: (recoveredStack3).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := 'classType'.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 224] ifFalse: [recoveredPC := 214].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := 'enumType'.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 224] ifFalse: [recoveredPC := 272].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := 'typeClassId'.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := 'typeImplId'.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) findClass: (recoveredStack2) impl: (recoveredStack3).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 266] ifFalse: [recoveredPC := 260].
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := (recoveredStack1) failedToLoadAnalysisInfo.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClassType.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := (recoveredStack1) failedToLoadAnalysisInfo.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205f8958; bytecode file offset 0xef52bc"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
getVarDeclFrom: recoveredArg1 context: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlParmDeclName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'direction'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 131] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) getMdlClassFrom: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := SGMdParmDecl.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack2) mdlClass: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 'parm'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := SGCgName.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) create.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) label: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) mdlName: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := 'IN'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) cgAttrArgumentIn.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 127.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := 'OUT'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) cgAttrArgumentOut.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredPC := 127.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1) cgAttrArgumentInOut.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) getMethodDeclFrom: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) failedToLoadAnalysisInfo.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) parmChildren.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := [:recoveredBlock161Arg1 | 
    | recoveredBlock161Value0 recoveredBlock161Value1 recoveredBlock161Value2 recoveredBlock161Value3 recoveredBlock161Value4 |
    recoveredBlock161Value0 := recoveredBlock161Arg1.
    recoveredBlock161Value1 := (recoveredBlock161Value0) mdlLabel.
    recoveredBlock161Value2 := recoveredArg1.
    recoveredBlock161Value3 := (recoveredBlock161Value2) getAttribute: ('parm').
    recoveredBlock161Value4 := (recoveredBlock161Value1) = (recoveredBlock161Value3).
    recoveredBlock161Value4
].
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock179Value0 recoveredBlock179Value1 |
    recoveredBlock179Value0 := recoveredArg2.
    recoveredBlock179Value1 := (recoveredBlock179Value0) failedToLoadAnalysisInfo.
    recoveredBlock179Value1
].
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlBlockDeclName.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 214] ifFalse: [recoveredPC := 360].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := 'block'.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := (recoveredStack1) getMethodDeclFrom: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 242] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := (recoveredStack1) locals.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := [:recoveredBlock247Arg1 | 
    | recoveredBlock247Value0 recoveredBlock247Value1 recoveredBlock247Value2 recoveredBlock247Value3 |
    recoveredBlock247Value0 := recoveredBlock247Arg1.
    recoveredBlock247Value1 := (recoveredBlock247Value0) mdlLabel.
    recoveredBlock247Value2 := recoveredLocal4.
    recoveredBlock247Value3 := (recoveredBlock247Value1) = (recoveredBlock247Value2).
    recoveredBlock247Value3
].
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock262Local1 recoveredBlock262Local2 recoveredBlock262Stack0 recoveredBlock262Stack1 recoveredBlock262Stack2 recoveredBlock262Stack3 recoveredBlock262Stack4 recoveredBlock262Stack5 recoveredBlock262Stack6 recoveredBlock262PC recoveredBlock262Step recoveredBlock262Done recoveredBlock262Result |
    recoveredBlock262Stack0 := self.
    recoveredBlock262PC := 268.
    recoveredBlock262Done := false.
    [recoveredBlock262Done not] whileTrue: [
        recoveredBlock262Step := recoveredBlock262PC.
        recoveredBlock262Step = 268 ifTrue: [
            recoveredBlock262Stack1 := SGMdBlockVarDecl.
            recoveredBlock262PC := 270.
        ].
        recoveredBlock262Step = 270 ifTrue: [
            recoveredBlock262Stack1 := (recoveredBlock262Stack1) create.
            recoveredBlock262PC := 272.
        ].
        recoveredBlock262Step = 272 ifTrue: [
            recoveredBlock262Stack2 := recoveredBlock262Stack1.
            recoveredBlock262PC := 273.
        ].
        recoveredBlock262Step = 273 ifTrue: [
            recoveredBlock262Stack3 := self.
            recoveredBlock262PC := 274.
        ].
        recoveredBlock262Step = 274 ifTrue: [
            recoveredBlock262Stack4 := recoveredArg1.
            recoveredBlock262PC := 277.
        ].
        recoveredBlock262Step = 277 ifTrue: [
            recoveredBlock262Stack5 := recoveredArg2.
            recoveredBlock262PC := 280.
        ].
        recoveredBlock262Step = 280 ifTrue: [
            recoveredBlock262Stack3 := (recoveredBlock262Stack3) getMdlClassFrom: (recoveredBlock262Stack4) context: (recoveredBlock262Stack5).
            recoveredBlock262PC := 282.
        ].
        recoveredBlock262Step = 282 ifTrue: [
            (recoveredBlock262Stack2) mdlClass: (recoveredBlock262Stack3).
            recoveredBlock262Stack2 := recoveredBlock262Stack1.
            recoveredBlock262PC := 285.
        ].
        recoveredBlock262Step = 285 ifTrue: [
            recoveredBlock262Stack3 := SGCgName.
            recoveredBlock262PC := 287.
        ].
        recoveredBlock262Step = 287 ifTrue: [
            recoveredBlock262Stack3 := (recoveredBlock262Stack3) create.
            recoveredBlock262PC := 289.
        ].
        recoveredBlock262Step = 289 ifTrue: [
            recoveredBlock262Stack4 := recoveredLocal4.
            recoveredBlock262PC := 292.
        ].
        recoveredBlock262Step = 292 ifTrue: [
            recoveredBlock262Stack3 := (recoveredBlock262Stack3) label: (recoveredBlock262Stack4).
            recoveredBlock262PC := 294.
        ].
        recoveredBlock262Step = 294 ifTrue: [
            (recoveredBlock262Stack2) mdlName: (recoveredBlock262Stack3).
            recoveredBlock262PC := 296.
        ].
        recoveredBlock262Step = 296 ifTrue: [
            recoveredBlock262Local2 := recoveredBlock262Stack1.
            recoveredBlock262PC := 297.
        ].
        recoveredBlock262Step = 297 ifTrue: [
            recoveredBlock262Stack1 := recoveredArg1.
            recoveredBlock262PC := 300.
        ].
        recoveredBlock262Step = 300 ifTrue: [
            recoveredBlock262Stack2 := 'reference'.
            recoveredBlock262PC := 302.
        ].
        recoveredBlock262Step = 302 ifTrue: [
            recoveredBlock262Stack1 := (recoveredBlock262Stack1) getAttribute: (recoveredBlock262Stack2).
            recoveredBlock262PC := 303.
        ].
        recoveredBlock262Step = 303 ifTrue: [
            recoveredBlock262Stack2 := recoveredBlock262Stack1.
            recoveredBlock262PC := 304.
        ].
        recoveredBlock262Step = 304 ifTrue: [
            recoveredBlock262Local1 := recoveredBlock262Stack2.
            recoveredBlock262PC := 305.
        ].
        recoveredBlock262Step = 305 ifTrue: [
            (recoveredBlock262Stack1 == nil) ifTrue: [recoveredBlock262PC := 319] ifFalse: [recoveredBlock262PC := 308].
        ].
        recoveredBlock262Step = 308 ifTrue: [
            recoveredBlock262Stack1 := recoveredBlock262Local1.
            recoveredBlock262PC := 309.
        ].
        recoveredBlock262Step = 309 ifTrue: [
            recoveredBlock262Stack1 := (recoveredBlock262Stack1) asBoolean.
            recoveredBlock262PC := 311.
        ].
        recoveredBlock262Step = 311 ifTrue: [
            (recoveredBlock262Stack1) ifTrue: [recoveredBlock262PC := 314] ifFalse: [recoveredBlock262PC := 319].
        ].
        recoveredBlock262Step = 314 ifTrue: [
            recoveredBlock262Stack1 := recoveredBlock262Local2.
            recoveredBlock262PC := 315.
        ].
        recoveredBlock262Step = 315 ifTrue: [
            recoveredBlock262Stack1 := (recoveredBlock262Stack1) attributes.
            recoveredBlock262PC := 317.
        ].
        recoveredBlock262Step = 317 ifTrue: [
            (recoveredBlock262Stack1) cgAttrReference.
            recoveredBlock262PC := 319.
        ].
        recoveredBlock262Step = 319 ifTrue: [
            recoveredBlock262Stack1 := recoveredBlock262Local2.
            recoveredBlock262PC := 320.
        ].
        recoveredBlock262Step = 320 ifTrue: [
            recoveredBlock262Stack1 := (recoveredBlock262Stack1) mdlClass.
            recoveredBlock262PC := 322.
        ].
        recoveredBlock262Step = 322 ifTrue: [
            (recoveredBlock262Stack1 ~~ nil) ifTrue: [recoveredBlock262PC := 334] ifFalse: [recoveredBlock262PC := 326].
        ].
        recoveredBlock262Step = 326 ifTrue: [
            recoveredBlock262Stack1 := recoveredArg2.
            recoveredBlock262PC := 329.
        ].
        recoveredBlock262Step = 329 ifTrue: [
            recoveredBlock262Stack1 := (recoveredBlock262Stack1) failedToLoadAnalysisInfo.
            recoveredBlock262PC := 331.
        ].
        recoveredBlock262Step = 331 ifTrue: [
            recoveredBlock262PC := 356.
        ].
        recoveredBlock262Step = 334 ifTrue: [
            recoveredBlock262Stack1 := recoveredLocal3.
            recoveredBlock262PC := 337.
        ].
        recoveredBlock262Step = 337 ifTrue: [
            recoveredBlock262Stack2 := OrderedCollection.
            recoveredBlock262PC := 339.
        ].
        recoveredBlock262Step = 339 ifTrue: [
            recoveredBlock262Stack2 := (recoveredBlock262Stack2) new.
            recoveredBlock262PC := 341.
        ].
        recoveredBlock262Step = 341 ifTrue: [
            recoveredBlock262Stack3 := recoveredBlock262Stack2.
            recoveredBlock262PC := 342.
        ].
        recoveredBlock262Step = 342 ifTrue: [
            recoveredBlock262Stack4 := recoveredLocal3.
            recoveredBlock262PC := 345.
        ].
        recoveredBlock262Step = 345 ifTrue: [
            recoveredBlock262Stack4 := (recoveredBlock262Stack4) locals.
            recoveredBlock262PC := 347.
        ].
        recoveredBlock262Step = 347 ifTrue: [
            (recoveredBlock262Stack3) addAll: (recoveredBlock262Stack4).
            recoveredBlock262Stack3 := recoveredBlock262Stack2.
            recoveredBlock262PC := 350.
        ].
        recoveredBlock262Step = 350 ifTrue: [
            recoveredBlock262Stack4 := recoveredBlock262Local2.
            recoveredBlock262PC := 351.
        ].
        recoveredBlock262Step = 351 ifTrue: [
            (recoveredBlock262Stack3) add: (recoveredBlock262Stack4).
            recoveredBlock262PC := 353.
        ].
        recoveredBlock262Step = 353 ifTrue: [
            (recoveredBlock262Stack1) locals: (recoveredBlock262Stack2).
            recoveredBlock262PC := 355.
        ].
        recoveredBlock262Step = 355 ifTrue: [
            recoveredBlock262Stack1 := recoveredBlock262Local2.
            recoveredBlock262PC := 356.
        ].
        recoveredBlock262Step = 356 ifTrue: [
            recoveredBlock262Result := recoveredBlock262Stack1.
            recoveredBlock262Done := true.
        ].
    ].
    recoveredBlock262Result
].
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSymbolsFrom: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack2 := [:block2811be1cArg1 | 
    | block2811be1cStack0 block2811be1cStack1 block2811be1cStack2 block2811be1cStack3 block2811be1cPC block2811be1cStep block2811be1cDone block2811be1cResult |
    block2811be1cStack0 := self.
    block2811be1cPC := 4.
    block2811be1cDone := false.
    [block2811be1cDone not] whileTrue: [
        block2811be1cStep := block2811be1cPC.
        block2811be1cStep = 4 ifTrue: [
            block2811be1cStack1 := true.
            block2811be1cPC := 5.
        ].
        block2811be1cStep = 5 ifTrue: [
            block2811be1cStack2 := block2811be1cArg1.
            block2811be1cPC := 6.
        ].
        block2811be1cStep = 6 ifTrue: [
            block2811be1cStack2 := (block2811be1cStack2) isMdlVarDeclWithInit.
            block2811be1cPC := 8.
        ].
        block2811be1cStep = 8 ifTrue: [
            (block2811be1cStack2) ifTrue: [block2811be1cPC := 16] ifFalse: [block2811be1cPC := 12].
        ].
        block2811be1cStep = 12 ifTrue: [
            block2811be1cPC := 13.
        ].
        block2811be1cStep = 13 ifTrue: [
            block2811be1cStack1 := block2811be1cArg1.
            block2811be1cPC := 14.
        ].
        block2811be1cStep = 14 ifTrue: [
            block2811be1cStack1 := (block2811be1cStack1) isMdlSelfDecl.
            block2811be1cPC := 16.
        ].
        block2811be1cStep = 16 ifTrue: [
            block2811be1cResult := block2811be1cStack1.
            block2811be1cDone := true.
        ].
    ].
    block2811be1cResult
].
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 412] ifFalse: [recoveredPC := 418].
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack1 := (recoveredStack1) failedToLoadAnalysisInfo.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20645178; bytecode file offset 0xf41b0c"
!SGMdMethodAnalysisInfo class methodsFor: 'recovered'!
fromDOM: recoveredArg1 in: recoveredArg2 context: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) contents.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Local1 recoveredBlock12Local2 recoveredBlock12Local3 recoveredBlock12Local4 recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12Stack5 recoveredBlock12Stack6 recoveredBlock12Stack7 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) name.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack2 := self.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) xmlCalledMethodName.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) = (recoveredBlock12Stack2).
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 28] ifFalse: [recoveredBlock12PC := 64].
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12Stack1 := self.
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Stack3 := recoveredArg3.
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) getMethodDeclFrom: (recoveredBlock12Stack2) context: (recoveredBlock12Stack3).
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Stack1.
            recoveredBlock12PC := 38.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12Local4 := recoveredBlock12Stack2.
            recoveredBlock12PC := 41.
        ].
        recoveredBlock12Step = 41 ifTrue: [
            (recoveredBlock12Stack1 ~~ nil) ifTrue: [recoveredBlock12PC := 46] ifFalse: [recoveredBlock12PC := 44].
        ].
        recoveredBlock12Step = 44 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 45.
        ].
        recoveredBlock12Step = 45 ifTrue: [
            ^recoveredBlock12Stack1
        ].
        recoveredBlock12Step = 46 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 49.
        ].
        recoveredBlock12Step = 49 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) calledMethods.
            recoveredBlock12PC := 51.
        ].
        recoveredBlock12Step = 51 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Local4.
            recoveredBlock12PC := 54.
        ].
        recoveredBlock12Step = 54 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) add: (recoveredBlock12Stack2).
            recoveredBlock12PC := 56.
        ].
        recoveredBlock12Step = 56 ifTrue: [
            recoveredBlock12Stack2 := nil.
            recoveredBlock12PC := 57.
        ].
        recoveredBlock12Step = 57 ifTrue: [
            recoveredBlock12Local4 := recoveredBlock12Stack2.
            recoveredBlock12PC := 60.
        ].
        recoveredBlock12Step = 60 ifTrue: [
            recoveredBlock12PC := 721.
        ].
        recoveredBlock12Step = 64 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 67.
        ].
        recoveredBlock12Step = 67 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) name.
            recoveredBlock12PC := 68.
        ].
        recoveredBlock12Step = 68 ifTrue: [
            recoveredBlock12Stack2 := self.
            recoveredBlock12PC := 69.
        ].
        recoveredBlock12Step = 69 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) xmlResourceName.
            recoveredBlock12PC := 71.
        ].
        recoveredBlock12Step = 71 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) = (recoveredBlock12Stack2).
            recoveredBlock12PC := 72.
        ].
        recoveredBlock12Step = 72 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 76] ifFalse: [recoveredBlock12PC := 118].
        ].
        recoveredBlock12Step = 76 ifTrue: [
            recoveredBlock12Stack1 := self.
            recoveredBlock12PC := 77.
        ].
        recoveredBlock12Step = 77 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 80.
        ].
        recoveredBlock12Step = 80 ifTrue: [
            recoveredBlock12Stack3 := recoveredArg3.
            recoveredBlock12PC := 83.
        ].
        recoveredBlock12Step = 83 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) getVarDeclFrom: (recoveredBlock12Stack2) context: (recoveredBlock12Stack3).
            recoveredBlock12PC := 85.
        ].
        recoveredBlock12Step = 85 ifTrue: [
            recoveredBlock12Local3 := recoveredBlock12Stack1.
            recoveredBlock12PC := 88.
        ].
        recoveredBlock12Step = 88 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Local3.
            recoveredBlock12PC := 91.
        ].
        recoveredBlock12Step = 91 ifTrue: [
            (recoveredBlock12Stack1 ~~ nil) ifTrue: [recoveredBlock12PC := 96] ifFalse: [recoveredBlock12PC := 94].
        ].
        recoveredBlock12Step = 94 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 95.
        ].
        recoveredBlock12Step = 95 ifTrue: [
            ^recoveredBlock12Stack1
        ].
        recoveredBlock12Step = 96 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 99.
        ].
        recoveredBlock12Step = 99 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) usedResources.
            recoveredBlock12PC := 101.
        ].
        recoveredBlock12Step = 101 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Local3.
            recoveredBlock12PC := 104.
        ].
        recoveredBlock12Step = 104 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) add: (recoveredBlock12Stack2).
            recoveredBlock12PC := 106.
        ].
        recoveredBlock12Step = 106 ifTrue: [
            recoveredBlock12Stack2 := nil.
            recoveredBlock12PC := 107.
        ].
        recoveredBlock12Step = 107 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Stack2.
            recoveredBlock12PC := 108.
        ].
        recoveredBlock12Step = 108 ifTrue: [
            recoveredBlock12Local4 := recoveredBlock12Stack3.
            recoveredBlock12PC := 111.
        ].
        recoveredBlock12Step = 111 ifTrue: [
            recoveredBlock12Local3 := recoveredBlock12Stack2.
            recoveredBlock12PC := 114.
        ].
        recoveredBlock12Step = 114 ifTrue: [
            recoveredBlock12PC := 721.
        ].
        recoveredBlock12Step = 118 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 121.
        ].
        recoveredBlock12Step = 121 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) name.
            recoveredBlock12PC := 122.
        ].
        recoveredBlock12Step = 122 ifTrue: [
            recoveredBlock12Stack2 := self.
            recoveredBlock12PC := 123.
        ].
        recoveredBlock12Step = 123 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) xmlMessageName.
            recoveredBlock12PC := 125.
        ].
        recoveredBlock12Step = 125 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) = (recoveredBlock12Stack2).
            recoveredBlock12PC := 126.
        ].
        recoveredBlock12Step = 126 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 130] ifFalse: [recoveredBlock12PC := 214].
        ].
        recoveredBlock12Step = 130 ifTrue: [
            recoveredBlock12Stack1 := self.
            recoveredBlock12PC := 131.
        ].
        recoveredBlock12Step = 131 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 134.
        ].
        recoveredBlock12Step = 134 ifTrue: [
            recoveredBlock12Stack3 := recoveredArg3.
            recoveredBlock12PC := 137.
        ].
        recoveredBlock12Step = 137 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) getVarDeclFrom: (recoveredBlock12Stack2) context: (recoveredBlock12Stack3).
            recoveredBlock12PC := 139.
        ].
        recoveredBlock12Step = 139 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Stack1.
            recoveredBlock12PC := 140.
        ].
        recoveredBlock12Step = 140 ifTrue: [
            recoveredBlock12Local3 := recoveredBlock12Stack2.
            recoveredBlock12PC := 143.
        ].
        recoveredBlock12Step = 143 ifTrue: [
            (recoveredBlock12Stack1 ~~ nil) ifTrue: [recoveredBlock12PC := 148] ifFalse: [recoveredBlock12PC := 146].
        ].
        recoveredBlock12Step = 146 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 147.
        ].
        recoveredBlock12Step = 147 ifTrue: [
            ^recoveredBlock12Stack1
        ].
        recoveredBlock12Step = 148 ifTrue: [
            recoveredBlock12Stack1 := SGMdMsgUsage.
            recoveredBlock12PC := 150.
        ].
        recoveredBlock12Step = 150 ifTrue: [
            recoveredBlock12Stack2 := SGMdIdentifier.
            recoveredBlock12PC := 152.
        ].
        recoveredBlock12Step = 152 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) create.
            recoveredBlock12PC := 153.
        ].
        recoveredBlock12Step = 153 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Stack2.
            recoveredBlock12PC := 154.
        ].
        recoveredBlock12Step = 154 ifTrue: [
            recoveredBlock12Stack4 := OrderedCollection.
            recoveredBlock12PC := 156.
        ].
        recoveredBlock12Step = 156 ifTrue: [
            recoveredBlock12Stack5 := recoveredBlock12Local3.
            recoveredBlock12PC := 159.
        ].
        recoveredBlock12Step = 159 ifTrue: [
            recoveredBlock12Stack4 := (recoveredBlock12Stack4) with: (recoveredBlock12Stack5).
            recoveredBlock12PC := 161.
        ].
        recoveredBlock12Step = 161 ifTrue: [
            (recoveredBlock12Stack3) accessChain: (recoveredBlock12Stack4).
            recoveredBlock12PC := 163.
        ].
        recoveredBlock12Step = 163 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) create: (recoveredBlock12Stack2).
            recoveredBlock12PC := 165.
        ].
        recoveredBlock12Step = 165 ifTrue: [
            recoveredBlock12Local4 := recoveredBlock12Stack1.
            recoveredBlock12PC := 168.
        ].
        recoveredBlock12Step = 168 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Local4.
            recoveredBlock12PC := 171.
        ].
        recoveredBlock12Step = 171 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 174.
        ].
        recoveredBlock12Step = 174 ifTrue: [
            recoveredBlock12Stack3 := 'usage'.
            recoveredBlock12PC := 176.
        ].
        recoveredBlock12Step = 176 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) getAttribute: (recoveredBlock12Stack3).
            recoveredBlock12PC := 178.
        ].
        recoveredBlock12Step = 178 ifTrue: [
            (recoveredBlock12Stack1) msgUsage: (recoveredBlock12Stack2).
            recoveredBlock12PC := 180.
        ].
        recoveredBlock12Step = 180 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Local4.
            recoveredBlock12PC := 183.
        ].
        recoveredBlock12Step = 183 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 186.
        ].
        recoveredBlock12Step = 186 ifTrue: [
            recoveredBlock12Stack3 := 'access'.
            recoveredBlock12PC := 188.
        ].
        recoveredBlock12Step = 188 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) getAttribute: (recoveredBlock12Stack3).
            recoveredBlock12PC := 190.
        ].
        recoveredBlock12Step = 190 ifTrue: [
            (recoveredBlock12Stack1) msgAccess: (recoveredBlock12Stack2).
            recoveredBlock12PC := 192.
        ].
        recoveredBlock12Step = 192 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 195.
        ].
        recoveredBlock12Step = 195 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) usedMessages.
            recoveredBlock12PC := 197.
        ].
        recoveredBlock12Step = 197 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Local4.
            recoveredBlock12PC := 200.
        ].
        recoveredBlock12Step = 200 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) add: (recoveredBlock12Stack2).
            recoveredBlock12PC := 202.
        ].
        recoveredBlock12Step = 202 ifTrue: [
            recoveredBlock12Stack2 := nil.
            recoveredBlock12PC := 203.
        ].
        recoveredBlock12Step = 203 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Stack2.
            recoveredBlock12PC := 204.
        ].
        recoveredBlock12Step = 204 ifTrue: [
            recoveredBlock12Local4 := recoveredBlock12Stack3.
            recoveredBlock12PC := 207.
        ].
        recoveredBlock12Step = 207 ifTrue: [
            recoveredBlock12Local3 := recoveredBlock12Stack2.
            recoveredBlock12PC := 210.
        ].
        recoveredBlock12Step = 210 ifTrue: [
            recoveredBlock12PC := 721.
        ].
        recoveredBlock12Step = 214 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 217.
        ].
        recoveredBlock12Step = 217 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) name.
            recoveredBlock12PC := 218.
        ].
        recoveredBlock12Step = 218 ifTrue: [
            recoveredBlock12Stack2 := self.
            recoveredBlock12PC := 219.
        ].
        recoveredBlock12Step = 219 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) xmlRTECallName.
            recoveredBlock12PC := 221.
        ].
        recoveredBlock12Step = 221 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) = (recoveredBlock12Stack2).
            recoveredBlock12PC := 222.
        ].
        recoveredBlock12Step = 222 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 226] ifFalse: [recoveredBlock12PC := 376].
        ].
        recoveredBlock12Step = 226 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 229.
        ].
        recoveredBlock12Step = 229 ifTrue: [
            recoveredBlock12Stack2 := 'name'.
            recoveredBlock12PC := 231.
        ].
        recoveredBlock12Step = 231 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) getAttribute: (recoveredBlock12Stack2).
            recoveredBlock12PC := 233.
        ].
        recoveredBlock12Step = 233 ifTrue: [
            recoveredBlock12Local4 := recoveredBlock12Stack1.
            recoveredBlock12PC := 236.
        ].
        recoveredBlock12Step = 236 ifTrue: [
            recoveredBlock12Stack1 := OrderedCollection.
            recoveredBlock12PC := 238.
        ].
        recoveredBlock12Step = 238 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) new.
            recoveredBlock12PC := 240.
        ].
        recoveredBlock12Step = 240 ifTrue: [
            recoveredBlock12Local3 := recoveredBlock12Stack1.
            recoveredBlock12PC := 243.
        ].
        recoveredBlock12Step = 243 ifTrue: [
            recoveredBlock12Stack1 := true.
            recoveredBlock12PC := 244.
        ].
        recoveredBlock12Step = 244 ifTrue: [
            recoveredBlock12Local1 := recoveredBlock12Stack1.
            recoveredBlock12PC := 247.
        ].
        recoveredBlock12Step = 247 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 250.
        ].
        recoveredBlock12Step = 250 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) contents.
            recoveredBlock12PC := 251.
        ].
        recoveredBlock12Step = 251 ifTrue: [
            recoveredBlock12Stack2 := [:recoveredBlock12Block251Arg1 | 
    | recoveredBlock12Block251Local1 recoveredBlock12Block251Stack0 recoveredBlock12Block251Stack1 recoveredBlock12Block251Stack2 recoveredBlock12Block251Stack3 recoveredBlock12Block251Stack4 recoveredBlock12Block251PC recoveredBlock12Block251Step recoveredBlock12Block251Done recoveredBlock12Block251Result |
    recoveredBlock12Block251Stack0 := self.
    recoveredBlock12Block251PC := 258.
    recoveredBlock12Block251Done := false.
    [recoveredBlock12Block251Done not] whileTrue: [
        recoveredBlock12Block251Step := recoveredBlock12Block251PC.
        recoveredBlock12Block251Step = 258 ifTrue: [
            recoveredBlock12Block251Stack1 := recoveredBlock12Local1.
            recoveredBlock12Block251PC := 261.
        ].
        recoveredBlock12Block251Step = 261 ifTrue: [
            (recoveredBlock12Block251Stack1) ifTrue: [recoveredBlock12Block251PC := 264] ifFalse: [recoveredBlock12Block251PC := 294].
        ].
        recoveredBlock12Block251Step = 264 ifTrue: [
            recoveredBlock12Block251Stack1 := recoveredBlock12Block251Arg1.
            recoveredBlock12Block251PC := 265.
        ].
        recoveredBlock12Block251Step = 265 ifTrue: [
            recoveredBlock12Block251Stack1 := (recoveredBlock12Block251Stack1) name.
            recoveredBlock12Block251PC := 266.
        ].
        recoveredBlock12Block251Step = 266 ifTrue: [
            recoveredBlock12Block251Stack2 := self.
            recoveredBlock12Block251PC := 267.
        ].
        recoveredBlock12Block251Step = 267 ifTrue: [
            recoveredBlock12Block251Stack2 := (recoveredBlock12Block251Stack2) xmlOperationName.
            recoveredBlock12Block251PC := 269.
        ].
        recoveredBlock12Block251Step = 269 ifTrue: [
            recoveredBlock12Block251Stack1 := (recoveredBlock12Block251Stack1) = (recoveredBlock12Block251Stack2).
            recoveredBlock12Block251PC := 270.
        ].
        recoveredBlock12Block251Step = 270 ifTrue: [
            (recoveredBlock12Block251Stack1) ifTrue: [recoveredBlock12Block251PC := 274] ifFalse: [recoveredBlock12Block251PC := 294].
        ].
        recoveredBlock12Block251Step = 274 ifTrue: [
            recoveredBlock12Block251Stack1 := self.
            recoveredBlock12Block251PC := 275.
        ].
        recoveredBlock12Block251Step = 275 ifTrue: [
            recoveredBlock12Block251Stack2 := recoveredBlock12Block251Arg1.
            recoveredBlock12Block251PC := 276.
        ].
        recoveredBlock12Block251Step = 276 ifTrue: [
            recoveredBlock12Block251Stack3 := recoveredArg3.
            recoveredBlock12Block251PC := 279.
        ].
        recoveredBlock12Block251Step = 279 ifTrue: [
            recoveredBlock12Block251Stack1 := (recoveredBlock12Block251Stack1) getMethodDeclFrom: (recoveredBlock12Block251Stack2) context: (recoveredBlock12Block251Stack3).
            recoveredBlock12Block251PC := 281.
        ].
        recoveredBlock12Block251Step = 281 ifTrue: [
            recoveredBlock12Block251Stack2 := recoveredBlock12Block251Stack1.
            recoveredBlock12Block251PC := 282.
        ].
        recoveredBlock12Block251Step = 282 ifTrue: [
            recoveredBlock12Local2 := recoveredBlock12Block251Stack2.
            recoveredBlock12Block251PC := 285.
        ].
        recoveredBlock12Block251Step = 285 ifTrue: [
            (recoveredBlock12Block251Stack1 ~~ nil) ifTrue: [recoveredBlock12Block251PC := 290] ifFalse: [recoveredBlock12Block251PC := 288].
        ].
        recoveredBlock12Block251Step = 288 ifTrue: [
            recoveredBlock12Block251Stack1 := nil.
            recoveredBlock12Block251PC := 289.
        ].
        recoveredBlock12Block251Step = 289 ifTrue: [
            ^recoveredBlock12Block251Stack1
        ].
        recoveredBlock12Block251Step = 290 ifTrue: [
            recoveredBlock12Block251PC := 314.
        ].
        recoveredBlock12Block251Step = 294 ifTrue: [
            recoveredBlock12Block251Stack1 := self.
            recoveredBlock12Block251PC := 295.
        ].
        recoveredBlock12Block251Step = 295 ifTrue: [
            recoveredBlock12Block251Stack2 := recoveredBlock12Block251Arg1.
            recoveredBlock12Block251PC := 296.
        ].
        recoveredBlock12Block251Step = 296 ifTrue: [
            recoveredBlock12Block251Stack3 := recoveredArg3.
            recoveredBlock12Block251PC := 299.
        ].
        recoveredBlock12Block251Step = 299 ifTrue: [
            recoveredBlock12Block251Stack1 := (recoveredBlock12Block251Stack1) getVarDeclFrom: (recoveredBlock12Block251Stack2) context: (recoveredBlock12Block251Stack3).
            recoveredBlock12Block251PC := 301.
        ].
        recoveredBlock12Block251Step = 301 ifTrue: [
            recoveredBlock12Block251Stack2 := recoveredBlock12Block251Stack1.
            recoveredBlock12Block251PC := 302.
        ].
        recoveredBlock12Block251Step = 302 ifTrue: [
            recoveredBlock12Block251Local1 := recoveredBlock12Block251Stack2.
            recoveredBlock12Block251PC := 303.
        ].
        recoveredBlock12Block251Step = 303 ifTrue: [
            (recoveredBlock12Block251Stack1 ~~ nil) ifTrue: [recoveredBlock12Block251PC := 308] ifFalse: [recoveredBlock12Block251PC := 306].
        ].
        recoveredBlock12Block251Step = 306 ifTrue: [
            recoveredBlock12Block251Stack1 := nil.
            recoveredBlock12Block251PC := 307.
        ].
        recoveredBlock12Block251Step = 307 ifTrue: [
            ^recoveredBlock12Block251Stack1
        ].
        recoveredBlock12Block251Step = 308 ifTrue: [
            recoveredBlock12Block251Stack1 := recoveredBlock12Local3.
            recoveredBlock12Block251PC := 311.
        ].
        recoveredBlock12Block251Step = 311 ifTrue: [
            recoveredBlock12Block251Stack2 := recoveredBlock12Block251Local1.
            recoveredBlock12Block251PC := 312.
        ].
        recoveredBlock12Block251Step = 312 ifTrue: [
            (recoveredBlock12Block251Stack1) add: (recoveredBlock12Block251Stack2).
            recoveredBlock12Block251PC := 314.
        ].
        recoveredBlock12Block251Step = 314 ifTrue: [
            recoveredBlock12Block251Stack1 := false.
            recoveredBlock12Block251PC := 315.
        ].
        recoveredBlock12Block251Step = 315 ifTrue: [
            recoveredBlock12Block251Stack2 := recoveredBlock12Block251Stack1.
            recoveredBlock12Block251PC := 316.
        ].
        recoveredBlock12Block251Step = 316 ifTrue: [
            recoveredBlock12Local1 := recoveredBlock12Block251Stack2.
            recoveredBlock12Block251PC := 319.
        ].
        recoveredBlock12Block251Step = 319 ifTrue: [
            recoveredBlock12Block251Result := recoveredBlock12Block251Stack1.
            recoveredBlock12Block251Done := true.
        ].
    ].
    recoveredBlock12Block251Result
].
            recoveredBlock12PC := 320.
        ].
        recoveredBlock12Step = 320 ifTrue: [
            (recoveredBlock12Stack1) do: (recoveredBlock12Stack2).
            recoveredBlock12PC := 322.
        ].
        recoveredBlock12Step = 322 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 325.
        ].
        recoveredBlock12Step = 325 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) issuedRTECalls.
            recoveredBlock12PC := 327.
        ].
        recoveredBlock12Step = 327 ifTrue: [
            recoveredBlock12Stack2 := SGMdARRTECall.
            recoveredBlock12PC := 329.
        ].
        recoveredBlock12Step = 329 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) create.
            recoveredBlock12PC := 330.
        ].
        recoveredBlock12Step = 330 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Stack2.
            recoveredBlock12PC := 331.
        ].
        recoveredBlock12Step = 331 ifTrue: [
            recoveredBlock12Stack4 := recoveredBlock12Local4.
            recoveredBlock12PC := 334.
        ].
        recoveredBlock12Step = 334 ifTrue: [
            (recoveredBlock12Stack3) name: (recoveredBlock12Stack4).
            recoveredBlock12Stack3 := recoveredBlock12Stack2.
            recoveredBlock12PC := 337.
        ].
        recoveredBlock12Step = 337 ifTrue: [
            recoveredBlock12Stack4 := recoveredBlock12Local2.
            recoveredBlock12PC := 340.
        ].
        recoveredBlock12Step = 340 ifTrue: [
            (recoveredBlock12Stack3) operation: (recoveredBlock12Stack4).
            recoveredBlock12Stack3 := recoveredBlock12Stack2.
            recoveredBlock12PC := 343.
        ].
        recoveredBlock12Step = 343 ifTrue: [
            recoveredBlock12Stack4 := SGMdIdentifier.
            recoveredBlock12PC := 345.
        ].
        recoveredBlock12Step = 345 ifTrue: [
            recoveredBlock12Stack4 := (recoveredBlock12Stack4) create.
            recoveredBlock12PC := 346.
        ].
        recoveredBlock12Step = 346 ifTrue: [
            recoveredBlock12Stack5 := recoveredBlock12Stack4.
            recoveredBlock12PC := 347.
        ].
        recoveredBlock12Step = 347 ifTrue: [
            recoveredBlock12Stack6 := recoveredBlock12Local3.
            recoveredBlock12PC := 350.
        ].
        recoveredBlock12Step = 350 ifTrue: [
            (recoveredBlock12Stack5) accessChain: (recoveredBlock12Stack6).
            recoveredBlock12PC := 352.
        ].
        recoveredBlock12Step = 352 ifTrue: [
            (recoveredBlock12Stack3) argReceiver: (recoveredBlock12Stack4).
            recoveredBlock12PC := 354.
        ].
        recoveredBlock12Step = 354 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) add: (recoveredBlock12Stack2).
            recoveredBlock12PC := 356.
        ].
        recoveredBlock12Step = 356 ifTrue: [
            recoveredBlock12Stack2 := nil.
            recoveredBlock12PC := 357.
        ].
        recoveredBlock12Step = 357 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Stack2.
            recoveredBlock12PC := 358.
        ].
        recoveredBlock12Step = 358 ifTrue: [
            recoveredBlock12Local4 := recoveredBlock12Stack3.
            recoveredBlock12PC := 361.
        ].
        recoveredBlock12Step = 361 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Stack2.
            recoveredBlock12PC := 362.
        ].
        recoveredBlock12Step = 362 ifTrue: [
            recoveredBlock12Local3 := recoveredBlock12Stack3.
            recoveredBlock12PC := 365.
        ].
        recoveredBlock12Step = 365 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Stack2.
            recoveredBlock12PC := 366.
        ].
        recoveredBlock12Step = 366 ifTrue: [
            recoveredBlock12Local2 := recoveredBlock12Stack3.
            recoveredBlock12PC := 369.
        ].
        recoveredBlock12Step = 369 ifTrue: [
            recoveredBlock12Local1 := recoveredBlock12Stack2.
            recoveredBlock12PC := 372.
        ].
        recoveredBlock12Step = 372 ifTrue: [
            recoveredBlock12PC := 721.
        ].
        recoveredBlock12Step = 376 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 379.
        ].
        recoveredBlock12Step = 379 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) name.
            recoveredBlock12PC := 380.
        ].
        recoveredBlock12Step = 380 ifTrue: [
            recoveredBlock12Stack2 := self.
            recoveredBlock12PC := 381.
        ].
        recoveredBlock12Step = 381 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) xmlSideEffectsName.
            recoveredBlock12PC := 383.
        ].
        recoveredBlock12Step = 383 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) = (recoveredBlock12Stack2).
            recoveredBlock12PC := 384.
        ].
        recoveredBlock12Step = 384 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 388] ifFalse: [recoveredBlock12PC := 482].
        ].
        recoveredBlock12Step = 388 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 391.
        ].
        recoveredBlock12Step = 391 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) contents.
            recoveredBlock12PC := 392.
        ].
        recoveredBlock12Step = 392 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) first.
            recoveredBlock12PC := 394.
        ].
        recoveredBlock12Step = 394 ifTrue: [
            recoveredBlock12Local4 := recoveredBlock12Stack1.
            recoveredBlock12PC := 397.
        ].
        recoveredBlock12Step = 397 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 400.
        ].
        recoveredBlock12Step = 400 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) contents.
            recoveredBlock12PC := 401.
        ].
        recoveredBlock12Step = 401 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) size.
            recoveredBlock12PC := 403.
        ].
        recoveredBlock12Step = 403 ifTrue: [
            recoveredBlock12Stack2 := 2.
            recoveredBlock12PC := 405.
        ].
        recoveredBlock12Step = 405 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) >= (recoveredBlock12Stack2).
            recoveredBlock12PC := 406.
        ].
        recoveredBlock12Step = 406 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 410] ifFalse: [recoveredBlock12PC := 456].
        ].
        recoveredBlock12Step = 410 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 413.
        ].
        recoveredBlock12Step = 413 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) contents.
            recoveredBlock12PC := 414.
        ].
        recoveredBlock12Step = 414 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) first.
            recoveredBlock12PC := 416.
        ].
        recoveredBlock12Step = 416 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) name.
            recoveredBlock12PC := 417.
        ].
        recoveredBlock12Step = 417 ifTrue: [
            recoveredBlock12Stack2 := self.
            recoveredBlock12PC := 418.
        ].
        recoveredBlock12Step = 418 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) xmlSourceMapName.
            recoveredBlock12PC := 420.
        ].
        recoveredBlock12Step = 420 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) = (recoveredBlock12Stack2).
            recoveredBlock12PC := 421.
        ].
        recoveredBlock12Step = 421 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 424] ifFalse: [recoveredBlock12PC := 456].
        ].
        recoveredBlock12Step = 424 ifTrue: [
            recoveredBlock12Stack1 := recoveredArg3.
            recoveredBlock12PC := 427.
        ].
        recoveredBlock12Step = 427 ifTrue: [
            recoveredBlock12Stack2 := self.
            recoveredBlock12PC := 428.
        ].
        recoveredBlock12Step = 428 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 431.
        ].
        recoveredBlock12Step = 431 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) contents.
            recoveredBlock12PC := 432.
        ].
        recoveredBlock12Step = 432 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) first.
            recoveredBlock12PC := 434.
        ].
        recoveredBlock12Step = 434 ifTrue: [
            recoveredBlock12Stack4 := recoveredArg3.
            recoveredBlock12PC := 437.
        ].
        recoveredBlock12Step = 437 ifTrue: [
            recoveredBlock12Stack4 := (recoveredBlock12Stack4) methodDecl.
            recoveredBlock12PC := 439.
        ].
        recoveredBlock12Step = 439 ifTrue: [
            recoveredBlock12Stack4 := (recoveredBlock12Stack4) source.
            recoveredBlock12PC := 441.
        ].
        recoveredBlock12Step = 441 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) sourceMapFromDOM: (recoveredBlock12Stack3) method: (recoveredBlock12Stack4).
            recoveredBlock12PC := 443.
        ].
        recoveredBlock12Step = 443 ifTrue: [
            (recoveredBlock12Stack1) sourceMap: (recoveredBlock12Stack2).
            recoveredBlock12PC := 445.
        ].
        recoveredBlock12Step = 445 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 448.
        ].
        recoveredBlock12Step = 448 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) contents.
            recoveredBlock12PC := 449.
        ].
        recoveredBlock12Step = 449 ifTrue: [
            recoveredBlock12Stack2 := 2.
            recoveredBlock12PC := 451.
        ].
        recoveredBlock12Step = 451 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) at: (recoveredBlock12Stack2).
            recoveredBlock12PC := 453.
        ].
        recoveredBlock12Step = 453 ifTrue: [
            recoveredBlock12Local4 := recoveredBlock12Stack1.
            recoveredBlock12PC := 456.
        ].
        recoveredBlock12Step = 456 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 459.
        ].
        recoveredBlock12Step = 459 ifTrue: [
            recoveredBlock12Stack2 := SGMdAbstractSideEffectAccess.
            recoveredBlock12PC := 461.
        ].
        recoveredBlock12Step = 461 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Local4.
            recoveredBlock12PC := 464.
        ].
        recoveredBlock12Step = 464 ifTrue: [
            recoveredBlock12Stack4 := recoveredArg2.
            recoveredBlock12PC := 467.
        ].
        recoveredBlock12Step = 467 ifTrue: [
            recoveredBlock12Stack5 := recoveredArg3.
            recoveredBlock12PC := 470.
        ].
        recoveredBlock12Step = 470 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) fromDOM: (recoveredBlock12Stack3) in: (recoveredBlock12Stack4) context: (recoveredBlock12Stack5).
            recoveredBlock12PC := 473.
        ].
        recoveredBlock12Step = 473 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) sideEffects: (recoveredBlock12Stack2).
            recoveredBlock12PC := 475.
        ].
        recoveredBlock12Step = 475 ifTrue: [
            recoveredBlock12Stack2 := nil.
            recoveredBlock12PC := 476.
        ].
        recoveredBlock12Step = 476 ifTrue: [
            recoveredBlock12Local4 := recoveredBlock12Stack2.
            recoveredBlock12PC := 479.
        ].
        recoveredBlock12Step = 479 ifTrue: [
            recoveredBlock12PC := 721.
        ].
        recoveredBlock12Step = 482 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 485.
        ].
        recoveredBlock12Step = 485 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) name.
            recoveredBlock12PC := 486.
        ].
        recoveredBlock12Step = 486 ifTrue: [
            recoveredBlock12Stack2 := self.
            recoveredBlock12PC := 487.
        ].
        recoveredBlock12Step = 487 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) xmlUsedElementsName.
            recoveredBlock12PC := 489.
        ].
        recoveredBlock12Step = 489 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) = (recoveredBlock12Stack2).
            recoveredBlock12PC := 490.
        ].
        recoveredBlock12Step = 490 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 494] ifFalse: [recoveredBlock12PC := 542].
        ].
        recoveredBlock12Step = 494 ifTrue: [
            recoveredBlock12Stack1 := Set.
            recoveredBlock12PC := 496.
        ].
        recoveredBlock12Step = 496 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) new.
            recoveredBlock12PC := 498.
        ].
        recoveredBlock12Step = 498 ifTrue: [
            recoveredBlock12Local4 := recoveredBlock12Stack1.
            recoveredBlock12PC := 501.
        ].
        recoveredBlock12Step = 501 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 504.
        ].
        recoveredBlock12Step = 504 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) contents.
            recoveredBlock12PC := 505.
        ].
        recoveredBlock12Step = 505 ifTrue: [
            recoveredBlock12Stack2 := [:recoveredBlock12Block505Arg1 | 
    | recoveredBlock12Block505Value0 recoveredBlock12Block505Value1 recoveredBlock12Block505Value2 recoveredBlock12Block505Value3 recoveredBlock12Block505Value4 |
    recoveredBlock12Block505Value0 := recoveredBlock12Local4.
    recoveredBlock12Block505Value1 := recoveredBlock12Block505Arg1.
    recoveredBlock12Block505Value2 := recoveredArg3.
    recoveredBlock12Block505Value3 := (self) getVarDeclFrom: (recoveredBlock12Block505Value1) context: (recoveredBlock12Block505Value2).
    recoveredBlock12Block505Value4 := (recoveredBlock12Block505Value0) add: (recoveredBlock12Block505Value3).
    recoveredBlock12Block505Value4
].
            recoveredBlock12PC := 525.
        ].
        recoveredBlock12Step = 525 ifTrue: [
            (recoveredBlock12Stack1) do: (recoveredBlock12Stack2).
            recoveredBlock12PC := 527.
        ].
        recoveredBlock12Step = 527 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 530.
        ].
        recoveredBlock12Step = 530 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Local4.
            recoveredBlock12PC := 533.
        ].
        recoveredBlock12Step = 533 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) usedElements: (recoveredBlock12Stack2).
            recoveredBlock12PC := 535.
        ].
        recoveredBlock12Step = 535 ifTrue: [
            recoveredBlock12Stack2 := nil.
            recoveredBlock12PC := 536.
        ].
        recoveredBlock12Step = 536 ifTrue: [
            recoveredBlock12Local4 := recoveredBlock12Stack2.
            recoveredBlock12PC := 539.
        ].
        recoveredBlock12Step = 539 ifTrue: [
            recoveredBlock12PC := 721.
        ].
        recoveredBlock12Step = 542 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 545.
        ].
        recoveredBlock12Step = 545 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) name.
            recoveredBlock12PC := 546.
        ].
        recoveredBlock12Step = 546 ifTrue: [
            recoveredBlock12Stack2 := self.
            recoveredBlock12PC := 547.
        ].
        recoveredBlock12Step = 547 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) xmlReferenceAnalysisName.
            recoveredBlock12PC := 549.
        ].
        recoveredBlock12Step = 549 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) = (recoveredBlock12Stack2).
            recoveredBlock12PC := 550.
        ].
        recoveredBlock12Step = 550 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 554] ifFalse: [recoveredBlock12PC := 648].
        ].
        recoveredBlock12Step = 554 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 557.
        ].
        recoveredBlock12Step = 557 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) contents.
            recoveredBlock12PC := 558.
        ].
        recoveredBlock12Step = 558 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) first.
            recoveredBlock12PC := 560.
        ].
        recoveredBlock12Step = 560 ifTrue: [
            recoveredBlock12Local4 := recoveredBlock12Stack1.
            recoveredBlock12PC := 563.
        ].
        recoveredBlock12Step = 563 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 566.
        ].
        recoveredBlock12Step = 566 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) contents.
            recoveredBlock12PC := 567.
        ].
        recoveredBlock12Step = 567 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) size.
            recoveredBlock12PC := 569.
        ].
        recoveredBlock12Step = 569 ifTrue: [
            recoveredBlock12Stack2 := 2.
            recoveredBlock12PC := 571.
        ].
        recoveredBlock12Step = 571 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) >= (recoveredBlock12Stack2).
            recoveredBlock12PC := 572.
        ].
        recoveredBlock12Step = 572 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 576] ifFalse: [recoveredBlock12PC := 622].
        ].
        recoveredBlock12Step = 576 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 579.
        ].
        recoveredBlock12Step = 579 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) contents.
            recoveredBlock12PC := 580.
        ].
        recoveredBlock12Step = 580 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) first.
            recoveredBlock12PC := 582.
        ].
        recoveredBlock12Step = 582 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) name.
            recoveredBlock12PC := 583.
        ].
        recoveredBlock12Step = 583 ifTrue: [
            recoveredBlock12Stack2 := self.
            recoveredBlock12PC := 584.
        ].
        recoveredBlock12Step = 584 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) xmlSourceMapName.
            recoveredBlock12PC := 586.
        ].
        recoveredBlock12Step = 586 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) = (recoveredBlock12Stack2).
            recoveredBlock12PC := 587.
        ].
        recoveredBlock12Step = 587 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 590] ifFalse: [recoveredBlock12PC := 622].
        ].
        recoveredBlock12Step = 590 ifTrue: [
            recoveredBlock12Stack1 := recoveredArg3.
            recoveredBlock12PC := 593.
        ].
        recoveredBlock12Step = 593 ifTrue: [
            recoveredBlock12Stack2 := self.
            recoveredBlock12PC := 594.
        ].
        recoveredBlock12Step = 594 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 597.
        ].
        recoveredBlock12Step = 597 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) contents.
            recoveredBlock12PC := 598.
        ].
        recoveredBlock12Step = 598 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) first.
            recoveredBlock12PC := 600.
        ].
        recoveredBlock12Step = 600 ifTrue: [
            recoveredBlock12Stack4 := recoveredArg3.
            recoveredBlock12PC := 603.
        ].
        recoveredBlock12Step = 603 ifTrue: [
            recoveredBlock12Stack4 := (recoveredBlock12Stack4) methodDecl.
            recoveredBlock12PC := 605.
        ].
        recoveredBlock12Step = 605 ifTrue: [
            recoveredBlock12Stack4 := (recoveredBlock12Stack4) source.
            recoveredBlock12PC := 607.
        ].
        recoveredBlock12Step = 607 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) sourceMapFromDOM: (recoveredBlock12Stack3) method: (recoveredBlock12Stack4).
            recoveredBlock12PC := 609.
        ].
        recoveredBlock12Step = 609 ifTrue: [
            (recoveredBlock12Stack1) sourceMap: (recoveredBlock12Stack2).
            recoveredBlock12PC := 611.
        ].
        recoveredBlock12Step = 611 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 614.
        ].
        recoveredBlock12Step = 614 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) contents.
            recoveredBlock12PC := 615.
        ].
        recoveredBlock12Step = 615 ifTrue: [
            recoveredBlock12Stack2 := 2.
            recoveredBlock12PC := 617.
        ].
        recoveredBlock12Step = 617 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) at: (recoveredBlock12Stack2).
            recoveredBlock12PC := 619.
        ].
        recoveredBlock12Step = 619 ifTrue: [
            recoveredBlock12Local4 := recoveredBlock12Stack1.
            recoveredBlock12PC := 622.
        ].
        recoveredBlock12Step = 622 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 625.
        ].
        recoveredBlock12Step = 625 ifTrue: [
            recoveredBlock12Stack2 := SGMdReferenceAnalysisCollection.
            recoveredBlock12PC := 627.
        ].
        recoveredBlock12Step = 627 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Local4.
            recoveredBlock12PC := 630.
        ].
        recoveredBlock12Step = 630 ifTrue: [
            recoveredBlock12Stack4 := recoveredArg2.
            recoveredBlock12PC := 633.
        ].
        recoveredBlock12Step = 633 ifTrue: [
            recoveredBlock12Stack5 := recoveredArg3.
            recoveredBlock12PC := 636.
        ].
        recoveredBlock12Step = 636 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) fromDOM: (recoveredBlock12Stack3) in: (recoveredBlock12Stack4) context: (recoveredBlock12Stack5).
            recoveredBlock12PC := 639.
        ].
        recoveredBlock12Step = 639 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) referenceAnalysis: (recoveredBlock12Stack2).
            recoveredBlock12PC := 641.
        ].
        recoveredBlock12Step = 641 ifTrue: [
            recoveredBlock12Stack2 := nil.
            recoveredBlock12PC := 642.
        ].
        recoveredBlock12Step = 642 ifTrue: [
            recoveredBlock12Local4 := recoveredBlock12Stack2.
            recoveredBlock12PC := 645.
        ].
        recoveredBlock12Step = 645 ifTrue: [
            recoveredBlock12PC := 721.
        ].
        recoveredBlock12Step = 648 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 651.
        ].
        recoveredBlock12Step = 651 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) name.
            recoveredBlock12PC := 652.
        ].
        recoveredBlock12Step = 652 ifTrue: [
            recoveredBlock12Stack2 := self.
            recoveredBlock12PC := 653.
        ].
        recoveredBlock12Step = 653 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) xmlVerifyCalls.
            recoveredBlock12PC := 655.
        ].
        recoveredBlock12Step = 655 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) = (recoveredBlock12Stack2).
            recoveredBlock12PC := 656.
        ].
        recoveredBlock12Step = 656 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 660] ifFalse: [recoveredBlock12PC := 708].
        ].
        recoveredBlock12Step = 660 ifTrue: [
            recoveredBlock12Stack1 := Set.
            recoveredBlock12PC := 662.
        ].
        recoveredBlock12Step = 662 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) new.
            recoveredBlock12PC := 664.
        ].
        recoveredBlock12Step = 664 ifTrue: [
            recoveredBlock12Local4 := recoveredBlock12Stack1.
            recoveredBlock12PC := 667.
        ].
        recoveredBlock12Step = 667 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 670.
        ].
        recoveredBlock12Step = 670 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) contents.
            recoveredBlock12PC := 671.
        ].
        recoveredBlock12Step = 671 ifTrue: [
            recoveredBlock12Stack2 := [:recoveredBlock12Block671Arg1 | 
    | recoveredBlock12Block671Value0 recoveredBlock12Block671Value1 recoveredBlock12Block671Value2 recoveredBlock12Block671Value3 recoveredBlock12Block671Value4 |
    recoveredBlock12Block671Value0 := recoveredBlock12Local4.
    recoveredBlock12Block671Value1 := recoveredBlock12Block671Arg1.
    recoveredBlock12Block671Value2 := recoveredArg3.
    recoveredBlock12Block671Value3 := (self) getVarDeclFrom: (recoveredBlock12Block671Value1) context: (recoveredBlock12Block671Value2).
    recoveredBlock12Block671Value4 := (recoveredBlock12Block671Value0) add: (recoveredBlock12Block671Value3).
    recoveredBlock12Block671Value4
].
            recoveredBlock12PC := 691.
        ].
        recoveredBlock12Step = 691 ifTrue: [
            (recoveredBlock12Stack1) do: (recoveredBlock12Stack2).
            recoveredBlock12PC := 693.
        ].
        recoveredBlock12Step = 693 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 696.
        ].
        recoveredBlock12Step = 696 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Local4.
            recoveredBlock12PC := 699.
        ].
        recoveredBlock12Step = 699 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) verifyCalls: (recoveredBlock12Stack2).
            recoveredBlock12PC := 701.
        ].
        recoveredBlock12Step = 701 ifTrue: [
            recoveredBlock12Stack2 := nil.
            recoveredBlock12PC := 702.
        ].
        recoveredBlock12Step = 702 ifTrue: [
            recoveredBlock12Local4 := recoveredBlock12Stack2.
            recoveredBlock12PC := 705.
        ].
        recoveredBlock12Step = 705 ifTrue: [
            recoveredBlock12PC := 721.
        ].
        recoveredBlock12Step = 708 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 711.
        ].
        recoveredBlock12Step = 711 ifTrue: [
            recoveredBlock12Stack2 := 'Global Analysis Info: unknown data '.
            recoveredBlock12PC := 713.
        ].
        recoveredBlock12Step = 713 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 716.
        ].
        recoveredBlock12Step = 716 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) name.
            recoveredBlock12PC := 717.
        ].
        recoveredBlock12Step = 717 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) , (recoveredBlock12Stack3).
            recoveredBlock12PC := 719.
        ].
        recoveredBlock12Step = 719 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) mdlFatalExpect: (recoveredBlock12Stack2).
            recoveredBlock12PC := 721.
        ].
        recoveredBlock12Step = 721 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

