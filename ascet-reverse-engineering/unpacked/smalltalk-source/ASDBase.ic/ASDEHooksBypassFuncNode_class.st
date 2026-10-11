"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200d9f44; bytecode file offset 0x9d6868"
!ASDEHooksBypassFuncNode class methodsFor: 'recovered'!
createWithName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) funcNodeName: (recoveredValue3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20122d98; bytecode file offset 0xa1f6a4"
!ASDEHooksBypassFuncNode class methodsFor: 'recovered'!
createWithName: recoveredArg1 eHooksConfig: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) funcNodeName: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) eHooksConfig: (recoveredValue5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x202e9498; bytecode file offset 0xbe5d74"
!ASDEHooksBypassFuncNode class methodsFor: 'recovered'!
createProcessReferenceIDChain: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubStrings: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlMethodByName: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) dbObject.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) globalId.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) aliasName.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20367afc; bytecode file offset 0xc643e0"
!ASDEHooksBypassFuncNode class methodsFor: 'recovered'!
createProcessReferenceIDChain: recoveredArg1 mainController: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubStrings: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemForPath: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlMethodByName: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) dbObject.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) globalId.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) aliasName.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20593a58; bytecode file offset 0xe903b0"
!ASDEHooksBypassFuncNode class methodsFor: 'recovered'!
readEHOOKSBypassFunctions: recoveredArg1 withImportController: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Local1 recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 recoveredBlock15Value8 recoveredBlock15Value9 recoveredBlock15Value10 recoveredBlock15Value11 recoveredBlock15Value12 recoveredBlock15Value13 |
    recoveredBlock15Value0 := ASDEHooksBypassFuncNode.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) getString: ('name').
    recoveredBlock15Value3 := (recoveredBlock15Value0) createWithName: (recoveredBlock15Value2).
    recoveredBlock15Local1 := recoveredBlock15Value3.
    recoveredBlock15Value4 := recoveredBlock15Arg1.
    recoveredBlock15Value5 := (recoveredBlock15Value4) getDouble: ('period') default: (nil).
    recoveredBlock15Value6 := [:recoveredBlock15Block44Arg1 | 
    | recoveredBlock15Block44Value0 recoveredBlock15Block44Value1 recoveredBlock15Block44Value2 |
    recoveredBlock15Block44Value0 := recoveredBlock15Local1.
    recoveredBlock15Block44Value1 := recoveredBlock15Block44Arg1.
    recoveredBlock15Block44Value2 := (recoveredBlock15Block44Value0) changePeriod: (recoveredBlock15Block44Value1).
    recoveredBlock15Block44Value2
].
    (recoveredBlock15Value5) ifNotNil: (recoveredBlock15Value6).
    recoveredBlock15Value7 := recoveredBlock15Arg1.
    recoveredBlock15Value8 := [:recoveredBlock15Block64Arg1 | 
    | recoveredBlock15Block64Value0 recoveredBlock15Block64Value1 recoveredBlock15Block64Value2 recoveredBlock15Block64Value3 recoveredBlock15Block64Value4 recoveredBlock15Block64Value5 recoveredBlock15Block64Value6 recoveredBlock15Block64Value7 recoveredBlock15Block64Value8 recoveredBlock15Block64Value9 recoveredBlock15Block64Value10 recoveredBlock15Block64Value11 recoveredBlock15Block64Value12 recoveredBlock15Block64Value13 recoveredBlock15Block64Value14 recoveredBlock15Block64Value15 |
    recoveredBlock15Block64Value0 := recoveredBlock15Block64Arg1.
    recoveredBlock15Block64Value1 := (recoveredBlock15Block64Value0) getString: ('dispatchPoint') default: (nil).
    recoveredBlock15Block64Value2 := [:recoveredBlock15Block64Block76Arg1 | 
    | recoveredBlock15Block64Block76Value0 recoveredBlock15Block64Block76Value1 recoveredBlock15Block64Block76Value2 |
    recoveredBlock15Block64Block76Value0 := recoveredBlock15Local1.
    recoveredBlock15Block64Block76Value1 := recoveredBlock15Block64Block76Arg1.
    recoveredBlock15Block64Block76Value2 := (recoveredBlock15Block64Block76Value0) ecuTriggerConfigDispatchPoint: (recoveredBlock15Block64Block76Value1).
    recoveredBlock15Block64Block76Value2
].
    (recoveredBlock15Block64Value1) ifNotNil: (recoveredBlock15Block64Value2).
    recoveredBlock15Block64Value3 := recoveredBlock15Block64Arg1.
    recoveredBlock15Block64Value4 := (recoveredBlock15Block64Value3) getString: ('controlVariable') default: (nil).
    recoveredBlock15Block64Value5 := [:recoveredBlock15Block64Block97Arg1 | 
    | recoveredBlock15Block64Block97Value0 recoveredBlock15Block64Block97Value1 recoveredBlock15Block64Block97Value2 |
    recoveredBlock15Block64Block97Value0 := recoveredBlock15Local1.
    recoveredBlock15Block64Block97Value1 := recoveredBlock15Block64Block97Arg1.
    recoveredBlock15Block64Block97Value2 := (recoveredBlock15Block64Block97Value0) ecuTriggerConfigControlVariable: (recoveredBlock15Block64Block97Value1).
    recoveredBlock15Block64Block97Value2
].
    (recoveredBlock15Block64Value4) ifNotNil: (recoveredBlock15Block64Value5).
    recoveredBlock15Block64Value6 := recoveredBlock15Block64Arg1.
    recoveredBlock15Block64Value7 := (recoveredBlock15Block64Value6) getString: ('enablerParameter') default: (nil).
    recoveredBlock15Block64Value8 := [:recoveredBlock15Block64Block119Arg1 | 
    | recoveredBlock15Block64Block119Value0 recoveredBlock15Block64Block119Value1 recoveredBlock15Block64Block119Value2 |
    recoveredBlock15Block64Block119Value0 := recoveredBlock15Local1.
    recoveredBlock15Block64Block119Value1 := recoveredBlock15Block64Block119Arg1.
    recoveredBlock15Block64Block119Value2 := (recoveredBlock15Block64Block119Value0) ecuTriggerConfigEnablerParameter: (recoveredBlock15Block64Block119Value1).
    recoveredBlock15Block64Block119Value2
].
    (recoveredBlock15Block64Value7) ifNotNil: (recoveredBlock15Block64Value8).
    recoveredBlock15Block64Value9 := recoveredBlock15Block64Arg1.
    recoveredBlock15Block64Value10 := (recoveredBlock15Block64Value9) getBoolean: ('forceWrites') default: (nil).
    recoveredBlock15Block64Value11 := [:recoveredBlock15Block64Block141Arg1 | 
    | recoveredBlock15Block64Block141Value0 recoveredBlock15Block64Block141Value1 recoveredBlock15Block64Block141Value2 recoveredBlock15Block64Block141Value3 |
    recoveredBlock15Block64Block141Value0 := recoveredBlock15Local1.
    recoveredBlock15Block64Block141Value1 := recoveredBlock15Block64Block141Arg1.
    recoveredBlock15Block64Block141Value2 := (recoveredBlock15Block64Block141Value1) asBoolean.
    recoveredBlock15Block64Block141Value3 := (recoveredBlock15Block64Block141Value0) ecuTriggerConfigForceWrites: (recoveredBlock15Block64Block141Value2).
    recoveredBlock15Block64Block141Value3
].
    (recoveredBlock15Block64Value10) ifNotNil: (recoveredBlock15Block64Value11).
    recoveredBlock15Block64Value12 := recoveredBlock15Block64Arg1.
    recoveredBlock15Block64Value13 := (recoveredBlock15Block64Value12) getString: ('indicatorVariable') default: (nil).
    recoveredBlock15Block64Value14 := [:recoveredBlock15Block64Block165Arg1 | 
    | recoveredBlock15Block64Block165Value0 recoveredBlock15Block64Block165Value1 recoveredBlock15Block64Block165Value2 |
    recoveredBlock15Block64Block165Value0 := recoveredBlock15Local1.
    recoveredBlock15Block64Block165Value1 := recoveredBlock15Block64Block165Arg1.
    recoveredBlock15Block64Block165Value2 := (recoveredBlock15Block64Block165Value0) ecuTriggerConfigIndicatorVariable: (recoveredBlock15Block64Block165Value1).
    recoveredBlock15Block64Block165Value2
].
    recoveredBlock15Block64Value15 := (recoveredBlock15Block64Value13) ifNotNil: (recoveredBlock15Block64Value14).
    recoveredBlock15Block64Value15
].
    (recoveredBlock15Value7) optional: ('EHOOKSECUTriggerConfigurationProperties') do: (recoveredBlock15Value8).
    recoveredBlock15Value9 := recoveredBlock15Arg1.
    recoveredBlock15Value10 := [:recoveredBlock15Block189Arg1 | 
    | recoveredBlock15Block189Value0 recoveredBlock15Block189Value1 recoveredBlock15Block189Value2 recoveredBlock15Block189Value3 recoveredBlock15Block189Value4 recoveredBlock15Block189Value5 recoveredBlock15Block189Value6 recoveredBlock15Block189Value7 recoveredBlock15Block189Value8 recoveredBlock15Block189Value9 |
    recoveredBlock15Block189Value0 := recoveredBlock15Local1.
    recoveredBlock15Block189Value1 := Array.
    recoveredBlock15Block189Value2 := recoveredBlock15Block189Arg1.
    recoveredBlock15Block189Value3 := (recoveredBlock15Block189Value2) subElements.
    recoveredBlock15Block189Value4 := (recoveredBlock15Block189Value3) size.
    recoveredBlock15Block189Value5 := (recoveredBlock15Block189Value1) new: (recoveredBlock15Block189Value4).
    recoveredBlock15Block189Value6 := (recoveredBlock15Block189Value5) asOrderedCollection.
    (recoveredBlock15Block189Value0) instVarProcessReferences: (recoveredBlock15Block189Value6).
    recoveredBlock15Block189Value7 := recoveredBlock15Block189Arg1.
    recoveredBlock15Block189Value8 := [:recoveredBlock15Block189Block215Arg1 | 
    | recoveredBlock15Block189Block215Local1 recoveredBlock15Block189Block215Value0 recoveredBlock15Block189Block215Value1 recoveredBlock15Block189Block215Value2 recoveredBlock15Block189Block215Value3 recoveredBlock15Block189Block215Value4 recoveredBlock15Block189Block215Value5 recoveredBlock15Block189Block215Value6 |
    recoveredBlock15Block189Block215Value0 := recoveredBlock15Block189Block215Arg1.
    recoveredBlock15Block189Block215Value1 := (recoveredBlock15Block189Block215Value0) getInt: ('index').
    recoveredBlock15Block189Block215Local1 := recoveredBlock15Block189Block215Value1.
    recoveredBlock15Block189Block215Value2 := recoveredArg2.
    recoveredBlock15Block189Block215Value3 := recoveredBlock15Block189Block215Arg1.
    recoveredBlock15Block189Block215Value4 := (recoveredBlock15Block189Block215Value2) readProcessReferenceIDChain: (recoveredBlock15Block189Block215Value3).
    recoveredBlock15Block189Block215Value5 := [:recoveredBlock15Block189Block215Block240Arg1 | 
    | recoveredBlock15Block189Block215Block240Value0 recoveredBlock15Block189Block215Block240Value1 recoveredBlock15Block189Block215Block240Value2 recoveredBlock15Block189Block215Block240Value3 recoveredBlock15Block189Block215Block240Value4 |
    recoveredBlock15Block189Block215Block240Value0 := recoveredBlock15Local1.
    recoveredBlock15Block189Block215Block240Value1 := (recoveredBlock15Block189Block215Block240Value0) instVarProcessReferences.
    recoveredBlock15Block189Block215Block240Value2 := recoveredBlock15Block189Block215Local1.
    recoveredBlock15Block189Block215Block240Value3 := recoveredBlock15Block189Block215Block240Arg1.
    recoveredBlock15Block189Block215Block240Value4 := (recoveredBlock15Block189Block215Block240Value1) at: (recoveredBlock15Block189Block215Block240Value2) put: (recoveredBlock15Block189Block215Block240Value3).
    recoveredBlock15Block189Block215Block240Value4
].
    recoveredBlock15Block189Block215Value6 := (recoveredBlock15Block189Block215Value4) ifNotNil: (recoveredBlock15Block189Block215Value5).
    recoveredBlock15Block189Block215Value6
].
    recoveredBlock15Block189Value9 := (recoveredBlock15Block189Value7) multiple: ('EHOOKSProcessReference') do: (recoveredBlock15Block189Value8).
    recoveredBlock15Block189Value9
].
    (recoveredBlock15Value9) optional: ('EHOOKSProcessMapping') do: (recoveredBlock15Value10).
    recoveredBlock15Value11 := recoveredLocal1.
    recoveredBlock15Value12 := recoveredBlock15Local1.
    recoveredBlock15Value13 := (recoveredBlock15Value11) add: (recoveredBlock15Value12).
    recoveredBlock15Value13
].
    (recoveredValue2) multiple: ('EHOOKSBypassFunctionNode') do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x205f0534; bytecode file offset 0xeece4c"
!ASDEHooksBypassFuncNode class methodsFor: 'recovered'!
newForArray: recoveredArg1 mainController: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'Process'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
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
            recoveredStack2 := 4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := ' '.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 67] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 67] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithName: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubStrings: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) createProcessReferenceIDChain: (recoveredStack1) mainController: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) instVarProcessReferences.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 163].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := IdentityDictionary.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) instVarProcessReferences: (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) instVarProcessReferences.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := 5.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := ' '.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack0) ecuTriggerConfigDispatchPoint: (recoveredStack1).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := 6.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := ' '.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 250] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 250] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFloat.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack0) period: (recoveredStack1).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := 7.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := ' '.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 290] ifFalse: [recoveredPC := 272].
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 290] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            (recoveredStack0) ecuTriggerConfigForceWrites: (recoveredStack1).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredPC := 296.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack0) ecuTriggerConfigForceWrites: (recoveredStack1).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := ' '.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 332] ifFalse: [recoveredPC := 318].
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 332] ifFalse: [recoveredPC := 324].
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            (recoveredStack0) ecuTriggerConfigControlVariable: (recoveredStack1).
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := 9.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := ' '.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 368] ifFalse: [recoveredPC := 354].
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 368] ifFalse: [recoveredPC := 360].
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            (recoveredStack0) ecuTriggerConfigEnablerParameter: (recoveredStack1).
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack1 := ' '.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 404] ifFalse: [recoveredPC := 390].
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 404] ifFalse: [recoveredPC := 396].
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            (recoveredStack0) ecuTriggerConfigIndicatorVariable: (recoveredStack1).
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

