"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002318; bytecode file offset 0x8ffcfc"
!SGSmAbstractCode methodsFor: 'recovered'!
calculateOutlinedSize
    ^self
! !

"ASDBase.ic method 0x2001c7f0; bytecode file offset 0x92209c"
!SGSmAbstractCode methodsFor: 'recovered'!
indent
    ^'    '
! !

"ASDBase.ic method 0x2004e054; bytecode file offset 0x94d048"
!SGSmAbstractCode methodsFor: 'recovered'!
children
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004e51c; bytecode file offset 0x94d048"
!SGSmAbstractCode methodsFor: 'recovered'!
hash
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004f398; bytecode file offset 0x94d048"
!SGSmAbstractCode methodsFor: 'recovered'!
codeSize
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200506dc; bytecode file offset 0x94d048"
!SGSmAbstractCode methodsFor: 'recovered'!
tag
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053cdc; bytecode file offset 0x9505d0"
!SGSmAbstractCode methodsFor: 'recovered'!
= recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200666c4; bytecode file offset 0x963428"
!SGSmAbstractCode methodsFor: 'recovered'!
method
    | recoveredValue0 |
    recoveredValue0 := method.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007a1cc; bytecode file offset 0x97c330"
!SGSmAbstractCode methodsFor: 'recovered'!
isMethodCall
    ^false
! !

"ASDBase.ic method 0x2007c06c; bytecode file offset 0x97c330"
!SGSmAbstractCode methodsFor: 'recovered'!
isPrivateMethod
    ^false
! !

"ASDBase.ic method 0x2007c174; bytecode file offset 0x97c330"
!SGSmAbstractCode methodsFor: 'recovered'!
isInlinedCode
    ^false
! !

"ASDBase.ic method 0x2007cfbc; bytecode file offset 0x97c330"
!SGSmAbstractCode methodsFor: 'recovered'!
isIfCode
    ^false
! !

"ASDBase.ic method 0x2007d094; bytecode file offset 0x97c330"
!SGSmAbstractCode methodsFor: 'recovered'!
isAbstractMethodCaller
    ^false
! !

"ASDBase.ic method 0x2007d374; bytecode file offset 0x97c330"
!SGSmAbstractCode methodsFor: 'recovered'!
isNonOutlinableCode
    ^false
! !

"ASDBase.ic method 0x2007d774; bytecode file offset 0x97c330"
!SGSmAbstractCode methodsFor: 'recovered'!
isCodeList
    ^false
! !

"ASDBase.ic method 0x2007e10c; bytecode file offset 0x97c330"
!SGSmAbstractCode methodsFor: 'recovered'!
isOrExpression
    ^false
! !

"ASDBase.ic method 0x2007e11c; bytecode file offset 0x97c330"
!SGSmAbstractCode methodsFor: 'recovered'!
isOutlinableCode
    ^false
! !

"ASDBase.ic method 0x2007e1a4; bytecode file offset 0x97c330"
!SGSmAbstractCode methodsFor: 'recovered'!
isExpression
    ^false
! !

"ASDBase.ic method 0x2007e9fc; bytecode file offset 0x97c330"
!SGSmAbstractCode methodsFor: 'recovered'!
isReturn
    ^false
! !

"ASDBase.ic method 0x20085c70; bytecode file offset 0x982564"
!SGSmAbstractCode methodsFor: 'recovered'!
<= recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) tag.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) tag.
    recoveredValue3 := (recoveredValue0) <= (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a5ca4; bytecode file offset 0x9a25bc"
!SGSmAbstractCode methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printFormatted: (0) on: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200be1ec; bytecode file offset 0x9bb178"
!SGSmAbstractCode methodsFor: 'recovered'!
method: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    method := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20288824; bytecode file offset 0xb850e8"
!SGSmAbstractCode methodsFor: 'recovered'!
printFormatted: recoveredArg1 on: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) indent.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 12] ifFalse: [recoveredLocal1 := nil. recoveredPC := 31]] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) tag.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

