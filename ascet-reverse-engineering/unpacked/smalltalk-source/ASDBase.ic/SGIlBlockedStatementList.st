"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002c00; bytecode file offset 0x8ffcfc"
!SGIlBlockedStatementList methodsFor: 'recovered'!
asBlockedStatementList
    ^self
! !

"ASDBase.ic method 0x2001eb48; bytecode file offset 0x92209c"
!SGIlBlockedStatementList methodsFor: 'recovered'!
variables
    ^#()
! !

"ASDBase.ic method 0x20055914; bytecode file offset 0x952a9c"
!SGIlBlockedStatementList methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) blockedStatementList: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20075484; bytecode file offset 0x9757c8"
!SGIlBlockedStatementList methodsFor: 'recovered'!
isIleBlockedStmntList
    ^true
! !

"ASDBase.ic method 0x2008fa24; bytecode file offset 0x98c2e8"
!SGIlBlockedStatementList methodsFor: 'recovered'!
asIleOpimizedLabeledStmnt
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) stmntList.
    recoveredValue2 := (recoveredValue0) stmntList: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asIleOpimizedLabeledStmnt.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20186f54; bytecode file offset 0xa83848"
!SGIlBlockedStatementList methodsFor: 'recovered'!
createWithChildren: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) source.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := (self) ileBuilder.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) blockedStmntList: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue3 := (recoveredValue0) useSource: (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20196748; bytecode file offset 0xa9300c"
!SGIlBlockedStatementList methodsFor: 'recovered'!
attributes: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    (self) assertSetterShouldNotBeUsed.
    recoveredValue0 := (self) stmntList.
    recoveredValue1 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := recoveredArg1.
    recoveredBlock8Value2 := (recoveredBlock8Value0) attributes: (recoveredBlock8Value1).
    recoveredBlock8Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20316d60; bytecode file offset 0xc13640"
!SGIlBlockedStatementList methodsFor: 'recovered'!
asIleOptimizedStmntlist
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := (self) ileBuilder.
    recoveredBlock7Value1 := (self) stmntList.
    recoveredBlock7Value2 := (recoveredBlock7Value0) stmntList: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) useSource: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleOptimizedStmntlist.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmntList.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmntList.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) comments.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) stmntList.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) comments.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

