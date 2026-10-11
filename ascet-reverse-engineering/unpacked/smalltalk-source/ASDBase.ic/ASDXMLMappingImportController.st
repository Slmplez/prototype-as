"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20068f14; bytecode file offset 0x965b90"
!ASDXMLMappingImportController methodsFor: 'recovered'!
component
    | recoveredValue0 |
    recoveredValue0 := component.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069a10; bytecode file offset 0x966bdc"
!ASDXMLMappingImportController methodsFor: 'recovered'!
schemaVersion
    | recoveredValue0 |
    recoveredValue0 := schemaVersion.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082fbc; bytecode file offset 0x97f888"
!ASDXMLMappingImportController methodsFor: 'recovered'!
component: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    component := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c10e0; bytecode file offset 0x9bdf14"
!ASDXMLMappingImportController methodsFor: 'recovered'!
schemaVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    schemaVersion := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200eafdc; bytecode file offset 0x9e789c"
!ASDXMLMappingImportController methodsFor: 'recovered'!
initFor: recoveredArg1
    | recoveredValue0 |
    super init.
    recoveredValue0 := recoveredArg1.
    (self) component: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x203d6dfc; bytecode file offset 0xcd36d0"
!ASDXMLMappingImportController methodsFor: 'recovered'!
schemaVersionIsSmaller64
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) schemaVersion.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) schemaVersion.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) schemaVersion.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := $..
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) subStrings: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) asNumber.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) asNumber.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := 6.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) asNumber.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20427dcc; bytecode file offset 0xd246b8"
!ASDXMLMappingImportController methodsFor: 'recovered'!
convertToASDV64: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 'variableInternal'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'variableExternal'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 'Input'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 'Output'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := [:block280fcf78Arg1 | 
    | block280fcf78Stack0 block280fcf78Stack1 block280fcf78Stack2 block280fcf78Stack3 block280fcf78PC block280fcf78Step block280fcf78Done block280fcf78Result |
    block280fcf78Stack0 := self.
    block280fcf78PC := 4.
    block280fcf78Done := false.
    [block280fcf78Done not] whileTrue: [
        block280fcf78Step := block280fcf78PC.
        block280fcf78Step = 4 ifTrue: [
            block280fcf78Stack1 := block280fcf78Arg1.
            block280fcf78PC := 5.
        ].
        block280fcf78Step = 5 ifTrue: [
            block280fcf78Stack2 := [:block280fcf9cArg1 | 
    | block280fcf9cStack0 block280fcf9cStack1 block280fcf9cStack2 block280fcf9cStack3 block280fcf9cPC block280fcf9cStep block280fcf9cDone block280fcf9cResult |
    block280fcf9cStack0 := self.
    block280fcf9cPC := 4.
    block280fcf9cDone := false.
    [block280fcf9cDone not] whileTrue: [
        block280fcf9cStep := block280fcf9cPC.
        block280fcf9cStep = 4 ifTrue: [
            block280fcf9cStack1 := nil.
            block280fcf9cPC := 5.
        ].
        block280fcf9cStep = 5 ifTrue: [
            block280fcf9cStack2 := block280fcf9cArg1.
            block280fcf9cPC := 6.
        ].
        block280fcf9cStep = 6 ifTrue: [
            block280fcf9cStack2 := (block280fcf9cStack2) hasDotIncludedInSourceObjectDisplayName.
            block280fcf9cPC := 8.
        ].
        block280fcf9cStep = 8 ifTrue: [
            (block280fcf9cStack2) ifTrue: [block280fcf9cPC := 12] ifFalse: [block280fcf9cPC := 16].
        ].
        block280fcf9cStep = 12 ifTrue: [
            block280fcf9cPC := 13.
        ].
        block280fcf9cStep = 13 ifTrue: [
            block280fcf9cStack1 := block280fcf9cArg1.
            block280fcf9cPC := 14.
        ].
        block280fcf9cStep = 14 ifTrue: [
            block280fcf9cStack1 := (block280fcf9cStack1) addSelfToSourceObjectDisplayName.
            block280fcf9cPC := 16.
        ].
        block280fcf9cStep = 16 ifTrue: [
            block280fcf9cResult := block280fcf9cStack1.
            block280fcf9cDone := true.
        ].
    ].
    block280fcf9cResult
].
            block280fcf78PC := 7.
        ].
        block280fcf78Step = 7 ifTrue: [
            block280fcf78PC := 23.
        ].
        block280fcf78Step = 23 ifTrue: [
            block280fcf78Stack1 := (block280fcf78Stack1) do: (block280fcf78Stack2).
            block280fcf78PC := 25.
        ].
        block280fcf78Step = 25 ifTrue: [
            block280fcf78Result := block280fcf78Stack1.
            block280fcf78Done := true.
        ].
    ].
    block280fcf78Result
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2048becc; bytecode file offset 0xd887c4"
!ASDXMLMappingImportController methodsFor: 'recovered'!
readMappings: recoveredArg1 sourceObject: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Local1 recoveredBlock15Local2 recoveredBlock15Local3 recoveredBlock15Local4 recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 recoveredBlock15Value8 recoveredBlock15Value9 recoveredBlock15Value10 recoveredBlock15Value11 recoveredBlock15Value12 |
    recoveredBlock15Value0 := ASDMappingObject.
    recoveredBlock15Value1 := (recoveredBlock15Value0) new.
    recoveredBlock15Local3 := recoveredBlock15Value1.
    recoveredBlock15Value2 := recoveredBlock15Arg1.
    recoveredBlock15Value3 := (recoveredBlock15Value2) getString: ('elementName').
    recoveredBlock15Local4 := recoveredBlock15Value3.
    recoveredBlock15Value4 := recoveredBlock15Arg1.
    recoveredBlock15Value5 := [:recoveredBlock15Block43Arg1 | 
    | recoveredBlock15Block43Value0 recoveredBlock15Block43Value1 recoveredBlock15Block43Value2 recoveredBlock15Block43Value3 recoveredBlock15Block43Value4 recoveredBlock15Block43Value5 |
    recoveredBlock15Block43Value0 := recoveredBlock15Local3.
    recoveredBlock15Block43Value1 := recoveredArg2.
    (recoveredBlock15Block43Value0) sourceObject: (recoveredBlock15Block43Value1).
    recoveredBlock15Block43Value2 := recoveredArg2.
    recoveredBlock15Block43Value3 := recoveredBlock15Block43Arg1.
    recoveredBlock15Block43Value4 := (recoveredBlock15Block43Value3) getString: ('displayName').
    recoveredBlock15Block43Value5 := (recoveredBlock15Block43Value2) displayName: (recoveredBlock15Block43Value4).
    recoveredBlock15Block43Value5
].
    recoveredBlock15Value6 := handler.
    (recoveredBlock15Value4) required: ('SourceObject') do: (recoveredBlock15Value5) ifNot: (recoveredBlock15Value6).
    recoveredBlock15Value7 := recoveredBlock15Arg1.
    recoveredBlock15Value8 := [:recoveredBlock15Block79Arg1 | 
    | recoveredBlock15Block79Value0 recoveredBlock15Block79Value1 recoveredBlock15Block79Value2 recoveredBlock15Block79Value3 recoveredBlock15Block79Value4 recoveredBlock15Block79Value5 recoveredBlock15Block79Value6 recoveredBlock15Block79Value7 |
    recoveredBlock15Block79Value0 := ASDMappingTargetObject.
    recoveredBlock15Block79Value1 := (recoveredBlock15Block79Value0) new.
    recoveredBlock15Local1 := recoveredBlock15Block79Value1.
    recoveredBlock15Block79Value2 := recoveredBlock15Local3.
    recoveredBlock15Block79Value3 := recoveredBlock15Local1.
    (recoveredBlock15Block79Value2) targetObject: (recoveredBlock15Block79Value3).
    recoveredBlock15Block79Value4 := recoveredBlock15Local1.
    recoveredBlock15Block79Value5 := recoveredBlock15Block79Arg1.
    recoveredBlock15Block79Value6 := (recoveredBlock15Block79Value5) getString: ('displayName').
    recoveredBlock15Block79Value7 := (recoveredBlock15Block79Value4) displayName: (recoveredBlock15Block79Value6).
    recoveredBlock15Block79Value7
].
    recoveredBlock15Value9 := handler.
    (recoveredBlock15Value7) optional: ('TargetObject') do: (recoveredBlock15Value8) ifNot: (recoveredBlock15Value9).
    recoveredBlock15Value10 := recoveredLocal1.
    recoveredBlock15Value11 := recoveredBlock15Local3.
    recoveredBlock15Value12 := (recoveredBlock15Value10) add: (recoveredBlock15Value11).
    recoveredBlock15Value12
].
    (recoveredValue2) multiple: ('ElementMapping') do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x204a1a38; bytecode file offset 0xd9e32c"
!ASDXMLMappingImportController methodsFor: 'recovered'!
readMappings: recoveredArg1 sourceClass: recoveredArg2 targetClass: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Local1 recoveredBlock15Local2 recoveredBlock15Local3 recoveredBlock15Local4 recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 recoveredBlock15Value8 recoveredBlock15Value9 recoveredBlock15Value10 recoveredBlock15Value11 recoveredBlock15Value12 |
    recoveredBlock15Value0 := ASDMappingObject.
    recoveredBlock15Value1 := (recoveredBlock15Value0) new.
    recoveredBlock15Local3 := recoveredBlock15Value1.
    recoveredBlock15Value2 := recoveredBlock15Arg1.
    recoveredBlock15Value3 := (recoveredBlock15Value2) getString: ('elementName').
    recoveredBlock15Local4 := recoveredBlock15Value3.
    recoveredBlock15Value4 := recoveredBlock15Arg1.
    recoveredBlock15Value5 := [:recoveredBlock15Block43Arg1 | 
    | recoveredBlock15Block43Value0 recoveredBlock15Block43Value1 recoveredBlock15Block43Value2 recoveredBlock15Block43Value3 recoveredBlock15Block43Value4 recoveredBlock15Block43Value5 recoveredBlock15Block43Value6 recoveredBlock15Block43Value7 |
    recoveredBlock15Block43Value0 := recoveredArg2.
    recoveredBlock15Block43Value1 := (recoveredBlock15Block43Value0) new.
    recoveredBlock15Local2 := recoveredBlock15Block43Value1.
    recoveredBlock15Block43Value2 := recoveredBlock15Local2.
    recoveredBlock15Block43Value3 := recoveredBlock15Block43Arg1.
    recoveredBlock15Block43Value4 := (recoveredBlock15Block43Value3) getString: ('displayName').
    (recoveredBlock15Block43Value2) displayName: (recoveredBlock15Block43Value4).
    recoveredBlock15Block43Value5 := recoveredBlock15Local3.
    recoveredBlock15Block43Value6 := recoveredBlock15Local2.
    recoveredBlock15Block43Value7 := (recoveredBlock15Block43Value5) sourceObject: (recoveredBlock15Block43Value6).
    recoveredBlock15Block43Value7
].
    recoveredBlock15Value6 := handler.
    (recoveredBlock15Value4) required: ('SourceObject') do: (recoveredBlock15Value5) ifNot: (recoveredBlock15Value6).
    recoveredBlock15Value7 := recoveredBlock15Arg1.
    recoveredBlock15Value8 := [:recoveredBlock15Block86Arg1 | 
    | recoveredBlock15Block86Value0 recoveredBlock15Block86Value1 recoveredBlock15Block86Value2 recoveredBlock15Block86Value3 recoveredBlock15Block86Value4 recoveredBlock15Block86Value5 recoveredBlock15Block86Value6 recoveredBlock15Block86Value7 |
    recoveredBlock15Block86Value0 := recoveredArg3.
    recoveredBlock15Block86Value1 := (recoveredBlock15Block86Value0) new.
    recoveredBlock15Local1 := recoveredBlock15Block86Value1.
    recoveredBlock15Block86Value2 := recoveredBlock15Local1.
    recoveredBlock15Block86Value3 := recoveredBlock15Block86Arg1.
    recoveredBlock15Block86Value4 := (recoveredBlock15Block86Value3) getString: ('displayName').
    (recoveredBlock15Block86Value2) displayName: (recoveredBlock15Block86Value4).
    recoveredBlock15Block86Value5 := recoveredBlock15Local3.
    recoveredBlock15Block86Value6 := recoveredBlock15Local1.
    recoveredBlock15Block86Value7 := (recoveredBlock15Block86Value5) targetObject: (recoveredBlock15Block86Value6).
    recoveredBlock15Block86Value7
].
    recoveredBlock15Value9 := handler.
    (recoveredBlock15Value7) optional: ('TargetObject') do: (recoveredBlock15Value8) ifNot: (recoveredBlock15Value9).
    recoveredBlock15Value10 := recoveredLocal1.
    recoveredBlock15Value11 := recoveredBlock15Local3.
    recoveredBlock15Value12 := (recoveredBlock15Value10) add: (recoveredBlock15Value11).
    recoveredBlock15Value12
].
    (recoveredValue2) multiple: ('ElementMapping') do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

