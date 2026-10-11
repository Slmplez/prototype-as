"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201327b4; bytecode file offset 0xa2f078"
!DBXmlDefaultProjectManager methodsFor: 'recovered'!
deleteAndRemoveDefaultProjectPartProxies: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) allDependentProxiesWithCCsForDelete.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280cb028Arg1 | 
    | block280cb028Value0 block280cb028Value1 |
    block280cb028Value0 := block280cb028Arg1.
    block280cb028Value1 := (block280cb028Value0) deleteOnly.
    block280cb028Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20145750; bytecode file offset 0xa4202c"
!DBXmlDefaultProjectManager methodsFor: 'recovered'!
defaultProjectModified: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemForProject: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280cc420Arg1 | 
    | block280cc420Value0 block280cc420Value1 |
    block280cc420Value0 := block280cc420Arg1.
    block280cc420Value1 := (block280cc420Value0) modifiedWithoutTimeStamp.
    block280cc420Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202497bc; bytecode file offset 0xb4608c"
!DBXmlDefaultProjectManager methodsFor: 'recovered'!
cleanUpVolatileDefaultProjects
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) defaultProjects.
    recoveredValue1 := (recoveredValue0) values.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isVolatileDefaultProject.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 18] ifFalse: [recoveredBlock6PC := 32].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack3 := [:block280de954Arg1 | 
    nil
].
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6PC := 28.
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) getObjectIfUndefined: (recoveredBlock6Stack3).
            recoveredBlock6PC := 30.
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) deleteAndRemoveDefaultProject: (recoveredBlock6Stack2).
            recoveredBlock6PC := 32.
        ].
        recoveredBlock6Step = 32 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x202f87c0; bytecode file offset 0xbf5088"
!DBXmlDefaultProjectManager methodsFor: 'recovered'!
moveDefaultProjectFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasRealDefaultProject.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultProjectForItem.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredLocal1 := recoveredBlock20Value0.
    recoveredBlock20Value1 := recoveredArg1.
    recoveredBlock20Value2 := (self) defaultProjectParentFor: (recoveredBlock20Value1).
    recoveredBlock20Value3 := [:recoveredBlock20Block34Arg1 | 
    | recoveredBlock20Block34Value0 recoveredBlock20Block34Value1 recoveredBlock20Block34Value2 |
    recoveredBlock20Block34Value0 := recoveredLocal1.
    recoveredBlock20Block34Value1 := recoveredBlock20Block34Arg1.
    recoveredBlock20Block34Value2 := (self) moveDefaultProject: (recoveredBlock20Block34Value0) to: (recoveredBlock20Block34Value1).
    recoveredBlock20Block34Value2
].
    recoveredBlock20Value4 := (recoveredBlock20Value2) ifNotNil: (recoveredBlock20Value3).
    recoveredBlock20Value4
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20344e34; bytecode file offset 0xc41728"
!DBXmlDefaultProjectManager methodsFor: 'recovered'!
makeRealDefaultProjectFor: recoveredArg1
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
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProject.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) itemForProject: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeRealDefaultProjectFor: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasRealDefaultProject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := EtasUserQuestion.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 'This action requires to add this project to the workspace.\Do you want to add this project?\ \Note: If you select <No> all changes will be lost if the workspace gets closed!!'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := 'ASDCreateDefaultProject'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) prompterID: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := 'YESNO'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) buttonStyle: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := 'question'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) newDefaultProjectFor: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2046fb60; bytecode file offset 0xd6c444"
!DBXmlDefaultProjectManager methodsFor: 'recovered'!
defaultProjectFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProject.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFolder.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsDefaultProject.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultProjects.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock40Local1 recoveredBlock40Local2 recoveredBlock40Local3 recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 recoveredBlock40Value3 recoveredBlock40Value4 recoveredBlock40Value5 recoveredBlock40Value6 |
    recoveredBlock40Value0 := recoveredArg1.
    recoveredBlock40Value1 := (self) createDefaultProjectFor: (recoveredBlock40Value0).
    recoveredBlock40Local1 := recoveredBlock40Value1.
    recoveredBlock40Value2 := ('Kk') == ('Call_90274').
    recoveredBlock40Value3 := recoveredBlock40Local1.
    (recoveredBlock40Value3) defaultProject: (true).
    recoveredBlock40Value4 := recoveredBlock40Local1.
    recoveredBlock40Value5 := recoveredArg1.
    (self) setDefaultProject: (recoveredBlock40Value4) for: (recoveredBlock40Value5).
    recoveredBlock40Value6 := recoveredBlock40Local1.
    ^recoveredBlock40Value6
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := [:recoveredBlock71Arg1 | 
    | recoveredBlock71Value0 recoveredBlock71Value1 recoveredBlock71Value2 |
    recoveredBlock71Value0 := recoveredBlock71Arg1.
    recoveredBlock71Value1 := [:recoveredBlock71Block81Arg1 | 
    | recoveredBlock71Block81Local1 recoveredBlock71Block81Value0 recoveredBlock71Block81Value1 recoveredBlock71Block81Value2 recoveredBlock71Block81Value3 recoveredBlock71Block81Value4 recoveredBlock71Block81Value5 recoveredBlock71Block81Value6 |
    recoveredBlock71Block81Value0 := recoveredArg1.
    recoveredBlock71Block81Value1 := (self) createDefaultProjectFor: (recoveredBlock71Block81Value0).
    recoveredBlock71Block81Local1 := recoveredBlock71Block81Value1.
    recoveredBlock71Block81Value2 := ('Kk') == ('Call_90274').
    recoveredBlock71Block81Value3 := recoveredBlock71Block81Local1.
    (recoveredBlock71Block81Value3) defaultProject: (true).
    recoveredBlock71Block81Value4 := recoveredBlock71Arg1.
    recoveredBlock71Block81Value5 := recoveredArg1.
    (self) setDefaultProject: (recoveredBlock71Block81Value4) for: (recoveredBlock71Block81Value5).
    recoveredBlock71Block81Value6 := recoveredBlock71Block81Local1.
    recoveredBlock71Block81Value6
].
    recoveredBlock71Value2 := (recoveredBlock71Value0) getObjectIfUndefined: (recoveredBlock71Value1).
    ^recoveredBlock71Value2
].
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2053aa80; bytecode file offset 0xe373b0"
!DBXmlDefaultProjectManager methodsFor: 'recovered'!
newDefaultProjectFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProject.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'ankubelk'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) etasDevHaltFor: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultProjects.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack1 := recoveredArg1.
            recoveredBlock23PC := 33.
        ].
        recoveredBlock23Step = 33 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) createDefaultProjectFor: (recoveredBlock23Stack1).
            recoveredBlock23PC := 35.
        ].
        recoveredBlock23Step = 35 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Stack0.
            recoveredBlock23PC := 36.
        ].
        recoveredBlock23Step = 36 ifTrue: [
            recoveredLocal1 := recoveredBlock23Stack1.
            recoveredBlock23PC := 39.
        ].
        recoveredBlock23Step = 39 ifTrue: [
            (recoveredBlock23Stack0 ~~ nil) ifTrue: [recoveredBlock23PC := 44] ifFalse: [recoveredBlock23PC := 42].
        ].
        recoveredBlock23Step = 42 ifTrue: [
            recoveredBlock23Stack0 := nil.
            recoveredBlock23PC := 43.
        ].
        recoveredBlock23Step = 43 ifTrue: [
            ^recoveredBlock23Stack0
        ].
        recoveredBlock23Step = 44 ifTrue: [
            recoveredBlock23Stack0 := recoveredLocal1.
            recoveredBlock23PC := 47.
        ].
        recoveredBlock23Step = 47 ifTrue: [
            recoveredBlock23Stack1 := true.
            recoveredBlock23PC := 48.
        ].
        recoveredBlock23Step = 48 ifTrue: [
            (recoveredBlock23Stack0) defaultProject: (recoveredBlock23Stack1).
            recoveredBlock23PC := 50.
        ].
        recoveredBlock23Step = 50 ifTrue: [
            recoveredBlock23Stack0 := self.
            recoveredBlock23PC := 51.
        ].
        recoveredBlock23Step = 51 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal1.
            recoveredBlock23PC := 54.
        ].
        recoveredBlock23Step = 54 ifTrue: [
            recoveredBlock23Stack2 := recoveredArg1.
            recoveredBlock23PC := 57.
        ].
        recoveredBlock23Step = 57 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) setDefaultProject: (recoveredBlock23Stack1) for: (recoveredBlock23Stack2).
            recoveredBlock23PC := 59.
        ].
        recoveredBlock23Step = 59 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack0.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := [:recoveredBlock60Arg1 | 
    | recoveredBlock60Value0 recoveredBlock60Value1 recoveredBlock60Value2 recoveredBlock60Value3 recoveredBlock60Value4 recoveredBlock60Value5 recoveredBlock60Value6 recoveredBlock60Value7 recoveredBlock60Value8 recoveredBlock60Value9 recoveredBlock60Value10 |
    recoveredBlock60Value0 := ('Kli') == ('Call_93294').
    recoveredBlock60Value1 := [
    | recoveredBlock60Block72Value0 recoveredBlock60Block72Value1 |
    recoveredBlock60Block72Value0 := recoveredBlock60Arg1.
    recoveredBlock60Block72Value1 := (recoveredBlock60Block72Value0) notNil.
    recoveredBlock60Block72Value1
].
    (self) runtimeAssert: (recoveredBlock60Value1) additionalInfo: ('Invalid Default Project').
    recoveredBlock60Value2 := ('Die') == ('Call_93294').
    recoveredBlock60Value3 := recoveredBlock60Arg1.
    recoveredBlock60Value4 := [:recoveredBlock60Block96Arg1 | 
    | recoveredBlock60Block96Value0 recoveredBlock60Block96Value1 recoveredBlock60Block96Value2 recoveredBlock60Block96Value3 recoveredBlock60Block96Value4 |
    recoveredBlock60Block96Value0 := defaultProjects.
    recoveredBlock60Block96Value1 := recoveredArg1.
    recoveredBlock60Block96Value2 := (recoveredBlock60Block96Value1) dbObject.
    (recoveredBlock60Block96Value0) removeKey: (recoveredBlock60Block96Value2).
    recoveredBlock60Block96Value3 := recoveredArg1.
    recoveredBlock60Block96Value4 := (self) newDefaultProjectFor: (recoveredBlock60Block96Value3).
    ^recoveredBlock60Block96Value4
].
    recoveredBlock60Value5 := (recoveredBlock60Value3) getObjectIfUndefined: (recoveredBlock60Value4).
    recoveredLocal1 := recoveredBlock60Value5.
    recoveredBlock60Value6 := recoveredArg1.
    recoveredBlock60Value7 := [:recoveredBlock60Block125Arg1 | 
    (self) runtimeAssert: (false).
    nil
].
    recoveredBlock60Value8 := (recoveredBlock60Value6) parentIfUndefined: (recoveredBlock60Value7).
    recoveredBlock60Value9 := [:recoveredBlock60Block139Arg1 | 
    | recoveredBlock60Block139Stack0 recoveredBlock60Block139Stack1 recoveredBlock60Block139Stack2 recoveredBlock60Block139Stack3 recoveredBlock60Block139Stack4 recoveredBlock60Block139Stack5 recoveredBlock60Block139PC recoveredBlock60Block139Step recoveredBlock60Block139Done recoveredBlock60Block139Result |
    recoveredBlock60Block139Stack0 := self.
    recoveredBlock60Block139PC := 146.
    recoveredBlock60Block139Done := false.
    [recoveredBlock60Block139Done not] whileTrue: [
        recoveredBlock60Block139Step := recoveredBlock60Block139PC.
        recoveredBlock60Block139Step = 146 ifTrue: [
            recoveredBlock60Block139Stack1 := recoveredLocal1.
            recoveredBlock60Block139PC := 149.
        ].
        recoveredBlock60Block139Step = 149 ifTrue: [
            recoveredBlock60Block139Stack2 := recoveredArg1.
            recoveredBlock60Block139PC := 152.
        ].
        recoveredBlock60Block139Step = 152 ifTrue: [
            recoveredBlock60Block139Stack2 := (recoveredBlock60Block139Stack2) defaultProjectLabel.
            recoveredBlock60Block139PC := 154.
        ].
        recoveredBlock60Block139Step = 154 ifTrue: [
            recoveredBlock60Block139Stack3 := recoveredBlock60Block139Arg1.
            recoveredBlock60Block139PC := 155.
        ].
        recoveredBlock60Block139Step = 155 ifTrue: [
            recoveredBlock60Block139Stack3 := (recoveredBlock60Block139Stack3) childrenKeys.
            recoveredBlock60Block139PC := 157.
        ].
        recoveredBlock60Block139Step = 157 ifTrue: [
            recoveredBlock60Block139Stack4 := [:block2810ddacArg1 | 
    | block2810ddacValue0 block2810ddacValue1 |
    block2810ddacValue0 := block2810ddacArg1.
    block2810ddacValue1 := (block2810ddacValue0) name.
    block2810ddacValue1
].
            recoveredBlock60Block139PC := 159.
        ].
        recoveredBlock60Block139Step = 159 ifTrue: [
            recoveredBlock60Block139PC := 166.
        ].
        recoveredBlock60Block139Step = 166 ifTrue: [
            recoveredBlock60Block139Stack3 := (recoveredBlock60Block139Stack3) collect: (recoveredBlock60Block139Stack4).
            recoveredBlock60Block139PC := 168.
        ].
        recoveredBlock60Block139Step = 168 ifTrue: [
            recoveredBlock60Block139Stack2 := (recoveredBlock60Block139Stack2) uniqueStringFor: (recoveredBlock60Block139Stack3).
            recoveredBlock60Block139PC := 170.
        ].
        recoveredBlock60Block139Step = 170 ifTrue: [
            (recoveredBlock60Block139Stack1) label: (recoveredBlock60Block139Stack2).
            recoveredBlock60Block139PC := 172.
        ].
        recoveredBlock60Block139Step = 172 ifTrue: [
            recoveredBlock60Block139Stack1 := recoveredLocal1.
            recoveredBlock60Block139PC := 175.
        ].
        recoveredBlock60Block139Step = 175 ifTrue: [
            recoveredBlock60Block139Stack2 := recoveredBlock60Block139Arg1.
            recoveredBlock60Block139PC := 176.
        ].
        recoveredBlock60Block139Step = 176 ifTrue: [
            recoveredBlock60Block139Stack0 := (recoveredBlock60Block139Stack0) moveDefaultProject: (recoveredBlock60Block139Stack1) to: (recoveredBlock60Block139Stack2).
            recoveredBlock60Block139PC := 178.
        ].
        recoveredBlock60Block139Step = 178 ifTrue: [
            recoveredBlock60Block139Result := recoveredBlock60Block139Stack0.
            recoveredBlock60Block139Done := true.
        ].
    ].
    recoveredBlock60Block139Result
].
    recoveredBlock60Value10 := (recoveredBlock60Value8) ifNotNil: (recoveredBlock60Value9).
    recoveredBlock60Value10
].
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) asRBDBReference.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0) defaultProjectKey: (recoveredStack1).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

