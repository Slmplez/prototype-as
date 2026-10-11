"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002d40; bytecode file offset 0x8ffcfc"
!SGIlExtractLoopTempVarsState methodsFor: 'recovered'!
deleteNonLocalInformation
    ^self
! !

"ASDBase.ic method 0x200661cc; bytecode file offset 0x963428"
!SGIlExtractLoopTempVarsState methodsFor: 'recovered'!
loopVars
    | recoveredValue0 |
    recoveredValue0 := loopVars.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200674d4; bytecode file offset 0x9646f8"
!SGIlExtractLoopTempVarsState methodsFor: 'recovered'!
localVars
    | recoveredValue0 |
    recoveredValue0 := localVars.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077bc4; bytecode file offset 0x9757c8"
!SGIlExtractLoopTempVarsState methodsFor: 'recovered'!
isStrictlyMontonic
    ^true
! !

"ASDBase.ic method 0x2007c89c; bytecode file offset 0x97c330"
!SGIlExtractLoopTempVarsState methodsFor: 'recovered'!
isImpossible
    ^false
! !

"ASDBase.ic method 0x20092920; bytecode file offset 0x98f298"
!SGIlExtractLoopTempVarsState methodsFor: 'recovered'!
varAssignment: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := localVars.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20151850; bytecode file offset 0xa4e134"
!SGIlExtractLoopTempVarsState methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    loopVars := recoveredValue1.
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    localVars := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2016ba50; bytecode file offset 0xa68314"
!SGIlExtractLoopTempVarsState methodsFor: 'recovered'!
copy
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := super copy.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue1) loopVars.
    recoveredValue3 := (recoveredValue2) copy.
    loopVars := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) localVars.
    recoveredValue6 := (recoveredValue5) copy.
    localVars := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x201841b8; bytecode file offset 0xa80a7c"
!SGIlExtractLoopTempVarsState methodsFor: 'recovered'!
varUsage: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := localVars.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempAssign.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempVar.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := loopVars.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempAssign.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempVar.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f52ec; bytecode file offset 0xaf1bd0"
!SGIlExtractLoopTempVarsState methodsFor: 'recovered'!
mergeIntersect: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) loopVars.
    recoveredValue2 := [:recoveredBlock6Arg1 :recoveredBlock6Arg2 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := loopVars.
    recoveredBlock6Value1 := recoveredBlock6Arg1.
    recoveredBlock6Value2 := recoveredBlock6Arg2.
    recoveredBlock6Value3 := (recoveredBlock6Value0) at: (recoveredBlock6Value1) put: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    (recoveredValue1) keysAndValuesDo: (recoveredValue2).
    recoveredValue3 := localVars.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) localVars.
    recoveredValue6 := (recoveredValue3) intersection: (recoveredValue5).
    localVars := recoveredValue6.
    ^self
! !

"ASDBase.ic method 0x201f5308; bytecode file offset 0xaf1bd0"
!SGIlExtractLoopTempVarsState methodsFor: 'recovered'!
mergeUnion: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) loopVars.
    recoveredValue2 := [:recoveredBlock6Arg1 :recoveredBlock6Arg2 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := loopVars.
    recoveredBlock6Value1 := recoveredBlock6Arg1.
    recoveredBlock6Value2 := recoveredBlock6Arg2.
    recoveredBlock6Value3 := (recoveredBlock6Value0) at: (recoveredBlock6Value1) put: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    (recoveredValue1) keysAndValuesDo: (recoveredValue2).
    recoveredValue3 := localVars.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) localVars.
    recoveredValue6 := (recoveredValue3) union: (recoveredValue5).
    localVars := recoveredValue6.
    ^self
! !

