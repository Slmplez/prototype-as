"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000cf4c; bytecode file offset 0x909ab8"
!RBSeparatorEntry methodsFor: 'recovered'!
createEditPolicyOn: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2002114c; bytecode file offset 0x92209c"
!RBSeparatorEntry methodsFor: 'recovered'!
name
    ^'------------------------------------------------------------------------'
! !

"ASDBase.ic method 0x200cfd38; bytecode file offset 0x9cc5fc"
!RBSeparatorEntry methodsFor: 'recovered'!
userField
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280c3264Arg1 | 
    nil
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2035e3a8; bytecode file offset 0xc5ac90"
!RBSeparatorEntry methodsFor: 'recovered'!
createEditWidgetOn: recoveredArg1 color: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'separator'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := recoveredBlock9Value0.
    (recoveredBlock9Value1) height: (5).
    recoveredBlock9Value2 := recoveredArg2.
    recoveredBlock9Value3 := (recoveredBlock9Value0) foregroundColor: (recoveredBlock9Value2).
    recoveredBlock9Value3
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [:block280f0444Arg1 | 
    | block280f0444Value0 block280f0444Value1 block280f0444Value2 block280f0444Value3 block280f0444Value4 block280f0444Value5 block280f0444Value6 block280f0444Value7 |
    block280f0444Value0 := block280f0444Arg1.
    block280f0444Value1 := block280f0444Value0.
    block280f0444Value2 := XmATTACHPOSITION.
    (block280f0444Value1) topAttachment: (block280f0444Value2).
    block280f0444Value3 := block280f0444Value0.
    (block280f0444Value3) topOffset: (50).
    block280f0444Value4 := block280f0444Value0.
    block280f0444Value5 := XmATTACHFORM.
    (block280f0444Value4) rightAttachment: (block280f0444Value5).
    block280f0444Value6 := XmATTACHFORM.
    block280f0444Value7 := (block280f0444Value0) leftAttachment: (block280f0444Value6).
    block280f0444Value7
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

