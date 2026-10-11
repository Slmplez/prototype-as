"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000da8; bytecode file offset 0x8ffcfc"
!EtasSeparatorOption methodsFor: 'recovered'!
updateValue
    ^self
! !

"ASDBase.ic method 0x20001ae0; bytecode file offset 0x8ffcfc"
!EtasSeparatorOption methodsFor: 'recovered'!
updateOptionWidget
    ^self
! !

"ASDBase.ic method 0x200052d8; bytecode file offset 0x90206c"
!EtasSeparatorOption methodsFor: 'recovered'!
value: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20073838; bytecode file offset 0x970b34"
!EtasSeparatorOption methodsFor: 'recovered'!
defaultValue
    ^nil
! !

"ASDBase.ic method 0x20074040; bytecode file offset 0x970b34"
!EtasSeparatorOption methodsFor: 'recovered'!
value
    ^nil
! !

"ASDBase.ic method 0x200778ec; bytecode file offset 0x9757c8"
!EtasSeparatorOption methodsFor: 'recovered'!
isSeperatorOption
    ^true
! !

"ASDBase.ic method 0x2032eb84; bytecode file offset 0xc2b474"
!EtasSeparatorOption methodsFor: 'recovered'!
createEditWidgetInForm: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'seperator'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [:block280ecae4Arg1 | 
    | block280ecae4Value0 block280ecae4Value1 |
    block280ecae4Value0 := block280ecae4Arg1.
    block280ecae4Value1 := (block280ecae4Value0) height: (5).
    block280ecae4Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:block280ecb08Arg1 | 
    | block280ecb08Value0 block280ecb08Value1 block280ecb08Value2 block280ecb08Value3 block280ecb08Value4 block280ecb08Value5 block280ecb08Value6 block280ecb08Value7 block280ecb08Value8 |
    block280ecb08Value0 := block280ecb08Arg1.
    block280ecb08Value1 := block280ecb08Value0.
    block280ecb08Value2 := XmATTACHFORM.
    (block280ecb08Value1) topAttachment: (block280ecb08Value2).
    block280ecb08Value3 := block280ecb08Value0.
    block280ecb08Value4 := XmATTACHFORM.
    (block280ecb08Value3) leftAttachment: (block280ecb08Value4).
    block280ecb08Value5 := block280ecb08Value0.
    block280ecb08Value6 := XmATTACHFORM.
    (block280ecb08Value5) rightAttachment: (block280ecb08Value6).
    block280ecb08Value7 := XmATTACHFORM.
    block280ecb08Value8 := (block280ecb08Value0) bottomAttachment: (block280ecb08Value7).
    block280ecb08Value8
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) widget: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

