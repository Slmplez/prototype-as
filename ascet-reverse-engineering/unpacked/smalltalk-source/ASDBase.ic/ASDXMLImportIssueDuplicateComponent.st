"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200f0c14; bytecode file offset 0x9ed4d0"
!ASDXMLImportIssueDuplicateComponent methodsFor: 'recovered'!
autofixText
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := component.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlOID.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'Overwrite existing component'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20131be4; bytecode file offset 0xa2e4a8"
!ASDXMLImportIssueDuplicateComponent methodsFor: 'recovered'!
repair: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := component.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := ('Replacing existing component ') , (recoveredValue2).
    (recoveredValue0) logWarning: (recoveredValue3).
    done := true.
    ^true
! !

"ASDBase.ic method 0x20210a38; bytecode file offset 0xb0d308"
!ASDXMLImportIssueDuplicateComponent methodsFor: 'recovered'!
initOn: recoveredArg1 parent: recoveredArg2 namespace: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) name.
    recoveredValue2 := ('Component with name ') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (' already exist').
    recoveredValue4 := recoveredArg1.
    super initOn: (recoveredValue3) item: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    component := recoveredValue5.
    recoveredValue6 := recoveredArg2.
    parent := recoveredValue6.
    recoveredValue7 := recoveredArg3.
    namespace := recoveredValue7.
    issueType := 'warning'.
    ^self
! !

