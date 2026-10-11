"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015c50; bytecode file offset 0x92209c"
!SGElement class methodsFor: 'recovered'!
policyValueStandard
    ^'STANDARD'
! !

"ASDBase.ic method 0x2001b5b4; bytecode file offset 0x92209c"
!SGElement class methodsFor: 'recovered'!
textWrongKind
    ^'<Wrong Kind>'
! !

"ASDBase.ic method 0x2001ea4c; bytecode file offset 0x92209c"
!SGElement class methodsFor: 'recovered'!
textUnresolvable
    ^'<Unresolvable>'
! !

"ASDBase.ic method 0x20021e24; bytecode file offset 0x92209c"
!SGElement class methodsFor: 'recovered'!
dummyLayoutVarName
    ^'dummy_for_layout_editor'
! !

"ASDBase.ic method 0x2002429c; bytecode file offset 0x92209c"
!SGElement class methodsFor: 'recovered'!
textNoSelection
    ^'<No Selection>'
! !

"ASDBase.ic method 0x20026aac; bytecode file offset 0x923928"
!SGElement class methodsFor: 'recovered'!
textAsterisk
    ^'*'
! !

"ASDBase.ic method 0x20059208; bytecode file offset 0x956284"
!SGElement class methodsFor: 'recovered'!
isAsterisk: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) textAsterisk.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) equals: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20060638; bytecode file offset 0x95cf04"
!SGElement class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200aad70; bytecode file offset 0x9a7658"
!SGElement class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) buildValidANSICIdentifier.
    (recoveredValue1) elementNameBasic: (recoveredValue3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200adf04; bytecode file offset 0x9aa800"
!SGElement class methodsFor: 'recovered'!
create: recoveredArg1 sgClass: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) create: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) initWithSgClass: (recoveredValue3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20217dd8; bytecode file offset 0xb14698"
!SGElement class methodsFor: 'recovered'!
sortBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280dac70Arg1 :block280dac70Arg2 | 
    | block280dac70Stack0 block280dac70Stack1 block280dac70Stack2 block280dac70Stack3 block280dac70PC block280dac70Step block280dac70Done block280dac70Result |
    block280dac70Stack0 := self.
    block280dac70PC := 4.
    block280dac70Done := false.
    [block280dac70Done not] whileTrue: [
        block280dac70Step := block280dac70PC.
        block280dac70Step = 4 ifTrue: [
            block280dac70Stack1 := block280dac70Arg1.
            block280dac70PC := 5.
        ].
        block280dac70Step = 5 ifTrue: [
            block280dac70Stack1 := (block280dac70Stack1) sortPrio.
            block280dac70PC := 6.
        ].
        block280dac70Step = 6 ifTrue: [
            block280dac70Stack2 := block280dac70Arg2.
            block280dac70PC := 7.
        ].
        block280dac70Step = 7 ifTrue: [
            block280dac70Stack2 := (block280dac70Stack2) sortPrio.
            block280dac70PC := 8.
        ].
        block280dac70Step = 8 ifTrue: [
            (block280dac70Stack1 ~~ block280dac70Stack2) ifTrue: [block280dac70PC := 20] ifFalse: [block280dac70PC := 12].
        ].
        block280dac70Step = 12 ifTrue: [
            block280dac70Stack1 := block280dac70Arg1.
            block280dac70PC := 13.
        ].
        block280dac70Step = 13 ifTrue: [
            block280dac70Stack1 := (block280dac70Stack1) elementName.
            block280dac70PC := 14.
        ].
        block280dac70Step = 14 ifTrue: [
            block280dac70Stack2 := block280dac70Arg2.
            block280dac70PC := 15.
        ].
        block280dac70Step = 15 ifTrue: [
            block280dac70Stack2 := (block280dac70Stack2) elementName.
            block280dac70PC := 16.
        ].
        block280dac70Step = 16 ifTrue: [
            block280dac70Stack1 := (block280dac70Stack1) < (block280dac70Stack2).
            block280dac70PC := 17.
        ].
        block280dac70Step = 17 ifTrue: [
            block280dac70PC := 25.
        ].
        block280dac70Step = 20 ifTrue: [
            block280dac70Stack1 := block280dac70Arg1.
            block280dac70PC := 21.
        ].
        block280dac70Step = 21 ifTrue: [
            block280dac70Stack1 := (block280dac70Stack1) sortPrio.
            block280dac70PC := 22.
        ].
        block280dac70Step = 22 ifTrue: [
            block280dac70Stack2 := block280dac70Arg2.
            block280dac70PC := 23.
        ].
        block280dac70Step = 23 ifTrue: [
            block280dac70Stack2 := (block280dac70Stack2) sortPrio.
            block280dac70PC := 24.
        ].
        block280dac70Step = 24 ifTrue: [
            block280dac70Stack1 := (block280dac70Stack1) < (block280dac70Stack2).
            block280dac70PC := 25.
        ].
        block280dac70Step = 25 ifTrue: [
            block280dac70Result := block280dac70Stack1.
            block280dac70Done := true.
        ].
    ].
    block280dac70Result
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

