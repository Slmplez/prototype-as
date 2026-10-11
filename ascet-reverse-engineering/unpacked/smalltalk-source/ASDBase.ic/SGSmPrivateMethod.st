"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001518; bytecode file offset 0x8ffcfc"
!SGSmPrivateMethod methodsFor: 'recovered'!
duplicate
    ^self
! !

"ASDBase.ic method 0x200037d0; bytecode file offset 0x90206c"
!SGSmPrivateMethod methodsFor: 'recovered'!
duplicateFor: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000f274; bytecode file offset 0x90bb38"
!SGSmPrivateMethod methodsFor: 'recovered'!
replaceCode: recoveredArg1 with: recoveredArg2
    ^false
! !

"ASDBase.ic method 0x20028ca4; bytecode file offset 0x934580"
!SGSmPrivateMethod methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) tag.
    recoveredValue1 := (recoveredValue0) hash.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20067d84; bytecode file offset 0x9646f8"
!SGSmPrivateMethod methodsFor: 'recovered'!
calledMethods
    | recoveredValue0 |
    recoveredValue0 := calledMethods.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b5a0; bytecode file offset 0x96873c"
!SGSmPrivateMethod methodsFor: 'recovered'!
tag
    | recoveredValue0 |
    recoveredValue0 := tag.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c9bc; bytecode file offset 0x9692b0"
!SGSmPrivateMethod methodsFor: 'recovered'!
mdMethod
    | recoveredValue0 |
    recoveredValue0 := mdMethod.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d3b4; bytecode file offset 0x96a390"
!SGSmPrivateMethod methodsFor: 'recovered'!
isInlined
    | recoveredValue0 |
    recoveredValue0 := inlined.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dbe0; bytecode file offset 0x96a9dc"
!SGSmPrivateMethod methodsFor: 'recovered'!
calls
    | recoveredValue0 |
    recoveredValue0 := calls.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200754f4; bytecode file offset 0x9757c8"
!SGSmPrivateMethod methodsFor: 'recovered'!
isPrivateMethod
    ^true
! !

"ASDBase.ic method 0x200767a4; bytecode file offset 0x9757c8"
!SGSmPrivateMethod methodsFor: 'recovered'!
isInlinedCode
    ^true
! !

"ASDBase.ic method 0x20077c5c; bytecode file offset 0x9757c8"
!SGSmPrivateMethod methodsFor: 'recovered'!
isOutlinableCode
    ^true
! !

"ASDBase.ic method 0x2007cc4c; bytecode file offset 0x97c330"
!SGSmPrivateMethod methodsFor: 'recovered'!
hasReturn
    ^false
! !

"ASDBase.ic method 0x20083bb8; bytecode file offset 0x9804b8"
!SGSmPrivateMethod methodsFor: 'recovered'!
collectCalledMethods: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) add: (self).
    ^self
! !

"ASDBase.ic method 0x200bf028; bytecode file offset 0x9bc0b4"
!SGSmPrivateMethod methodsFor: 'recovered'!
calledMethods: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    calledMethods := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c26a0; bytecode file offset 0x9bf474"
!SGSmPrivateMethod methodsFor: 'recovered'!
tag: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tag := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201219a8; bytecode file offset 0xa1e264"
!SGSmPrivateMethod methodsFor: 'recovered'!
initialize: recoveredArg1
    | recoveredValue0 |
    super initialize.
    recoveredValue0 := recoveredArg1.
    inlined := recoveredValue0.
    calls := 0.
    ^self
! !

"ASDBase.ic method 0x20145158; bytecode file offset 0xa41a14"
!SGSmPrivateMethod methodsFor: 'recovered'!
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
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) tag.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) tag.
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

"ASDBase.ic method 0x2018f9e4; bytecode file offset 0xa8c2c8"
!SGSmPrivateMethod methodsFor: 'recovered'!
reductionInCodeSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInlined.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) outlineStrategy.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) callSize.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) calls.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) reductionInCodeSize: (recoveredStack1) calls: (recoveredStack2) for: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018fa00; bytecode file offset 0xa8c2c8"
!SGSmPrivateMethod methodsFor: 'recovered'!
modelReductionInCodeSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInlined.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) outlineStrategy.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) callSize.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) calls.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) modelReductionInCodeSize: (recoveredStack1) calls: (recoveredStack2) for: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20193fa4; bytecode file offset 0xa90864"
!SGSmPrivateMethod methodsFor: 'recovered'!
replacePrivateMethodRoot: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInlined.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := super replacePrivateMethod: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201c9224; bytecode file offset 0xac5af0"
!SGSmPrivateMethod methodsFor: 'recovered'!
codeSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInlined.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := methodSize.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) calledMethodsSize.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) outlineStrategy.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) sizeEstimatorClass.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'method'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) cost: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cc228; bytecode file offset 0xac8ae8"
!SGSmPrivateMethod methodsFor: 'recovered'!
replacePrivateMethod: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInlined.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := super replacePrivateMethod: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e2108; bytecode file offset 0xade9d0"
!SGSmPrivateMethod methodsFor: 'recovered'!
addCallRecursive
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := calls.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            calls := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInlined.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) calledMethods.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:block280d64b8Arg1 | 
    | block280d64b8Value0 block280d64b8Value1 |
    block280d64b8Value0 := block280d64b8Arg1.
    block280d64b8Value1 := (block280d64b8Value0) addCallRecursive.
    block280d64b8Value1
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20228c84; bytecode file offset 0xb25548"
!SGSmPrivateMethod methodsFor: 'recovered'!
removeCallsRecursive: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := calls.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            calls := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInlined.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) calledMethods.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recoveredArg1.
    recoveredBlock18Value2 := (recoveredBlock18Value0) removeCallsRecursive: (recoveredBlock18Value1).
    recoveredBlock18Value2
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20230ed0; bytecode file offset 0xb2d798"
!SGSmPrivateMethod methodsFor: 'recovered'!
callSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInlined.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := methodSize.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := methodSize.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) calledMethodsSize.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) outlineStrategy.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) sizeEstimatorClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodCall: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20260b10; bytecode file offset 0xb5d3d4"
!SGSmPrivateMethod methodsFor: 'recovered'!
inline: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := inlined.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            inlined := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := inlined.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) calledMethods.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := (self) calls.
    recoveredBlock24Value2 := (recoveredBlock24Value1) + (-1).
    recoveredBlock24Value3 := (recoveredBlock24Value0) removeCallsRecursive: (recoveredBlock24Value2).
    recoveredBlock24Value3
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028c60c; bytecode file offset 0xb88edc"
!SGSmPrivateMethod methodsFor: 'recovered'!
buildMdl
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdMethod.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) outlineStrategy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) autoInlining.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := inlined.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdMethod.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) declaration.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) cgAttrCompilerInlining.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdMethod.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) declaration.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) cgAttrNoInlining.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034ab4c; bytecode file offset 0xc47444"
!SGSmPrivateMethod methodsFor: 'recovered'!
mdMethod: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    mdMethod := recoveredValue0.
    recoveredValue1 := mdMethod.
    recoveredValue2 := (recoveredValue1) declaration.
    recoveredValue3 := (recoveredValue2) mdlName.
    recoveredValue4 := (recoveredValue3) label.
    (self) tag: (recoveredValue4).
    recoveredValue5 := (self) outlineStrategy.
    recoveredValue6 := (recoveredValue5) sizeEstimatorClass.
    recoveredValue7 := [
    | recoveredBlock19Local1 recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 recoveredBlock19Value6 recoveredBlock19Value7 recoveredBlock19Value8 recoveredBlock19Value9 recoveredBlock19Value10 recoveredBlock19Value11 recoveredBlock19Value12 recoveredBlock19Value13 |
    recoveredBlock19Value0 := SGMdSequenceInfo.
    recoveredBlock19Value1 := (recoveredBlock19Value0) create.
    recoveredBlock19Local1 := recoveredBlock19Value1.
    recoveredBlock19Value2 := recoveredBlock19Local1.
    recoveredBlock19Value3 := OrderedCollection.
    recoveredBlock19Value4 := mdMethod.
    recoveredBlock19Value5 := (recoveredBlock19Value4) child.
    recoveredBlock19Value6 := (recoveredBlock19Value3) with: (recoveredBlock19Value5).
    (recoveredBlock19Value2) statements: (recoveredBlock19Value6).
    recoveredBlock19Value7 := (self) referencesToSM.
    recoveredBlock19Value8 := SGSmReadWarning.
    recoveredBlock19Value9 := (recoveredBlock19Value8) create.
    recoveredBlock19Value10 := mdMethod.
    recoveredBlock19Value11 := (recoveredBlock19Value10) child.
    recoveredBlock19Value12 := (recoveredBlock19Value9) referenceToSM: (recoveredBlock19Value11).
    (recoveredBlock19Value7) addAll: (recoveredBlock19Value12).
    recoveredBlock19Value13 := recoveredBlock19Local1.
    recoveredBlock19Value13
].
    recoveredValue8 := (recoveredValue6) create: (recoveredValue7).
    methodSize := recoveredValue8.
    ^self
! !

"ASDBase.ic method 0x204237d4; bytecode file offset 0xd200cc"
!SGSmPrivateMethod methodsFor: 'recovered'!
calcCalledMethodsSize
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := calledMethods.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGMdCalledMethodsCollector.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdMethod.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) child.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) calledMethods: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 |
    recoveredBlock24Value0 := (self) outlineStrategy.
    recoveredBlock24Value1 := (recoveredBlock24Value0) privateMethods.
    recoveredBlock24Value2 := recoveredBlock24Arg1.
    recoveredBlock24Value3 := (recoveredBlock24Value1) at: (recoveredBlock24Value2).
    recoveredBlock24Value3
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            calledMethods := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) outlineStrategy.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) sizeEstimatorClass.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) calledMethods.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := methodSize.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := [:recoveredBlock55Arg1 :recoveredBlock55Arg2 | 
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 recoveredBlock55Value3 recoveredBlock55Value4 |
    recoveredBlock55Value0 := recoveredBlock55Arg1.
    recoveredBlock55Value1 := recoveredLocal1.
    recoveredBlock55Value2 := recoveredBlock55Arg2.
    recoveredBlock55Value3 := (recoveredBlock55Value1) methodCall: (recoveredBlock55Value2).
    recoveredBlock55Value4 := (recoveredBlock55Value0) - (recoveredBlock55Value3).
    recoveredBlock55Value4
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            methodSize := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := calledMethods.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := [:block280fc924Arg1 | 
    | block280fc924Value0 block280fc924Value1 |
    block280fc924Value0 := block280fc924Arg1.
    block280fc924Value1 := (block280fc924Value0) calcCalledMethodsSize.
    block280fc924Value1
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            super calcCalledMethodsSize.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

