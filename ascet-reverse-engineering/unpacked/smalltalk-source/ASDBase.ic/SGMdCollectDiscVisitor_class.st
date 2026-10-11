"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200ccf28; bytecode file offset 0x9c97f0"
!SGMdCollectDiscVisitor class methodsFor: 'recovered'!
register
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGMdMethodBuilder.
    recoveredValue1 := (recoveredValue0) additionalMethodAnalysisVisitors.
    recoveredValue2 := SGMdCollectDiscVisitor.
    recoveredValue3 := (recoveredValue2) create.
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200f0024; bytecode file offset 0x9ec8e8"
!SGMdCollectDiscVisitor class methodsFor: 'recovered'!
resetTests
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    Tests := recoveredValue1.
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    TemplateTests := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2010525c; bytecode file offset 0xa01b38"
!SGMdCollectDiscVisitor class methodsFor: 'recovered'!
templateTests
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := TemplateTests.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) resetTests.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := TemplateTests.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010527c; bytecode file offset 0xa01b38"
!SGMdCollectDiscVisitor class methodsFor: 'recovered'!
tests
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Tests.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) resetTests.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := Tests.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

