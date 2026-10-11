"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20033f74; bytecode file offset 0x934580"
!SGMdExprWithClass methodsFor: 'recovered'!
mdlComponentClassType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlClass.
    recoveredValue1 := (recoveredValue0) mdlComponentClassType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055bc0; bytecode file offset 0x952a9c"
!SGMdExprWithClass methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlExprWithClass: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006b7d8; bytecode file offset 0x96873c"
!SGMdExprWithClass methodsFor: 'recovered'!
mdlClass
    | recoveredValue0 |
    recoveredValue0 := mdlClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073968; bytecode file offset 0x970b34"
!SGMdExprWithClass methodsFor: 'recovered'!
mdlKey
    ^nil
! !

"ASDBase.ic method 0x200c27b8; bytecode file offset 0x9bf474"
!SGMdExprWithClass methodsFor: 'recovered'!
mdlClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mdlClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20195e94; bytecode file offset 0xa9275c"
!SGMdExprWithClass methodsFor: 'recovered'!
setPhysInterval: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleBaseType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
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
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyImplementation.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) mdlClass: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) setPhysInterval: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

