"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20054954; bytecode file offset 0x952a9c"
!SGMdAnnotatedNode methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlAnnotatedNode: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c1dec; bytecode file offset 0x9beac8"
!SGMdAnnotatedNode methodsFor: 'recovered'!
attributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attributes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20115d70; bytecode file offset 0xa12628"
!SGMdAnnotatedNode methodsFor: 'recovered'!
attributes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := attributes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultLimitAdaptationAttributes.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            attributes := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := attributes.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

