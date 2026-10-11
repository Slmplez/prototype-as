"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20008624; bytecode file offset 0x908be4"
!SGIlBooleanConstant methodsFor: 'recovered'!
getInterval
    | recoveredValue0 |
    recoveredValue0 := (self) interval.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b18c; bytecode file offset 0x908be4"
!SGIlBooleanConstant methodsFor: 'recovered'!
isIleConstantValueTrue
    | recoveredValue0 |
    recoveredValue0 := (self) value.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027c1c; bytecode file offset 0x92454c"
!SGIlBooleanConstant methodsFor: 'recovered'!
isIleConstantValueFalse
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) value.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004aec4; bytecode file offset 0x94777c"
!SGIlBooleanConstant methodsFor: 'recovered'!
interval
    | recoveredValue0 |
    recoveredValue0 := (1) asInterval.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20055674; bytecode file offset 0x952a9c"
!SGIlBooleanConstant methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) booleanConstant: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20077294; bytecode file offset 0x9757c8"
!SGIlBooleanConstant methodsFor: 'recovered'!
isIleBoolConstant
    ^true
! !

"ASDBase.ic method 0x20077adc; bytecode file offset 0x9757c8"
!SGIlBooleanConstant methodsFor: 'recovered'!
isIleBooleanTypedExpr
    ^true
! !

"ASDBase.ic method 0x200798f4; bytecode file offset 0x97c330"
!SGIlBooleanConstant methodsFor: 'recovered'!
isIleArithmeticExpr
    ^false
! !

"ASDBase.ic method 0x2012046c; bytecode file offset 0xa1cd48"
!SGIlBooleanConstant methodsFor: 'recovered'!
createOpType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBooleanType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'A binary relational operation must be of type boolean'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) fatalMessage: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

