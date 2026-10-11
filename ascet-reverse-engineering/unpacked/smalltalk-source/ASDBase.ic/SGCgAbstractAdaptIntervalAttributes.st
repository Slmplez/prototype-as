"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200039c8; bytecode file offset 0x90206c"
!SGCgAbstractAdaptIntervalAttributes methodsFor: 'recovered'!
printErrLabelOn: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20009674; bytecode file offset 0x908be4"
!SGCgAbstractAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrLimitAssignment
    | recoveredValue0 |
    recoveredValue0 := (self) isCgAttrPlainLimitAssignment.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001cd24; bytecode file offset 0x92209c"
!SGCgAbstractAdaptIntervalAttributes methodsFor: 'recovered'!
errLabel
    ^'EXPR'
! !

"ASDBase.ic method 0x2004df88; bytecode file offset 0x94d048"
!SGCgAbstractAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrReduceResolution
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004e0d8; bytecode file offset 0x94d048"
!SGCgAbstractAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrFloatGoal
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004e42c; bytecode file offset 0x94d048"
!SGCgAbstractAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrLimitOverflow
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004e6f0; bytecode file offset 0x94d048"
!SGCgAbstractAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrSpecificResolution
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004e81c; bytecode file offset 0x94d048"
!SGCgAbstractAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrZeroIncluded
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004e864; bytecode file offset 0x94d048"
!SGCgAbstractAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrReduceResolution
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004ecc0; bytecode file offset 0x94d048"
!SGCgAbstractAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrLimitOverflow
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004f08c; bytecode file offset 0x94d048"
!SGCgAbstractAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrNoLimitAssignment
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004f134; bytecode file offset 0x94d048"
!SGCgAbstractAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrZeroIncluded
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004f170; bytecode file offset 0x94d048"
!SGCgAbstractAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrPlainLimitAssignment
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004f290; bytecode file offset 0x94d048"
!SGCgAbstractAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrNoLimitOverflow
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004f848; bytecode file offset 0x94d048"
!SGCgAbstractAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrLimitAssignment
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004f920; bytecode file offset 0x94d048"
!SGCgAbstractAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrFloatGoal
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004fc68; bytecode file offset 0x94d048"
!SGCgAbstractAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrAutomaticResolution
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004fd88; bytecode file offset 0x94d048"
!SGCgAbstractAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrNoFloatGoal
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20050160; bytecode file offset 0x94d048"
!SGCgAbstractAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrKeepResolution
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005064c; bytecode file offset 0x94d048"
!SGCgAbstractAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrAutomaticResolution
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200c3688; bytecode file offset 0x9c058c"
!SGCgAbstractAdaptIntervalAttributes methodsFor: 'recovered'!
allowDoubleBitSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    allowDoubleBitSize := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e2394; bytecode file offset 0x9dec60"
!SGCgAbstractAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrLimitOverflowAndReduceResolution
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgAttrLimitOverflow.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrReduceResolution.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200f2484; bytecode file offset 0x9eedc0"
!SGCgAbstractAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrLimitOverflowAndKeepRes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgAttrLimitOverflow.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrReduceResolution.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200f2724; bytecode file offset 0x9eeff0"
!SGCgAbstractAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrNoLimitOverflowAndKeepRes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgAttrLimitOverflow.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrReduceResolution.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201061d8; bytecode file offset 0xa02a94"
!SGCgAbstractAdaptIntervalAttributes methodsFor: 'recovered'!
allowDoubleBitSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := allowDoubleBitSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            allowDoubleBitSize := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := allowDoubleBitSize.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014ee14; bytecode file offset 0xa4b6dc"
!SGCgAbstractAdaptIntervalAttributes methodsFor: 'recovered'!
adaptAssignAttributes
    | recoveredValue0 |
    (self) cgAttrNoLimitAssignment.
    (self) cgAttrNoLimitOverflow.
    recoveredValue0 := ('Rl') == ('Call_63893').
    (self) cgAttrFloatGoal.
    ^self
! !

