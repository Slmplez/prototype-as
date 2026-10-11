"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004aa00; bytecode file offset 0x9472b4"
!SGBdlNode methodsFor: 'recovered'!
setExpanded
    expanded := true.
    ^self
! !

"ASDBase.ic method 0x20062ab4; bytecode file offset 0x95f8b0"
!SGBdlNode methodsFor: 'recovered'!
allDependents
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) hardDependents.
    recoveredValue1 := (self) softDependents.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200659cc; bytecode file offset 0x963428"
!SGBdlNode methodsFor: 'recovered'!
hardPrerequisites
    | recoveredValue0 |
    recoveredValue0 := hardPrerequisites.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066f9c; bytecode file offset 0x9646f8"
!SGBdlNode methodsFor: 'recovered'!
softPrerequisites
    | recoveredValue0 |
    recoveredValue0 := softPrerequisites.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200692cc; bytecode file offset 0x965b90"
!SGBdlNode methodsFor: 'recovered'!
hardDependents
    | recoveredValue0 |
    recoveredValue0 := hardDependents.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069ea8; bytecode file offset 0x966bdc"
!SGBdlNode methodsFor: 'recovered'!
softDependents
    | recoveredValue0 |
    recoveredValue0 := softDependents.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006aff4; bytecode file offset 0x967a18"
!SGBdlNode methodsFor: 'recovered'!
graph
    | recoveredValue0 |
    recoveredValue0 := graph.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b390; bytecode file offset 0x96873c"
!SGBdlNode methodsFor: 'recovered'!
level
    | recoveredValue0 |
    recoveredValue0 := level.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c92c; bytecode file offset 0x9692b0"
!SGBdlNode methodsFor: 'recovered'!
isExpanded
    | recoveredValue0 |
    recoveredValue0 := expanded.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cc78; bytecode file offset 0x969c04"
!SGBdlNode methodsFor: 'recovered'!
graphicElement
    | recoveredValue0 |
    recoveredValue0 := graphicElement.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d85c; bytecode file offset 0x96a390"
!SGBdlNode methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dbc8; bytecode file offset 0x96a9dc"
!SGBdlNode methodsFor: 'recovered'!
valid
    | recoveredValue0 |
    recoveredValue0 := valid.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20083200; bytecode file offset 0x97fab4"
!SGBdlNode methodsFor: 'recovered'!
level: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    level := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200976f4; bytecode file offset 0x995850"
!SGBdlNode methodsFor: 'recovered'!
addSoftDependent: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) softDependents.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200988a4; bytecode file offset 0x995850"
!SGBdlNode methodsFor: 'recovered'!
addHardDependent: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) hardDependents.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200be4fc; bytecode file offset 0x9bb178"
!SGBdlNode methodsFor: 'recovered'!
hardPrerequisites: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hardPrerequisites := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c185c; bytecode file offset 0x9beac8"
!SGBdlNode methodsFor: 'recovered'!
graph: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    graph := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3988; bytecode file offset 0x9c058c"
!SGBdlNode methodsFor: 'recovered'!
graphicElement: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    graphicElement := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3f44; bytecode file offset 0x9c0bf0"
!SGBdlNode methodsFor: 'recovered'!
label: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    label := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4710; bytecode file offset 0x9c11bc"
!SGBdlNode methodsFor: 'recovered'!
valid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    valid := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ead48; bytecode file offset 0x9e7644"
!SGBdlNode methodsFor: 'recovered'!
addHardPrerequisite: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) hardPrerequisites.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) addHardDependent: (self).
    ^self
! !

"ASDBase.ic method 0x200ead5c; bytecode file offset 0x9e7644"
!SGBdlNode methodsFor: 'recovered'!
addSoftPrerequisite: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) softPrerequisites.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) addSoftDependent: (self).
    ^self
! !

"ASDBase.ic method 0x200f93a4; bytecode file offset 0x9f5ca0"
!SGBdlNode methodsFor: 'recovered'!
errLabel
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicElement.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) errLabel.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010a3bc; bytecode file offset 0xa06c88"
!SGBdlNode methodsFor: 'recovered'!
id
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicElement.
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
            recoveredStack0 := (recoveredStack0) graphicElement.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) id.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010a49c; bytecode file offset 0xa06d58"
!SGBdlNode methodsFor: 'recovered'!
getDirectInput
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack0 := (recoveredStack0) graphicElement.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDirectInput.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20136bf8; bytecode file offset 0xa334bc"
!SGBdlNode methodsFor: 'recovered'!
findCycle
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := LookupTable.
    recoveredValue4 := (recoveredValue3) new.
    (self) findCycle: (recoveredValue2) with: (self) visited: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20155d2c; bytecode file offset 0xa52608"
!SGBdlNode methodsFor: 'recovered'!
removeHardDependent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) hardDependents.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) fatalExpect: ('dependent node').
    recoveredBlock6Value0
].
    (recoveredValue0) remove: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20170578; bytecode file offset 0xa6ce40"
!SGBdlNode methodsFor: 'recovered'!
isCTDirectOutputMethodNode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) graphicElement.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isDirectOutput.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphicElement.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) nondirectOutputMethodName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodNameIs: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20176cec; bytecode file offset 0xa735b0"
!SGBdlNode methodsFor: 'recovered'!
numberSequence: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) valid.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicElement.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) numberSequence: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicElement.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) resetSequence.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201867e0; bytecode file offset 0xa830a8"
!SGBdlNode methodsFor: 'recovered'!
removeHardPrerequisites: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hardPrerequisites.
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
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) hardPrerequisites.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) removeHardDependent: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d710c; bytecode file offset 0xad39d8"
!SGBdlNode methodsFor: 'recovered'!
markAsInvalid
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) valid.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) hardDependents.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280d5978Arg1 | 
    | block280d5978Value0 block280d5978Value1 block280d5978Value2 |
    block280d5978Value0 := block280d5978Arg1.
    (block280d5978Value0) valid: (false).
    block280d5978Value1 := block280d5978Arg1.
    block280d5978Value2 := (block280d5978Value1) markAsInvalid.
    block280d5978Value2
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x20296e0c; bytecode file offset 0xb936d0"
!SGBdlNode methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    hardDependents := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    hardPrerequisites := recoveredValue3.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    softDependents := recoveredValue5.
    recoveredValue6 := OrderedCollection.
    recoveredValue7 := (recoveredValue6) new.
    softPrerequisites := recoveredValue7.
    expanded := false.
    valid := true.
    level := 0.
    label := 0.
    ^self
! !

"ASDBase.ic method 0x202d9bd4; bytecode file offset 0xbd64ac"
!SGBdlNode methodsFor: 'recovered'!
expandRecursiveForAnalyzeUnit: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExpanded.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) graph.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkForCycle: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) graph.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) beginSubGraph: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) expandForAnalyzeUnit: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) hardPrerequisites.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := recoveredBlock27Arg1.
    recoveredBlock27Value1 := recoveredArg1.
    recoveredBlock27Value2 := (recoveredBlock27Value0) expandRecursiveForAnalyzeUnit: (recoveredBlock27Value1).
    recoveredBlock27Value2
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) graph.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) endSubGraph: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203003d8; bytecode file offset 0xbfccbc"
!SGBdlNode methodsFor: 'recovered'!
expandForAnalyzeUnit: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExpanded.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicElement.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) collectHardPrerequisitesIn: (recoveredStack1) forAnalyzingUnit: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:block280e9694Arg1 | 
    | block280e9694Value0 block280e9694Value1 |
    block280e9694Value0 := block280e9694Arg1.
    block280e9694Value1 := (block280e9694Value0) isNil.
    block280e9694Value1
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 |
    recoveredBlock31Value0 := (self) graph.
    recoveredBlock31Value1 := recoveredBlock31Arg1.
    recoveredBlock31Value2 := (recoveredBlock31Value0) nodeFor: (recoveredBlock31Value1).
    recoveredBlock31Value3 := (self) addHardPrerequisite: (recoveredBlock31Value2).
    recoveredBlock31Value3
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) setExpanded.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20315714; bytecode file offset 0xc11fec"
!SGBdlNode methodsFor: 'recovered'!
expandRecursiveForSequencingUnit: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExpanded.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) graph.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkForCycle: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) graph.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) beginSubGraph: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) expandForSequencingUnit: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) hardPrerequisites.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Stack0 recoveredBlock27Stack1 recoveredBlock27Stack2 recoveredBlock27Stack3 recoveredBlock27PC recoveredBlock27Step recoveredBlock27Done recoveredBlock27Result |
    recoveredBlock27Stack0 := self.
    recoveredBlock27PC := 34.
    recoveredBlock27Done := false.
    [recoveredBlock27Done not] whileTrue: [
        recoveredBlock27Step := recoveredBlock27PC.
        recoveredBlock27Step = 34 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 35.
        ].
        recoveredBlock27Step = 35 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 36.
        ].
        recoveredBlock27Step = 36 ifTrue: [
            (recoveredBlock27Stack2 == nil) ifTrue: [recoveredBlock27PC := 47] ifFalse: [recoveredBlock27PC := 40].
        ].
        recoveredBlock27Step = 40 ifTrue: [
            recoveredBlock27PC := 41.
        ].
        recoveredBlock27Step = 41 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Arg1.
            recoveredBlock27PC := 42.
        ].
        recoveredBlock27Step = 42 ifTrue: [
            recoveredBlock27Stack2 := recoveredArg1.
            recoveredBlock27PC := 45.
        ].
        recoveredBlock27Step = 45 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) expandRecursiveForSequencingUnit: (recoveredBlock27Stack2).
            recoveredBlock27PC := 47.
        ].
        recoveredBlock27Step = 47 ifTrue: [
            recoveredBlock27Result := recoveredBlock27Stack1.
            recoveredBlock27Done := true.
        ].
    ].
    recoveredBlock27Result
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) graph.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) endSubGraph: (recoveredStack1).
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

"ASDBase.ic method 0x2031d4e8; bytecode file offset 0xc19dc8"
!SGBdlNode methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    recoveredValue3 := (self) level.
    recoveredValue4 := (recoveredValue3) asString.
    recoveredValue5 := ('level: ') , (recoveredValue4).
    (recoveredValue1) nextPutAll: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredValue6.
    (recoveredValue7) cr.
    (recoveredValue6) nextPutAll: ('-->').
    recoveredValue8 := (self) graphicElement.
    recoveredValue9 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 |
    recoveredBlock41Value0 := recoveredBlock41Arg1.
    recoveredBlock41Value1 := recoveredArg1.
    recoveredBlock41Value2 := (recoveredBlock41Value0) printOn: (recoveredBlock41Value1).
    recoveredBlock41Value2
].
    (recoveredValue8) ifNotNil: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x203f36f8; bytecode file offset 0xceffc4"
!SGBdlNode methodsFor: 'recovered'!
findCycle: recoveredArg1 with: recoveredArg2 visited: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredArg3.
    recoveredBlock8Value1 := (recoveredBlock8Value0) size.
    recoveredBlock8Value1
].
    recoveredValue2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 |
    recoveredBlock19Value0 := recoveredArg1.
    (recoveredBlock19Value0) add: (self).
    ^true
].
    (recoveredValue0) at: (self) ifAbsentPut: (recoveredValue1) ifPresent: (recoveredValue2).
    recoveredValue3 := (self) hardPrerequisites.
    recoveredValue4 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38Stack4 recoveredBlock38Stack5 recoveredBlock38Stack6 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Arg1.
            recoveredBlock38PC := 45.
        ].
        recoveredBlock38Step = 45 ifTrue: [
            recoveredBlock38Stack2 := recoveredArg2.
            recoveredBlock38PC := 48.
        ].
        recoveredBlock38Step = 48 ifTrue: [
            (recoveredBlock38Stack1 ~~ recoveredBlock38Stack2) ifTrue: [recoveredBlock38PC := 60] ifFalse: [recoveredBlock38PC := 52].
        ].
        recoveredBlock38Step = 52 ifTrue: [
            recoveredBlock38Stack1 := recoveredArg1.
            recoveredBlock38PC := 55.
        ].
        recoveredBlock38Step = 55 ifTrue: [
            recoveredBlock38Stack2 := self.
            recoveredBlock38PC := 56.
        ].
        recoveredBlock38Step = 56 ifTrue: [
            (recoveredBlock38Stack1) add: (recoveredBlock38Stack2).
            recoveredBlock38PC := 58.
        ].
        recoveredBlock38Step = 58 ifTrue: [
            recoveredBlock38Stack1 := true.
            recoveredBlock38PC := 59.
        ].
        recoveredBlock38Step = 59 ifTrue: [
            ^recoveredBlock38Stack1
        ].
        recoveredBlock38Step = 60 ifTrue: [
            recoveredBlock38Stack1 := nil.
            recoveredBlock38PC := 61.
        ].
        recoveredBlock38Step = 61 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 62.
        ].
        recoveredBlock38Step = 62 ifTrue: [
            recoveredBlock38Stack3 := recoveredArg1.
            recoveredBlock38PC := 65.
        ].
        recoveredBlock38Step = 65 ifTrue: [
            recoveredBlock38Stack4 := recoveredArg2.
            recoveredBlock38PC := 68.
        ].
        recoveredBlock38Step = 68 ifTrue: [
            recoveredBlock38Stack5 := recoveredArg3.
            recoveredBlock38PC := 71.
        ].
        recoveredBlock38Step = 71 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) findCycle: (recoveredBlock38Stack3) with: (recoveredBlock38Stack4) visited: (recoveredBlock38Stack5).
            recoveredBlock38PC := 74.
        ].
        recoveredBlock38Step = 74 ifTrue: [
            (recoveredBlock38Stack2) ifTrue: [recoveredBlock38PC := 78] ifFalse: [recoveredBlock38PC := 87].
        ].
        recoveredBlock38Step = 78 ifTrue: [
            recoveredBlock38PC := 79.
        ].
        recoveredBlock38Step = 79 ifTrue: [
            recoveredBlock38Stack1 := recoveredArg1.
            recoveredBlock38PC := 82.
        ].
        recoveredBlock38Step = 82 ifTrue: [
            recoveredBlock38Stack2 := self.
            recoveredBlock38PC := 83.
        ].
        recoveredBlock38Step = 83 ifTrue: [
            (recoveredBlock38Stack1) add: (recoveredBlock38Stack2).
            recoveredBlock38PC := 85.
        ].
        recoveredBlock38Step = 85 ifTrue: [
            recoveredBlock38Stack1 := true.
            recoveredBlock38PC := 86.
        ].
        recoveredBlock38Step = 86 ifTrue: [
            ^recoveredBlock38Stack1
        ].
        recoveredBlock38Step = 87 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack1.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
    (recoveredValue3) do: (recoveredValue4).
    ^false
! !

"ASDBase.ic method 0x2046a3a8; bytecode file offset 0xd66cac"
!SGBdlNode methodsFor: 'recovered'!
expandForSequencingUnit: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExpanded.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicElement.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) collectHardPrerequisitesIn: (recoveredStack1) forSequencingUnit: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) graph.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:block28101014Arg1 | 
    | block28101014Value0 block28101014Value1 |
    block28101014Value0 := block28101014Arg1.
    block28101014Value1 := (block28101014Value0) isNil.
    block28101014Value1
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSelectedElements: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 recoveredBlock37Value3 |
    recoveredBlock37Value0 := (self) graph.
    recoveredBlock37Value1 := recoveredBlock37Arg1.
    recoveredBlock37Value2 := (recoveredBlock37Value0) nodeFor: (recoveredBlock37Value1).
    recoveredBlock37Value3 := (self) addHardPrerequisite: (recoveredBlock37Value2).
    recoveredBlock37Value3
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicElement.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) collectSoftPrerequisitesIn: (recoveredStack1) forUnit: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) graph.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := [:block28101038Arg1 | 
    | block28101038Value0 block28101038Value1 |
    block28101038Value0 := block28101038Arg1.
    block28101038Value1 := (block28101038Value0) isNil.
    block28101038Value1
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSelectedElements: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := [:recoveredBlock81Arg1 | 
    | recoveredBlock81Value0 recoveredBlock81Value1 recoveredBlock81Value2 recoveredBlock81Value3 |
    recoveredBlock81Value0 := (self) graph.
    recoveredBlock81Value1 := recoveredBlock81Arg1.
    recoveredBlock81Value2 := (recoveredBlock81Value0) nodeFor: (recoveredBlock81Value1).
    recoveredBlock81Value3 := (self) addSoftPrerequisite: (recoveredBlock81Value2).
    recoveredBlock81Value3
].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicElement.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) logicModel.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentMethod.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkValidity: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) valid: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) setExpanded.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f76c8; bytecode file offset 0xdf4000"
!SGBdlNode methodsFor: 'recovered'!
isDirectInput
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) block.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBdlDataBlock.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataModelRef.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTOutput.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataModelRef.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClassKey.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGOneDCharTable.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClassKey.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGTwoDCharTable.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) hardDependents.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [:block28109db0Arg1 | 
    | block28109db0Value0 block28109db0Value1 |
    block28109db0Value0 := block28109db0Arg1.
    block28109db0Value1 := (block28109db0Value0) isDirectInput.
    block28109db0Value1
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTClass.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCClass.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) isASDLClass.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDirect.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicModel.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := [:block28109dd4Arg1 | 
    | block28109dd4Value0 block28109dd4Value1 |
    block28109dd4Value0 := block28109dd4Arg1.
    block28109dd4Value1 := (block28109dd4Value0) isOperatorBlock.
    block28109dd4Value1
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := [:recoveredBlock110Arg1 | 
    | recoveredBlock110Value0 recoveredBlock110Value1 recoveredBlock110Value2 recoveredBlock110Value3 recoveredBlock110Value4 |
    recoveredBlock110Value0 := recoveredBlock110Arg1.
    recoveredBlock110Value1 := (recoveredBlock110Value0) dataModelAliasName.
    recoveredBlock110Value2 := (self) graphicElement.
    recoveredBlock110Value3 := (recoveredBlock110Value2) aliasName.
    recoveredBlock110Value4 := (recoveredBlock110Value1) = (recoveredBlock110Value3).
    recoveredBlock110Value4
].
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := 'get'.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) portNamed: (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) directInput.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 148 ifTrue: [
            recoveredPC := 170.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) hardDependents.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := [:block28109df8Arg1 | 
    | block28109df8Value0 block28109df8Value1 |
    block28109df8Value0 := block28109df8Arg1.
    block28109df8Value1 := (block28109df8Value0) isDirectInput.
    block28109df8Value1
].
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

