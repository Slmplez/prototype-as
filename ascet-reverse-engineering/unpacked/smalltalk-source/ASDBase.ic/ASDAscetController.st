"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015e60; bytecode file offset 0x92209c"
!ASDAscetController methodsFor: 'recovered'!
isInEtasDomainToken
    ^'IsInEtasDomainToken'
! !

"ASDBase.ic method 0x2001d960; bytecode file offset 0x92209c"
!ASDAscetController methodsFor: 'recovered'!
creationDeniedToken
    ^'CreationDeniedToken'
! !

"ASDBase.ic method 0x20026950; bytecode file offset 0x923928"
!ASDAscetController methodsFor: 'recovered'!
underConversionToken
    ^'UnderConversionToken'
! !

"ASDBase.ic method 0x2004a35c; bytecode file offset 0x947128"
!ASDAscetController methodsFor: 'recovered'!
isCreationDeniedFlag
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) creationDeniedToken.
    recoveredValue1 := (self) getFlagForToken: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20057fb8; bytecode file offset 0x956284"
!ASDAscetController methodsFor: 'recovered'!
getFlagForToken: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) flags.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008cfd4; bytecode file offset 0x989db0"
!ASDAscetController methodsFor: 'recovered'!
setCreationDeniedFlag
    | recoveredValue0 |
    recoveredValue0 := (self) creationDeniedToken.
    (self) setFlagForToken: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008d084; bytecode file offset 0x989db0"
!ASDAscetController methodsFor: 'recovered'!
clearCreationDeniedFlag
    | recoveredValue0 |
    recoveredValue0 := (self) creationDeniedToken.
    (self) clearFlagForToken: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20097924; bytecode file offset 0x995850"
!ASDAscetController methodsFor: 'recovered'!
setFlagForToken: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) flags.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20099bf8; bytecode file offset 0x9964e4"
!ASDAscetController methodsFor: 'recovered'!
setState: recoveredArg1 forToken: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) states.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ab7c4; bytecode file offset 0x9a8250"
!ASDAscetController methodsFor: 'recovered'!
clearStateForToken: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) states.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ab800; bytecode file offset 0x9a8250"
!ASDAscetController methodsFor: 'recovered'!
getStateForToken: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) states.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bd220; bytecode file offset 0x9b9b80"
!ASDAscetController methodsFor: 'recovered'!
clearFlagForToken: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) flags.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    (recoveredValue0) remove: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200d0260; bytecode file offset 0x9ccda0"
!ASDAscetController methodsFor: 'recovered'!
multipleInstanceToken
    | recoveredValue0 |
    recoveredValue0 := ('MultiInstance') == ('Kk').
    ^'MultipleInstanceToken'
! !

"ASDBase.ic method 0x200d0288; bytecode file offset 0x9ccda0"
!ASDAscetController methodsFor: 'recovered'!
multipleInstanceSuffixToken
    | recoveredValue0 |
    recoveredValue0 := ('MultiInstance') == ('Kk').
    ^'MultipleInstanceSuffixToken'
! !

"ASDBase.ic method 0x200d03a0; bytecode file offset 0x9ccda0"
!ASDAscetController methodsFor: 'recovered'!
webServicePortToken
    | recoveredValue0 |
    recoveredValue0 := ('MultiInstance') == ('Kk').
    ^'WebServicePortToken'
! !

"ASDBase.ic method 0x200e1a10; bytecode file offset 0x9de37c"
!ASDAscetController methodsFor: 'recovered'!
getCommandLineArgumentInstance
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('MultiInstance') == ('Kk').
    recoveredValue1 := (self) getCommandLineArgument: ('-multiinstance:').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2015cac8; bytecode file offset 0xa5939c"
!ASDAscetController methodsFor: 'recovered'!
flags
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := Set.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    flags := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2015cde4; bytecode file offset 0xa596a4"
!ASDAscetController methodsFor: 'recovered'!
states
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := states.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := LookupTable.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    states := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20170214; bytecode file offset 0xa6cae0"
!ASDAscetController methodsFor: 'recovered'!
pathSuffixForMultipleInstancesNotNil
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'MultiInstance'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Kk'.
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
            recoveredStack0 := (recoveredStack0) pathSuffixForMultipleInstances.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [
    ''
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20192698; bytecode file offset 0xa8ef60"
!ASDAscetController methodsFor: 'recovered'!
getMultiInstanceSuffixIfFailed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('MultiInstance') == ('Kk').
    recoveredValue1 := (self) isMultiInstanceMode.
    recoveredValue2 := [
    | recoveredBlock11Value0 |
    recoveredBlock11Value0 := (self) getMultiInstanceSuffix.
    recoveredBlock11Value0
].
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue1) ifTrue: (recoveredValue2) ifFalse: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201c8230; bytecode file offset 0xac4b04"
!ASDAscetController methodsFor: 'recovered'!
pathSuffixForMultipleInstances
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'MultiInstance'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Kk'.
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
            recoveredStack1 := [].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMultiInstanceSuffixIfFailed: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:block280d4a24Arg1 | 
    | block280d4a24Value0 block280d4a24Value1 block280d4a24Value2 |
    block280d4a24Value0 := block280d4a24Arg1.
    block280d4a24Value1 := (block280d4a24Value0) asString.
    block280d4a24Value2 := (block280d4a24Value1) asPathname.
    block280d4a24Value2
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021272c; bytecode file offset 0xb0eff8"
!ASDAscetController methodsFor: 'recovered'!
isInEtasDomain
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) isInEtasDomainToken.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (self) getStateForToken: (recoveredValue1).
    recoveredValue3 := [
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := OSCall.
    recoveredBlock13Value1 := (recoveredBlock13Value0) isInEtasDomain.
    recoveredBlock13Value2 := recoveredLocal1.
    recoveredBlock13Value3 := (self) setState: (recoveredBlock13Value1) forToken: (recoveredBlock13Value2).
    recoveredBlock13Value3
].
    recoveredValue4 := (recoveredValue2) ifNil: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2025a390; bytecode file offset 0xb56c84"
!ASDAscetController methodsFor: 'recovered'!
alternativeWebServicePort
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ('MultiInstance') == ('Kk').
    recoveredValue1 := (self) webServicePortToken.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) getStateForToken: (recoveredValue2).
    recoveredValue4 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 |
    recoveredBlock19Value0 := (self) getCommandLineArgumentWebServicePort.
    recoveredBlock19Value1 := recoveredLocal1.
    recoveredBlock19Value2 := (self) setState: (recoveredBlock19Value0) forToken: (recoveredBlock19Value1).
    recoveredBlock19Value2
].
    recoveredValue5 := (recoveredValue3) ifNil: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2025a3b4; bytecode file offset 0xb56c84"
!ASDAscetController methodsFor: 'recovered'!
getMultiInstanceSuffix
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ('MultiInstance') == ('Kk').
    recoveredValue1 := (self) multipleInstanceSuffixToken.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) getStateForToken: (recoveredValue2).
    recoveredValue4 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 |
    recoveredBlock19Value0 := (self) getCommandLineArgumentInstance.
    recoveredBlock19Value1 := recoveredLocal1.
    recoveredBlock19Value2 := (self) setState: (recoveredBlock19Value0) forToken: (recoveredBlock19Value1).
    recoveredBlock19Value2
].
    recoveredValue5 := (recoveredValue3) ifNil: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2025f084; bytecode file offset 0xb5b958"
!ASDAscetController methodsFor: 'recovered'!
getCommandLineArgumentWebServicePort
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'MultiInstance'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Kk'.
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
            recoveredStack1 := '-wsport:'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCommandLineArgument: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:block280df860Arg1 | 
    | block280df860Stack0 block280df860Stack1 block280df860Stack2 block280df860PC block280df860Step block280df860Done block280df860Result |
    block280df860Stack0 := self.
    block280df860PC := 4.
    block280df860Done := false.
    [block280df860Done not] whileTrue: [
        block280df860Step := block280df860PC.
        block280df860Step = 4 ifTrue: [
            block280df860Stack1 := block280df860Arg1.
            block280df860PC := 5.
        ].
        block280df860Step = 5 ifTrue: [
            block280df860Stack1 := (block280df860Stack1) notEmpty.
            block280df860PC := 7.
        ].
        block280df860Step = 7 ifTrue: [
            (block280df860Stack1) ifTrue: [block280df860PC := 10] ifFalse: [block280df860PC := 20].
        ].
        block280df860Step = 10 ifTrue: [
            block280df860Stack1 := block280df860Arg1.
            block280df860PC := 11.
        ].
        block280df860Step = 11 ifTrue: [
            block280df860Stack1 := (block280df860Stack1) isNumeric.
            block280df860PC := 13.
        ].
        block280df860Step = 13 ifTrue: [
            (block280df860Stack1) ifTrue: [block280df860PC := 16] ifFalse: [block280df860PC := 20].
        ].
        block280df860Step = 16 ifTrue: [
            block280df860Stack1 := block280df860Arg1.
            block280df860PC := 17.
        ].
        block280df860Step = 17 ifTrue: [
            block280df860PC := 21.
        ].
        block280df860Step = 20 ifTrue: [
            block280df860Stack1 := nil.
            block280df860PC := 21.
        ].
        block280df860Step = 21 ifTrue: [
            block280df860Result := block280df860Stack1.
            block280df860Done := true.
        ].
    ].
    block280df860Result
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20264f70; bytecode file offset 0xb61840"
!ASDAscetController methodsFor: 'recovered'!
isMultiInstanceMode
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ('MultiInstance') == ('Kk').
    recoveredValue1 := (self) multipleInstanceToken.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) getStateForToken: (recoveredValue2).
    recoveredValue4 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 |
    recoveredBlock19Value0 := (self) getMultiInstanceSuffix.
    recoveredBlock19Value1 := (recoveredBlock19Value0) notNil.
    recoveredBlock19Value2 := recoveredLocal1.
    recoveredBlock19Value3 := (self) setState: (recoveredBlock19Value1) forToken: (recoveredBlock19Value2).
    recoveredBlock19Value3
].
    recoveredValue5 := (recoveredValue3) ifNil: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x203a6904; bytecode file offset 0xca31e0"
!ASDAscetController methodsFor: 'recovered'!
getCommandLineArgument: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'MultiInstance'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Kk'.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) commandLine.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 |
    recoveredBlock21Value0 := recoveredBlock21Arg1.
    recoveredBlock21Value1 := (recoveredBlock21Value0) asUppercase.
    recoveredBlock21Value2 := recoveredLocal3.
    recoveredBlock21Value3 := (recoveredBlock21Value1) indexOfSubCollection: (recoveredBlock21Value2) startingAt: (1).
    recoveredBlock21Value4 := (recoveredBlock21Value3) = (1).
    recoveredBlock21Value4
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

