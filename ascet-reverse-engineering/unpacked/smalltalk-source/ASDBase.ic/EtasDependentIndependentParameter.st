"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20008174; bytecode file offset 0x908be4"
!EtasDependentIndependentParameter methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := (self) newValue.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20051808; bytecode file offset 0x94f0e0"
!EtasDependentIndependentParameter methodsFor: 'recovered'!
getModelName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) simNode.
    recoveredValue1 := (recoveredValue0) getModelElement.
    recoveredValue2 := (recoveredValue1) getName.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200664f4; bytecode file offset 0x963428"
!EtasDependentIndependentParameter methodsFor: 'recovered'!
simNode
    | recoveredValue0 |
    recoveredValue0 := simNode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006821c; bytecode file offset 0x965b90"
!EtasDependentIndependentParameter methodsFor: 'recovered'!
influencedParameters
    | recoveredValue0 |
    recoveredValue0 := influencedParameters.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069c88; bytecode file offset 0x966bdc"
!EtasDependentIndependentParameter methodsFor: 'recovered'!
dpMananger
    | recoveredValue0 |
    recoveredValue0 := dpMananger.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20084b04; bytecode file offset 0x981ca4"
!EtasDependentIndependentParameter methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) newValue: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200982a4; bytecode file offset 0x995850"
!EtasDependentIndependentParameter methodsFor: 'recovered'!
addInfluencedParameter: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) influencedParameters.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009cd04; bytecode file offset 0x999628"
!EtasDependentIndependentParameter methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) influencedParameters: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bdb5c; bytecode file offset 0x9bb178"
!EtasDependentIndependentParameter methodsFor: 'recovered'!
simNode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    simNode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200becf8; bytecode file offset 0x9bc0b4"
!EtasDependentIndependentParameter methodsFor: 'recovered'!
newValue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    newValue := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfa14; bytecode file offset 0x9bd228"
!EtasDependentIndependentParameter methodsFor: 'recovered'!
influencedParameters: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    influencedParameters := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0dd0; bytecode file offset 0x9bdf14"
!EtasDependentIndependentParameter methodsFor: 'recovered'!
dpMananger: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dpMananger := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2011dfbc; bytecode file offset 0xa1a874"
!EtasDependentIndependentParameter methodsFor: 'recovered'!
valueConsistsOfDataElement: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := newValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := newValue.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) consistsOfDataElement: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013ab48; bytecode file offset 0xa3740c"
!EtasDependentIndependentParameter methodsFor: 'recovered'!
newValue
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := newValue.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := (self) dpMananger.
    recoveredBlock6Value1 := (recoveredBlock6Value0) experiment.
    recoveredBlock6Value2 := (self) getDataElementFromExperiment: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20245f64; bytecode file offset 0xb42834"
!EtasDependentIndependentParameter methodsFor: 'recovered'!
getDataElementFromExperiment: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) simNode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExistingDataElementForNode: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDataElementForNode: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferenceData.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) vc.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) updateWithConfig: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) newValue: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025a184; bytecode file offset 0xb56a54"
!EtasDependentIndependentParameter methodsFor: 'recovered'!
allInfluencedParameters
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) influencedParameters.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) allInfluencedParameters.
    (recoveredBlock11Value0) addAll: (recoveredBlock11Value2).
    recoveredBlock11Value3 := recoveredLocal1.
    recoveredBlock11Value4 := recoveredBlock11Arg1.
    recoveredBlock11Value5 := (recoveredBlock11Value3) add: (recoveredBlock11Value4).
    recoveredBlock11Value5
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

