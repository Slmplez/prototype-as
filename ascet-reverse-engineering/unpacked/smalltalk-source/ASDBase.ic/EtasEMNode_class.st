"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200138a8; bytecode file offset 0x912098"
!EtasEMNode class methodsFor: 'recovered'!
HierarchicalNames
    | recoveredValue0 |
    recoveredValue0 := HierarchicalNames.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001cb74; bytecode file offset 0x92209c"
!EtasEMNode class methodsFor: 'recovered'!
asd21TreeSeparator
    ^'\'
! !

"ASDBase.ic method 0x20020270; bytecode file offset 0x92209c"
!EtasEMNode class methodsFor: 'recovered'!
asap2TreeSeparator
    ^'.'
! !

"ASDBase.ic method 0x20054134; bytecode file offset 0x951190"
!EtasEMNode class methodsFor: 'recovered'!
HierarchicalNames: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    HierarchicalNames := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200838ac; bytecode file offset 0x980230"
!EtasEMNode class methodsFor: 'recovered'!
createFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createFor: (recoveredValue0) parent: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200eb48c; bytecode file offset 0x9e7d4c"
!EtasEMNode class methodsFor: 'recovered'!
createFor: recoveredArg1 parent: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := ('hw') == ('call_83379').
    (self) etasDevHalt.
    ^self
! !

"ASDBase.ic method 0x200efff4; bytecode file offset 0x9ec8e8"
!EtasEMNode class methodsFor: 'recovered'!
resetExImportNodes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    Exported := recoveredValue1.
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    Imported := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x204f54d4; bytecode file offset 0xdf1de4"
!EtasEMNode class methodsFor: 'recovered'!
createFor: recoveredArg1 parent: recoveredArg2 visitedReferences: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) elementName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPrimitive.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRecordElement.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := EtasEMPrimRecordNode.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isImported.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := EtasEMPrimImportNode.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := EtasEMPrimNode.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) initialize.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack2) parent: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack2) reference: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack2) label: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) isExported.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := Exported.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 169.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 169] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRecordElement.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := EtasEMRecordNode.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := EtasEMNode.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack2) initialize.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack2) parent: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack2) reference: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack2) label: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) isExported.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 139].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := Exported.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) isImported.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := Imported.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredPC := 167.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := 'call_83379'.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := 'call_83609'.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack1) nextLevelVisitedReferences: (recoveredStack2).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

