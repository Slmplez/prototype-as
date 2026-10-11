"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200001f4; bytecode file offset 0x4b1b0"
!Application class methodsFor: 'recovered'!
rootApplication
    ^self
! !

"kernel.ic method 0x2000170c; bytecode file offset 0x4c844"
!Application class methodsFor: 'recovered'!
primitiveCurrentlyLoaded
    | recoveredValue0 |
    recoveredValue0 := LoadedApplications.
    ^recoveredValue0
! !

"kernel.ic method 0x20001d70; bytecode file offset 0x4ce64"
!Application class methodsFor: 'recovered'!
rootOfHierarchy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owningImage.
    recoveredValue1 := (recoveredValue0) rootOfApplicationHierarchy.
    ^recoveredValue1
! !

"kernel.ic method 0x200022c8; bytecode file offset 0x4d23c"
!Application class methodsFor: 'recovered'!
currentlyLoaded
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) loadedApplications.
    ^recoveredValue1
! !

"kernel.ic method 0x20002ca8; bytecode file offset 0x4dce4"
!Application class methodsFor: 'recovered'!
primitiveCurrentlyLoaded: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    LoadedApplications := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20003acc; bytecode file offset 0x4e9e0"
!Application class methodsFor: 'recovered'!
recomputeLoaded
    | recoveredValue0 |
    recoveredValue0 := (self) owningImage.
    (recoveredValue0) loadedApplicationsHaveChanged.
    ^self
! !

"kernel.ic method 0x20004360; bytecode file offset 0x4f274"
!Application class methodsFor: 'recovered'!
kernelPrerequisites
    | recoveredValue0 |
    recoveredValue0 := prerequisites.
    ^recoveredValue0
! !

"kernel.ic method 0x20004368; bytecode file offset 0x4f274"
!Application class methodsFor: 'recovered'!
prerequisites
    | recoveredValue0 |
    recoveredValue0 := prerequisites.
    ^recoveredValue0
! !

"kernel.ic method 0x2000437c; bytecode file offset 0x4f290"
!Application class methodsFor: 'recovered'!
kernelDependentApplications
    | recoveredValue0 |
    recoveredValue0 := dependentApplications.
    ^recoveredValue0
! !

"kernel.ic method 0x20004384; bytecode file offset 0x4f290"
!Application class methodsFor: 'recovered'!
dependentApplications
    | recoveredValue0 |
    recoveredValue0 := dependentApplications.
    ^recoveredValue0
! !

"kernel.ic method 0x200044dc; bytecode file offset 0x4f3f8"
!Application class methodsFor: 'recovered'!
parent
    ^nil
! !

"kernel.ic method 0x200045f0; bytecode file offset 0x4f5c4"
!Application class methodsFor: 'recovered'!
isApplication
    ^true
! !

"kernel.ic method 0x20004738; bytecode file offset 0x4f794"
!Application class methodsFor: 'recovered'!
isSubApplication
    ^false
! !

"kernel.ic method 0x20005518; bytecode file offset 0x5043c"
!Application class methodsFor: 'recovered'!
withAllPrerequisites
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) allPrerequisites.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) addFirst: (self).
    ^recoveredValue0
! !

"kernel.ic method 0x20005528; bytecode file offset 0x5043c"
!Application class methodsFor: 'recovered'!
withAllDependentApplications
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) allDependentApplications.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) addFirst: (self).
    ^recoveredValue0
! !

"kernel.ic method 0x20005c98; bytecode file offset 0x50c0c"
!Application class methodsFor: 'recovered'!
rootOfHierarchy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owningImage.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) rootOfApplicationHierarchy: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x20006120; bytecode file offset 0x5102c"
!Application class methodsFor: 'recovered'!
clearAllState
    dependentApplications := nil.
    prerequisites := nil.
    ^self
! !

"kernel.ic method 0x20007178; bytecode file offset 0x52090"
!Application class methodsFor: 'recovered'!
removeDependentApplication: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) dependentApplications.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) copyWithout: (recoveredValue1).
    (self) primitiveDependentApplications: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x20007c0c; bytecode file offset 0x52b18"
!Application class methodsFor: 'recovered'!
primitiveDependentApplications: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dependentApplications := recoveredValue0.
    ^self
! !

"kernel.ic method 0x2000ae74; bytecode file offset 0x55d8c"
!Application class methodsFor: 'recovered'!
prerequisiteNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := prerequisites.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280081ccArg1 | 
    | block280081ccValue0 block280081ccValue1 |
    block280081ccValue0 := block280081ccArg1.
    block280081ccValue1 := (block280081ccValue0) symbol.
    block280081ccValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2000b1a4; bytecode file offset 0x560bc"
!Application class methodsFor: 'recovered'!
initializeApplication
    super initializeApplication.
    dependentApplications := #().
    prerequisites := #().
    ^self
! !

"kernel.ic method 0x20011650; bytecode file offset 0x5c57c"
!Application class methodsFor: 'recovered'!
addDependentApplication: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependentApplications.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) dependentApplications.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := Class.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortBlock.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) primitiveDependentApplications: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20013c00; bytecode file offset 0x5eb44"
!Application class methodsFor: 'recovered'!
allDependentApplicationsWithSubApplications
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) allDependentApplications.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) withAllSubApplications.
    recoveredBlock11Value3 := (recoveredBlock11Value0) addAll: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"kernel.ic method 0x20013c20; bytecode file offset 0x5eb44"
!Application class methodsFor: 'recovered'!
allPrerequisitesWithSubApplications
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) allPrerequisites.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) withAllSubApplications.
    recoveredBlock11Value3 := (recoveredBlock11Value0) addAll: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"kernel.ic method 0x200148ac; bytecode file offset 0x5f7d4"
!Application class methodsFor: 'recovered'!
allLocalClasses
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) withAllSubApplications.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) visiblePublicClasses.
    recoveredBlock11Value3 := (recoveredBlock11Value0) addAll: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) asOrderedCollection.
    ^recoveredValue5
! !

"kernel.ic method 0x20016f20; bytecode file offset 0x61e38"
!Application class methodsFor: 'recovered'!
isBasedOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) prerequisites.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            (recoveredBlock5Stack1 ~~ recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 22] ifFalse: [recoveredBlock5PC := 20].
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack1 := true.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isBasedOn: (recoveredBlock5Stack3).
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 32] ifFalse: [recoveredBlock5PC := 35].
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack1 := true.
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^false
! !

"kernel.ic method 0x2001ac98; bytecode file offset 0x65bc0"
!Application class methodsFor: 'recovered'!
allVisibleClasses
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) withAllPrerequisites.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) publicClasses.
    (recoveredBlock11Value0) addAll: (recoveredBlock11Value2).
    recoveredBlock11Value3 := recoveredBlock11Arg1.
    recoveredBlock11Value4 := (recoveredBlock11Value3) allSubApplications.
    recoveredBlock11Value5 := [:recoveredBlock11Block28Arg1 | 
    | recoveredBlock11Block28Value0 recoveredBlock11Block28Value1 recoveredBlock11Block28Value2 recoveredBlock11Block28Value3 |
    recoveredBlock11Block28Value0 := recoveredLocal1.
    recoveredBlock11Block28Value1 := recoveredBlock11Block28Arg1.
    recoveredBlock11Block28Value2 := (recoveredBlock11Block28Value1) publicClasses.
    recoveredBlock11Block28Value3 := (recoveredBlock11Block28Value0) addAll: (recoveredBlock11Block28Value2).
    recoveredBlock11Block28Value3
].
    recoveredBlock11Value6 := (recoveredBlock11Value4) do: (recoveredBlock11Value5).
    recoveredBlock11Value6
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"kernel.ic method 0x2001eeb8; bytecode file offset 0x69dec"
!Application class methodsFor: 'recovered'!
prerequisites: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asSet.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) prerequisites.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredLocal1.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) includes: (recoveredBlock12Stack3).
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 32] ifFalse: [recoveredBlock12PC := 28].
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack2 := self.
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) removeDependentApplication: (recoveredBlock12Stack2).
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Value0 recoveredBlock38Value1 |
    recoveredBlock38Value0 := recoveredBlock38Arg1.
    recoveredBlock38Value1 := (recoveredBlock38Value0) addDependentApplication: (self).
    recoveredBlock38Value1
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := Class.
    recoveredValue8 := (recoveredValue7) sortBlock.
    recoveredValue9 := (recoveredValue6) asSortedCollection: (recoveredValue8).
    recoveredValue10 := (recoveredValue9) asArray.
    prerequisites := recoveredValue10.
    ^self
! !

"kernel.ic method 0x2002390c; bytecode file offset 0x6e8c4"
!Application class methodsFor: 'recovered'!
kernelAllDependentApplications
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) kernelDependentApplications.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 recoveredBlock27Value5 recoveredBlock27Value6 |
    recoveredBlock27Value0 := recoveredLocal3.
    recoveredBlock27Value1 := recoveredBlock27Arg1.
    recoveredBlock27Value2 := [].
    (recoveredBlock27Value0) remove: (recoveredBlock27Value1) ifAbsent: (recoveredBlock27Value2).
    recoveredBlock27Value3 := recoveredBlock27Arg1.
    recoveredBlock27Value4 := (recoveredBlock27Value3) kernelDependentApplications.
    recoveredBlock27Value5 := [:recoveredBlock27Block44Arg1 | 
    | recoveredBlock27Block44Value0 recoveredBlock27Block44Value1 recoveredBlock27Block44Value2 |
    recoveredBlock27Block44Value0 := recoveredLocal1.
    recoveredBlock27Block44Value1 := recoveredBlock27Block44Arg1.
    recoveredBlock27Block44Value2 := (recoveredBlock27Block44Value0) add: (recoveredBlock27Block44Value1).
    recoveredBlock27Block44Value2
].
    recoveredBlock27Value6 := (recoveredBlock27Value4) do: (recoveredBlock27Value5).
    recoveredBlock27Value6
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := Class.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20023948; bytecode file offset 0x6e8c4"
!Application class methodsFor: 'recovered'!
allPrerequisites
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) prerequisites.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 recoveredBlock27Value5 recoveredBlock27Value6 |
    recoveredBlock27Value0 := recoveredLocal3.
    recoveredBlock27Value1 := recoveredBlock27Arg1.
    recoveredBlock27Value2 := [].
    (recoveredBlock27Value0) remove: (recoveredBlock27Value1) ifAbsent: (recoveredBlock27Value2).
    recoveredBlock27Value3 := recoveredBlock27Arg1.
    recoveredBlock27Value4 := (recoveredBlock27Value3) prerequisites.
    recoveredBlock27Value5 := [:recoveredBlock27Block44Arg1 | 
    | recoveredBlock27Block44Value0 recoveredBlock27Block44Value1 recoveredBlock27Block44Value2 |
    recoveredBlock27Block44Value0 := recoveredLocal1.
    recoveredBlock27Block44Value1 := recoveredBlock27Block44Arg1.
    recoveredBlock27Block44Value2 := (recoveredBlock27Block44Value0) add: (recoveredBlock27Block44Value1).
    recoveredBlock27Block44Value2
].
    recoveredBlock27Value6 := (recoveredBlock27Value4) do: (recoveredBlock27Value5).
    recoveredBlock27Value6
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := Class.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20023984; bytecode file offset 0x6e8c4"
!Application class methodsFor: 'recovered'!
allDependentApplications
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependentApplications.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 recoveredBlock27Value5 recoveredBlock27Value6 |
    recoveredBlock27Value0 := recoveredLocal3.
    recoveredBlock27Value1 := recoveredBlock27Arg1.
    recoveredBlock27Value2 := [].
    (recoveredBlock27Value0) remove: (recoveredBlock27Value1) ifAbsent: (recoveredBlock27Value2).
    recoveredBlock27Value3 := recoveredBlock27Arg1.
    recoveredBlock27Value4 := (recoveredBlock27Value3) dependentApplications.
    recoveredBlock27Value5 := [:recoveredBlock27Block44Arg1 | 
    | recoveredBlock27Block44Value0 recoveredBlock27Block44Value1 recoveredBlock27Block44Value2 |
    recoveredBlock27Block44Value0 := recoveredLocal1.
    recoveredBlock27Block44Value1 := recoveredBlock27Block44Arg1.
    recoveredBlock27Block44Value2 := (recoveredBlock27Block44Value0) add: (recoveredBlock27Block44Value1).
    recoveredBlock27Block44Value2
].
    recoveredBlock27Value6 := (recoveredBlock27Value4) do: (recoveredBlock27Value5).
    recoveredBlock27Value6
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := Class.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

