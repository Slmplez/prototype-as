"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002628; bytecode file offset 0x8ffcfc"
!EtasAbstractBrowseWidgetSubstitution methodsFor: 'recovered'!
reference
    ^self
! !

"ASDBase.ic method 0x2002eac4; bytecode file offset 0x934580"
!EtasAbstractBrowseWidgetSubstitution methodsFor: 'recovered'!
memoryLocationSearchResultAvailable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sourceElement.
    recoveredValue1 := (recoveredValue0) isLocationSearchResultAvailable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034434; bytecode file offset 0x934580"
!EtasAbstractBrowseWidgetSubstitution methodsFor: 'recovered'!
sgClassLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := (recoveredValue0) label.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040474; bytecode file offset 0x93d278"
!EtasAbstractBrowseWidgetSubstitution methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := sourceElement.
    recoveredValue1 := (recoveredValue0) hash.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20053b5c; bytecode file offset 0x9505d0"
!EtasAbstractBrowseWidgetSubstitution methodsFor: 'recovered'!
getValueFor: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20066484; bytecode file offset 0x963428"
!EtasAbstractBrowseWidgetSubstitution methodsFor: 'recovered'!
sourceElement
    | recoveredValue0 |
    recoveredValue0 := sourceElement.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20083cc0; bytecode file offset 0x980578"
!EtasAbstractBrowseWidgetSubstitution methodsFor: 'recovered'!
= recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) sourceElement.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bddd4; bytecode file offset 0x9bb178"
!EtasAbstractBrowseWidgetSubstitution methodsFor: 'recovered'!
sourceElement: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sourceElement := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf058; bytecode file offset 0x9bc0b4"
!EtasAbstractBrowseWidgetSubstitution methodsFor: 'recovered'!
elementName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    elementName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c008c; bytecode file offset 0x9bd228"
!EtasAbstractBrowseWidgetSubstitution methodsFor: 'recovered'!
sgClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sgClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0d30; bytecode file offset 0x9bdf14"
!EtasAbstractBrowseWidgetSubstitution methodsFor: 'recovered'!
sortedLabelCache: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sortedLabelCache := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ff62c; bytecode file offset 0x9fbee8"
!EtasAbstractBrowseWidgetSubstitution methodsFor: 'recovered'!
doesNotUnderstand: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceElement.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) sendTo: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013aab8; bytecode file offset 0xa37378"
!EtasAbstractBrowseWidgetSubstitution methodsFor: 'recovered'!
elementName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := elementName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) sourceElement.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) elementName: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := elementName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013aca0; bytecode file offset 0xa37560"
!EtasAbstractBrowseWidgetSubstitution methodsFor: 'recovered'!
sgClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sgClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) sourceElement.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) sgClass: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := sgClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013ae60; bytecode file offset 0xa37748"
!EtasAbstractBrowseWidgetSubstitution methodsFor: 'recovered'!
sortedLabelCache
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sortedLabelCache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := LookupTable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) sortedLabelCache: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := sortedLabelCache.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013fe34; bytecode file offset 0xa3c6f8"
!EtasAbstractBrowseWidgetSubstitution methodsFor: 'recovered'!
notebookWidgetLabel
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMethodElement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceElement.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014a930; bytecode file offset 0xa471f0"
!EtasAbstractBrowseWidgetSubstitution methodsFor: 'recovered'!
implementationFor: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) sourceElement.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) configForElement: (recoveredStack2).
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
            recoveredStack0 := (recoveredStack0) getValueFor: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014f304; bytecode file offset 0xa4bbd0"
!EtasAbstractBrowseWidgetSubstitution methodsFor: 'recovered'!
label
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280cced0Arg1 | 
    | block280cced0Value0 block280cced0Value1 |
    block280cced0Value0 := block280cced0Arg1.
    block280cced0Value1 := (block280cced0Value0) elementName.
    block280cced0Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := SGReservedNames.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) undefName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015a9f8; bytecode file offset 0xa572b8"
!EtasAbstractBrowseWidgetSubstitution methodsFor: 'recovered'!
sgClassIfUndefined: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'call_95703'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015e730; bytecode file offset 0xa5affc"
!EtasAbstractBrowseWidgetSubstitution methodsFor: 'recovered'!
memoryLocationRefAvailable
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Kk') == ('Call_70323').
    recoveredValue1 := ('hw') == ('call_82549').
    recoveredValue2 := (self) sourceElement.
    recoveredValue3 := (recoveredValue2) isReferenceAPI.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201f0ef8; bytecode file offset 0xaed7c4"
!EtasAbstractBrowseWidgetSubstitution methodsFor: 'recovered'!
memoryLocationInstAvailable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_70323'.
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
            recoveredStack1 := 'hw'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'call_82549'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceElement.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceElement.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInstanceAPI.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035b660; bytecode file offset 0xc57f34"
!EtasAbstractBrowseWidgetSubstitution methodsFor: 'recovered'!
implementationFor: recoveredArg1 element: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) configForElement: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isImplementationType.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 26] ifFalse: [recoveredBlock11PC := 56].
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack1 := recoveredArg1.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) context.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) makeConfig.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) sgClass.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack2 := [:recoveredBlock11Block33Arg1 | 
    | recoveredBlock11Block33Stack0 recoveredBlock11Block33Stack1 recoveredBlock11Block33Stack2 recoveredBlock11Block33Stack3 recoveredBlock11Block33Stack4 recoveredBlock11Block33PC recoveredBlock11Block33Step recoveredBlock11Block33Done recoveredBlock11Block33Result |
    recoveredBlock11Block33Stack0 := self.
    recoveredBlock11Block33PC := 40.
    recoveredBlock11Block33Done := false.
    [recoveredBlock11Block33Done not] whileTrue: [
        recoveredBlock11Block33Step := recoveredBlock11Block33PC.
        recoveredBlock11Block33Step = 40 ifTrue: [
            recoveredBlock11Block33Stack1 := nil.
            recoveredBlock11Block33PC := 41.
        ].
        recoveredBlock11Block33Step = 41 ifTrue: [
            recoveredBlock11Block33Stack2 := recoveredBlock11Block33Arg1.
            recoveredBlock11Block33PC := 42.
        ].
        recoveredBlock11Block33Step = 42 ifTrue: [
            recoveredBlock11Block33Stack3 := recoveredBlock11Arg1.
            recoveredBlock11Block33PC := 45.
        ].
        recoveredBlock11Block33Step = 45 ifTrue: [
            recoveredBlock11Block33Stack2 := (recoveredBlock11Block33Stack2) updateImplementationTypeInDataElement: (recoveredBlock11Block33Stack3).
            recoveredBlock11Block33PC := 47.
        ].
        recoveredBlock11Block33Step = 47 ifTrue: [
            (recoveredBlock11Block33Stack2 ~~ nil) ifTrue: [recoveredBlock11Block33PC := 53] ifFalse: [recoveredBlock11Block33PC := 50].
        ].
        recoveredBlock11Block33Step = 50 ifTrue: [
            recoveredBlock11Block33PC := 51.
        ].
        recoveredBlock11Block33Step = 51 ifTrue: [
            recoveredBlock11Block33Stack1 := nil.
            recoveredBlock11Block33PC := 52.
        ].
        recoveredBlock11Block33Step = 52 ifTrue: [
            ^recoveredBlock11Block33Stack1
        ].
        recoveredBlock11Block33Step = 53 ifTrue: [
            recoveredBlock11Block33Result := recoveredBlock11Block33Stack1.
            recoveredBlock11Block33Done := true.
        ].
    ].
    recoveredBlock11Block33Result
].
            recoveredBlock11PC := 54.
        ].
        recoveredBlock11Step = 54 ifTrue: [
            (recoveredBlock11Stack1) ifNotNil: (recoveredBlock11Stack2).
            recoveredBlock11PC := 56.
        ].
        recoveredBlock11Step = 56 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 59.
        ].
        recoveredBlock11Step = 59 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) getValueFor: (recoveredBlock11Stack1).
            recoveredBlock11PC := 61.
        ].
        recoveredBlock11Step = 61 ifTrue: [
            ^recoveredBlock11Stack0
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    ^nil
! !

"ASDBase.ic method 0x2037ebf0; bytecode file offset 0xc7b4c4"
!EtasAbstractBrowseWidgetSubstitution methodsFor: 'recovered'!
memoryLocationInfoFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceElement.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceElement.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReference.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceElement.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPrimitive.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceElement.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRecord.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceElement.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOrCreateAdditionalImplInfo: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceElement.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) configForElement: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) getValueFor: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

