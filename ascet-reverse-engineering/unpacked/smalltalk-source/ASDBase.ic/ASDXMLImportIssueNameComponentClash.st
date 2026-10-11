"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2009d604; bytecode file offset 0x999ec4"
!ASDXMLImportIssueNameComponentClash methodsFor: 'recovered'!
autofixText
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := protoItem.
    recoveredValue1 := (recoveredValue0) name.
    recoveredValue2 := ('Rename Component ') , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201875f4; bytecode file offset 0xa83ec0"
!ASDXMLImportIssueNameComponentClash methodsFor: 'recovered'!
initOn: recoveredArg1 colliders: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) name.
    recoveredValue2 := ('Duplicated component name ') , (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    super initOn: (recoveredValue2) item: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    colliders := recoveredValue4.
    issueType := 'warning'.
    ^self
! !

"ASDBase.ic method 0x20261190; bytecode file offset 0xb5da64"
!ASDXMLImportIssueNameComponentClash methodsFor: 'recovered'!
repair: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'Rename Component '.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := protoItem.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) logWarning: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            done := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := protoItem.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := protoItem.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := colliders.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := [:block280dfbe4Arg1 | 
    | block280dfbe4Value0 block280dfbe4Value1 |
    block280dfbe4Value0 := block280dfbe4Arg1.
    block280dfbe4Value1 := (block280dfbe4Value0) name.
    block280dfbe4Value1
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) uniqueStringFor: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

