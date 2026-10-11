"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017120; bytecode file offset 0x92209c"
!SGDistributionVisitor methodsFor: 'recovered'!
interpolateCalls
    ^#('interpolateOneD' 'interpolateTwoD' 'interpolateOneDGroup' 'interpolateTwoDGroup')
! !

"ASDBase.ic method 0x2010c7a4; bytecode file offset 0xa09064"
!SGDistributionVisitor methodsFor: 'recovered'!
findDistributions: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    coll := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) mdlAcceptNodeVisitor: (self).
    recoveredValue3 := coll.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2017d260; bytecode file offset 0xa79b2c"
!SGDistributionVisitor methodsFor: 'recovered'!
varDeclForAlias: recoveredArg1 scope: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := SGMdBuilder.
    recoveredValue1 := (recoveredValue0) currentMdlBuilder.
    recoveredValue2 := (recoveredValue1) importList.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) mdlKey.
    recoveredValue5 := [].
    recoveredValue6 := (recoveredValue2) lookup: (recoveredValue4) ifFail: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := [].
    recoveredValue10 := (recoveredValue7) lookup: (recoveredValue8) ifFail: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x2051045c; bytecode file offset 0xe0cd70"
!SGDistributionVisitor methodsFor: 'recovered'!
specialCall: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolateCalls.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) receiver.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlGroupCharTable.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlOneDCharTable.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) xDistributionAlias.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) scope.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDeclForAlias: (recoveredStack2) scope: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 132.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock69Value0 recoveredBlock69Value1 recoveredBlock69Value2 |
    recoveredBlock69Value0 := recoveredLocal2.
    recoveredBlock69Value1 := (recoveredBlock69Value0) mdlClass.
    recoveredBlock69Value2 := (recoveredBlock69Value1) isMdlTwoDCharTable.
    recoveredBlock69Value2
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := [
    'There can be only 1D and 2D group char tables'
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) xDistributionAlias.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := (recoveredStack3) scope.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDeclForAlias: (recoveredStack2) scope: (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := (recoveredStack3) yDistributionAlias.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack4 := (recoveredStack4) scope.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := (recoveredStack2) varDeclForAlias: (recoveredStack3) scope: (recoveredStack4).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredPC := 148.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := [:recoveredBlock151Arg1 | 
    | recoveredBlock151Value0 recoveredBlock151Value1 recoveredBlock151Value2 recoveredBlock151Value3 |
    recoveredBlock151Value0 := coll.
    recoveredBlock151Value1 := recoveredBlock151Arg1.
    recoveredBlock151Value2 := (recoveredBlock151Value1) errLabel.
    recoveredBlock151Value3 := (recoveredBlock151Value0) add: (recoveredBlock151Value2).
    recoveredBlock151Value3
].
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := super specialCall: (recoveredStack1).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

