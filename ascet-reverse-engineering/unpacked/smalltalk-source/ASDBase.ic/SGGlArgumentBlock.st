"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20033a34; bytecode file offset 0x934580"
!SGGlArgumentBlock methodsFor: 'recovered'!
isBdlMethodLocalBlock
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dataModelRef.
    recoveredValue1 := (recoveredValue0) isMethodLocal.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200629d8; bytecode file offset 0x95f8b0"
!SGGlArgumentBlock methodsFor: 'recovered'!
mdlName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) dataModelRef.
    recoveredValue2 := (recoveredValue0) createMdlNameForVar: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20075fd4; bytecode file offset 0x9757c8"
!SGGlArgumentBlock methodsFor: 'recovered'!
isSGGlArgumentBlock
    ^true
! !

"ASDBase.ic method 0x2032ca5c; bytecode file offset 0xc29328"
!SGGlArgumentBlock methodsFor: 'recovered'!
checkValidity: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataModelRef.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMethodLocal.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 |
    recoveredBlock14Value0 := (self) errLabel.
    (self) bdlWarningNo: (70) with: (recoveredBlock14Value0).
    ^false
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) checkValidLocalVar: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Value0 |
    recoveredBlock40Value0 := (self) errLabel.
    (self) bdlWarningNo: (71) with: (recoveredBlock40Value0).
    ^false
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) checkValidArgument: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20368b44; bytecode file offset 0xc65424"
!SGGlArgumentBlock methodsFor: 'recovered'!
syntacticAnalysis
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataModelRef.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMethodLocal.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMethod.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := (self) errLabel.
    recoveredBlock14Value2 := (self) bdlSyntaxErrNo: (10) with: (recoveredBlock14Value0) with: (recoveredBlock14Value1).
    recoveredBlock14Value2
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) checkValidLocalVar: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMethod.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 recoveredBlock40Value3 recoveredBlock40Value4 recoveredBlock40Value5 recoveredBlock40Value6 |
    recoveredBlock40Value0 := (self) errLabel.
    recoveredBlock40Value1 := (self) dataModelRef.
    recoveredBlock40Value2 := (recoveredBlock40Value1) owner.
    recoveredBlock40Value3 := (recoveredBlock40Value2) methodName.
    recoveredBlock40Value4 := (recoveredBlock40Value3) errLabel.
    recoveredBlock40Value5 := recoveredBlock40Arg1.
    recoveredBlock40Value6 := (self) bdlSyntaxErrNo: (1) with: (recoveredBlock40Value0) with: (recoveredBlock40Value4) with: (recoveredBlock40Value5).
    recoveredBlock40Value6
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) checkValidArgument: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

