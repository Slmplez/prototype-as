"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20077fcc; bytecode file offset 0x9757c8"
!CwToolBar methodsFor: 'recovered'!
isCwToolBar
    ^true
! !

"ASDBase.ic method 0x20099230; bytecode file offset 0x995aec"
!CwToolBar methodsFor: 'recovered'!
createGroup: recoveredArg1 argBlock: recoveredArg2
    (self) etasError: ('You should not use method createGroup:argBlock!! There is no group available any more. 
You have to use createToolButton:argBlock: instead for creating a button.
Use a toolButton with buttonType: XmSEPARATOR for having gap between buttons.
Also notice that you can use toolTipText: instead of BubbleHelpManager
').
    ^self
! !

"ASDBase.ic method 0x20196bb0; bytecode file offset 0xa9351c"
!CwToolBar methodsFor: 'recovered'!
toolNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) items.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) name.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201fdcdc; bytecode file offset 0xafa5b8"
!CwToolBar methodsFor: 'recovered'!
createSeparator
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'separator'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) numItems.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [:block280d8948Arg1 | 
    | block280d8948Value0 block280d8948Value1 block280d8948Value2 block280d8948Value3 |
    block280d8948Value0 := block280d8948Arg1.
    block280d8948Value1 := block280d8948Value0.
    (block280d8948Value1) labelString: ('').
    block280d8948Value2 := XmSEPARATOR.
    block280d8948Value3 := (block280d8948Value0) buttonType: (block280d8948Value2).
    block280d8948Value3
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) createToolButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

