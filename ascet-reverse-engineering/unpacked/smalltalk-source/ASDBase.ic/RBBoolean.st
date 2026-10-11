"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200187e8; bytecode file offset 0x92209c"
!RBBoolean methodsFor: 'recovered'!
asShortCType
    ^'bool'
! !

"ASDBase.ic method 0x2001fe14; bytecode file offset 0x92209c"
!RBBoolean methodsFor: 'recovered'!
asModelType
    ^'logic'
! !

"ASDBase.ic method 0x200256d0; bytecode file offset 0x92209c"
!RBBoolean methodsFor: 'recovered'!
modelLabel
    ^'log'
! !

"ASDBase.ic method 0x20026968; bytecode file offset 0x923928"
!RBBoolean methodsFor: 'recovered'!
asASAP2DataType
    ^'UBYTE'
! !

"ASDBase.ic method 0x2003d608; bytecode file offset 0x93bf94"
!RBBoolean methodsFor: 'recovered'!
modelType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGBoolean.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20071afc; bytecode file offset 0x96e578"
!RBBoolean methodsFor: 'recovered'!
getQuantization
    ^0
! !

"ASDBase.ic method 0x20072a40; bytecode file offset 0x96f3cc"
!RBBoolean methodsFor: 'recovered'!
getBasicLogType
    ^3
! !

"ASDBase.ic method 0x20074750; bytecode file offset 0x97102c"
!RBBoolean methodsFor: 'recovered'!
famosType
    ^11
! !

"ASDBase.ic method 0x20074d14; bytecode file offset 0x9757c8"
!RBBoolean methodsFor: 'recovered'!
isIleBooleanType
    ^true
! !

"ASDBase.ic method 0x20075cf4; bytecode file offset 0x9757c8"
!RBBoolean methodsFor: 'recovered'!
hasImplTypeBoolean
    ^true
! !

"ASDBase.ic method 0x20075e64; bytecode file offset 0x9757c8"
!RBBoolean methodsFor: 'recovered'!
isCgTypeForCommonSubexpressionElimination
    ^true
! !

"ASDBase.ic method 0x20076874; bytecode file offset 0x9757c8"
!RBBoolean methodsFor: 'recovered'!
isRBBoolean
    ^true
! !

"ASDBase.ic method 0x2007cc9c; bytecode file offset 0x97c330"
!RBBoolean methodsFor: 'recovered'!
getDefaultValue
    ^false
! !

"ASDBase.ic method 0x2009ba48; bytecode file offset 0x998304"
!RBBoolean methodsFor: 'recovered'!
getInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := (recoveredValue0) left: (false) right: (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2013c690; bytecode file offset 0xa38f54"
!RBBoolean methodsFor: 'recovered'!
asap2ExtendedLimits
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('Call_64858').
    recoveredValue1 := RBInterval.
    recoveredValue2 := (recoveredValue1) left: (0) right: (1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20368f70; bytecode file offset 0xc65840"
!RBBoolean methodsFor: 'recovered'!
convert: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isBoolean.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asBoolean.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVector.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 |
    recoveredBlock27Value0 := recoveredBlock27Arg1.
    recoveredBlock27Value1 := (self) convert: (recoveredBlock27Value0).
    recoveredBlock27Value1
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMatrix.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Value0 recoveredBlock49Value1 |
    recoveredBlock49Value0 := recoveredBlock49Arg1.
    recoveredBlock49Value1 := (self) convert: (recoveredBlock49Value0).
    recoveredBlock49Value1
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

