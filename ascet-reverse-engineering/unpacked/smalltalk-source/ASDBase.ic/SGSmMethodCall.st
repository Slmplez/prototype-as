"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200010e8; bytecode file offset 0x8ffcfc"
!SGSmMethodCall methodsFor: 'recovered'!
duplicate
    ^self
! !

"ASDBase.ic method 0x20003aa0; bytecode file offset 0x90206c"
!SGSmMethodCall methodsFor: 'recovered'!
addChildren: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004cd0; bytecode file offset 0x90206c"
!SGSmMethodCall methodsFor: 'recovered'!
duplicateFor: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004ee8; bytecode file offset 0x90206c"
!SGSmMethodCall methodsFor: 'recovered'!
removeChildren: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000ca24; bytecode file offset 0x909658"
!SGSmMethodCall methodsFor: 'recovered'!
replacePrivateMethod: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000f27c; bytecode file offset 0x90bb38"
!SGSmMethodCall methodsFor: 'recovered'!
replaceCode: recoveredArg1 with: recoveredArg2
    ^false
! !

"ASDBase.ic method 0x20024fec; bytecode file offset 0x92209c"
!SGSmMethodCall methodsFor: 'recovered'!
children
    ^#()
! !

"ASDBase.ic method 0x2002b544; bytecode file offset 0x934580"
!SGSmMethodCall methodsFor: 'recovered'!
isExpression
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) calledMethod.
    recoveredValue1 := (recoveredValue0) isExpressionMethod.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ddd4; bytecode file offset 0x934580"
!SGSmMethodCall methodsFor: 'recovered'!
hasReturn
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) calledMethod.
    recoveredValue1 := (recoveredValue0) hasReturn.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030df4; bytecode file offset 0x934580"
!SGSmMethodCall methodsFor: 'recovered'!
name
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) calledMethod.
    recoveredValue1 := (recoveredValue0) name.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036584; bytecode file offset 0x934580"
!SGSmMethodCall methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) name.
    recoveredValue1 := (recoveredValue0) hash.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006153c; bytecode file offset 0x95e838"
!SGSmMethodCall methodsFor: 'recovered'!
tag
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) name.
    recoveredValue1 := (recoveredValue0) , ('()').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20067e34; bytecode file offset 0x9646f8"
!SGSmMethodCall methodsFor: 'recovered'!
calledMethod
    | recoveredValue0 |
    recoveredValue0 := calledMethod.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068304; bytecode file offset 0x965b90"
!SGSmMethodCall methodsFor: 'recovered'!
outlineStrategy
    | recoveredValue0 |
    recoveredValue0 := outlineStrategy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200693a0; bytecode file offset 0x966bdc"
!SGSmMethodCall methodsFor: 'recovered'!
codeSize
    | recoveredValue0 |
    recoveredValue0 := size.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200752dc; bytecode file offset 0x9757c8"
!SGSmMethodCall methodsFor: 'recovered'!
isMethodCall
    ^true
! !

"ASDBase.ic method 0x200754ec; bytecode file offset 0x9757c8"
!SGSmMethodCall methodsFor: 'recovered'!
isOutlinableCode
    ^true
! !

"ASDBase.ic method 0x2007587c; bytecode file offset 0x9757c8"
!SGSmMethodCall methodsFor: 'recovered'!
checkSize
    ^true
! !

"ASDBase.ic method 0x2007679c; bytecode file offset 0x9757c8"
!SGSmMethodCall methodsFor: 'recovered'!
isInlinedCode
    ^true
! !

"ASDBase.ic method 0x200955e8; bytecode file offset 0x991fb4"
!SGSmMethodCall methodsFor: 'recovered'!
calledMethods: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) calledMethod.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c039c; bytecode file offset 0x9bd228"
!SGSmMethodCall methodsFor: 'recovered'!
outlineStrategy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    outlineStrategy := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20143758; bytecode file offset 0xa4001c"
!SGSmMethodCall methodsFor: 'recovered'!
calledMethod: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    calledMethod := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) addCaller: (self).
    recoveredValue2 := (self) outlineStrategy.
    recoveredValue3 := (recoveredValue2) sizeEstimatorClass.
    recoveredValue4 := (recoveredValue3) methodCall: (self).
    size := recoveredValue4.
    ^self
! !

"ASDBase.ic method 0x20143a44; bytecode file offset 0xa40304"
!SGSmMethodCall methodsFor: 'recovered'!
= recoveredArg1
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
            recoveredStack2 := SGSmMethodCall.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d5004; bytecode file offset 0xcd18fc"
!SGSmMethodCall methodsFor: 'recovered'!
buildMdl
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) selfVarName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) id: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) calledMethod.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) arguments.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := (self) mdlBuilder.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value1) mdlName.
    recoveredBlock13Value3 := (recoveredBlock13Value0) id: (recoveredBlock13Value2).
    recoveredBlock13Value3
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) calledMethod.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) arguments.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) hasReturn.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) methodCall: (recoveredStack1) numOfArgs: (recoveredStack2) mapArgsByName: (recoveredStack3) returnValue: (recoveredStack4).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasReturn.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) endStmnt.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasReturn.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := calledMethod.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExpressionMethod.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := SGSmReturnCode.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := outlineStrategy.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) buildMdl: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) if.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

