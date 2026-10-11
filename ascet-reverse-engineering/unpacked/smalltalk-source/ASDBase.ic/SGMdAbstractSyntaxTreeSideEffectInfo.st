"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001cde4; bytecode file offset 0x92209c"
!SGMdAbstractSyntaxTreeSideEffectInfo methodsFor: 'recovered'!
description
    ^'Unknown element'
! !

"ASDBase.ic method 0x2003efd8; bytecode file offset 0x93bf94"
!SGMdAbstractSyntaxTreeSideEffectInfo methodsFor: 'recovered'!
analysisInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMdSideEffectAnalysisInfo.
    recoveredValue1 := (recoveredValue0) create.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004fc08; bytecode file offset 0x94d048"
!SGMdAbstractSyntaxTreeSideEffectInfo methodsFor: 'recovered'!
hash
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200502e0; bytecode file offset 0x94d048"
!SGMdAbstractSyntaxTreeSideEffectInfo methodsFor: 'recovered'!
asConditionalInfo
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053ad8; bytecode file offset 0x9505d0"
!SGMdAbstractSyntaxTreeSideEffectInfo methodsFor: 'recovered'!
= recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20068e4c; bytecode file offset 0x965b90"
!SGMdAbstractSyntaxTreeSideEffectInfo methodsFor: 'recovered'!
source
    | recoveredValue0 |
    recoveredValue0 := source.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007c6e4; bytecode file offset 0x97c330"
!SGMdAbstractSyntaxTreeSideEffectInfo methodsFor: 'recovered'!
isEmpty
    ^false
! !

"ASDBase.ic method 0x200b7ea0; bytecode file offset 0x9b479c"
!SGMdAbstractSyntaxTreeSideEffectInfo methodsFor: 'recovered'!
anyRecordFieldAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGMdSideEffectRecordAllFieldAccess.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) expr: (recoveredValue3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c05b4; bytecode file offset 0x9bd228"
!SGMdAbstractSyntaxTreeSideEffectInfo methodsFor: 'recovered'!
source: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    source := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200dde08; bytecode file offset 0x9da6d4"
!SGMdAbstractSyntaxTreeSideEffectInfo methodsFor: 'recovered'!
sideEffectWriteConflictWarning: recoveredArg1 source: recoveredArg2 writeTo: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) sideEffectConflictWarning: (recoveredValue0) firstAccess: ('Write access') source: (recoveredValue1) writeTo: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200dde18; bytecode file offset 0x9da6d4"
!SGMdAbstractSyntaxTreeSideEffectInfo methodsFor: 'recovered'!
sideEffectConflictWarning: recoveredArg1 source: recoveredArg2 writeTo: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) sideEffectConflictWarning: (recoveredValue0) firstAccess: ('Read access') source: (recoveredValue1) writeTo: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200edde0; bytecode file offset 0x9ea72c"
!SGMdAbstractSyntaxTreeSideEffectInfo methodsFor: 'recovered'!
varDeclElement: recoveredArg1 ownerMethod: recoveredArg2 method: recoveredArg3 owner: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGMdMethodAnalysisInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) varDeclElement: (recoveredValue1) ownerMethod: (recoveredValue2) method: (recoveredValue3) owner: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ede90; bytecode file offset 0x9ea74c"
!SGMdAbstractSyntaxTreeSideEffectInfo methodsFor: 'recovered'!
addName: recoveredArg1 scope: recoveredArg2 method: recoveredArg3 toElement: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGMdMethodAnalysisInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    (recoveredValue0) addName: (recoveredValue1) scope: (recoveredValue2) method: (recoveredValue3) toElement: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201ea480; bytecode file offset 0xae6d4c"
!SGMdAbstractSyntaxTreeSideEffectInfo methodsFor: 'recovered'!
analyseReadMatches: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock8Arg1 :recoveredBlock8Arg2 :recoveredBlock8Arg3 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := recoveredBlock8Arg3.
    recoveredBlock8Value2 := recoveredArg2.
    recoveredBlock8Value3 := recoveredBlock8Arg2.
    recoveredBlock8Value4 := (recoveredBlock8Value0) sideEffectConflictWarning: (recoveredBlock8Value1) source: (recoveredBlock8Value2) writeTo: (recoveredBlock8Value3).
    recoveredBlock8Value4
].
    (self) analyseReadMatches: (recoveredValue0) dereference: (false) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201ea490; bytecode file offset 0xae6d4c"
!SGMdAbstractSyntaxTreeSideEffectInfo methodsFor: 'recovered'!
analyseWriteMatches: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock8Arg1 :recoveredBlock8Arg2 :recoveredBlock8Arg3 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := recoveredBlock8Arg3.
    recoveredBlock8Value2 := recoveredArg2.
    recoveredBlock8Value3 := recoveredBlock8Arg2.
    recoveredBlock8Value4 := (recoveredBlock8Value0) sideEffectWriteConflictWarning: (recoveredBlock8Value1) source: (recoveredBlock8Value2) writeTo: (recoveredBlock8Value3).
    recoveredBlock8Value4
].
    (self) analyseReadMatches: (recoveredValue0) dereference: (false) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2027202c; bytecode file offset 0xb6e900"
!SGMdAbstractSyntaxTreeSideEffectInfo methodsFor: 'recovered'!
anyArrayIndexAccess: recoveredArg1 mdlClass: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlArray.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := SGMdNoSideEffectAnalysisInfo.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) create.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := SGMdNoSideEffectAnalysisInfo.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) create.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := SGMdNoSideEffectAnalysisInfo.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) create.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := SGMdSideEffectIndexAccess.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2) index: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20278dd0; bytecode file offset 0xb756a8"
!SGMdAbstractSyntaxTreeSideEffectInfo methodsFor: 'recovered'!
sideEffectConflictWarning: recoveredArg1 firstAccess: recoveredArg2 source: recoveredArg3 writeTo: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := Array.
    recoveredValue3 := (self) source.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue4) source.
    recoveredValue6 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue5).
    recoveredValue7 := Array.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (recoveredValue8) , (' to ').
    recoveredValue10 := (self) description.
    recoveredValue11 := (recoveredValue9) , (recoveredValue10).
    recoveredValue12 := recoveredArg4.
    recoveredValue13 := (recoveredValue12) description.
    recoveredValue14 := ('Write access to ') , (recoveredValue13).
    recoveredValue15 := (recoveredValue7) with: (recoveredValue11) with: (recoveredValue14).
    recoveredValue16 := (recoveredValue1) createMultiSource: (recoveredValue6) labels: (recoveredValue15).
    (self) mdlWarningNo: (recoveredValue0) source: (recoveredValue16).
    ^self
! !

"ASDBase.ic method 0x202ba900; bytecode file offset 0xbb71e0"
!SGMdAbstractSyntaxTreeSideEffectInfo methodsFor: 'recovered'!
asDOM: recoveredArg1 context: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerDocument.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) createElement: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) conditional.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 'conditional'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) conditional.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasValues.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 'hasValues'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) setAttribute: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) addSource: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f9000; bytecode file offset 0xbf58c4"
!SGMdAbstractSyntaxTreeSideEffectInfo methodsFor: 'recovered'!
collection: recoveredArg1 equals: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 |
    recoveredBlock28Value0 := recoveredLocal1.
    recoveredBlock28Value1 := recoveredBlock28Arg1.
    recoveredBlock28Value2 := [
    ^false
].
    recoveredBlock28Value3 := (recoveredBlock28Value0) remove: (recoveredBlock28Value1) ifAbsent: (recoveredBlock28Value2).
    recoveredBlock28Value3
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203036ac; bytecode file offset 0xbfff84"
!SGMdAbstractSyntaxTreeSideEffectInfo methodsFor: 'recovered'!
fromDOM: recoveredArg1 in: recoveredArg2 context: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'conditional'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) asBoolean.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) conditional: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 'hasValues'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) asBoolean.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) hasValues: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'sourceId'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) sourceForId: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20422014; bytecode file offset 0xd1e8e4"
!SGMdAbstractSyntaxTreeSideEffectInfo methodsFor: 'recovered'!
<= recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasValues.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasValues.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := [:recoveredBlock46Arg1 :recoveredBlock46Arg2 | 
    | recoveredBlock46Stack0 recoveredBlock46Stack1 recoveredBlock46Stack2 recoveredBlock46Stack3 recoveredBlock46Stack4 recoveredBlock46PC recoveredBlock46Step recoveredBlock46Done recoveredBlock46Result |
    recoveredBlock46Stack0 := self.
    recoveredBlock46PC := 52.
    recoveredBlock46Done := false.
    [recoveredBlock46Done not] whileTrue: [
        recoveredBlock46Step := recoveredBlock46PC.
        recoveredBlock46Step = 52 ifTrue: [
            recoveredBlock46Stack1 := nil.
            recoveredBlock46PC := 53.
        ].
        recoveredBlock46Step = 53 ifTrue: [
            recoveredBlock46Stack2 := recoveredBlock46Arg1.
            recoveredBlock46PC := 54.
        ].
        recoveredBlock46Step = 54 ifTrue: [
            recoveredBlock46Stack3 := recoveredBlock46Arg2.
            recoveredBlock46PC := 55.
        ].
        recoveredBlock46Step = 55 ifTrue: [
            recoveredBlock46Stack2 := (recoveredBlock46Stack2) ~= (recoveredBlock46Stack3).
            recoveredBlock46PC := 56.
        ].
        recoveredBlock46Step = 56 ifTrue: [
            (recoveredBlock46Stack2) ifTrue: [recoveredBlock46PC := 60] ifFalse: [recoveredBlock46PC := 65].
        ].
        recoveredBlock46Step = 60 ifTrue: [
            recoveredBlock46PC := 61.
        ].
        recoveredBlock46Step = 61 ifTrue: [
            recoveredBlock46Stack1 := recoveredBlock46Arg1.
            recoveredBlock46PC := 62.
        ].
        recoveredBlock46Step = 62 ifTrue: [
            recoveredBlock46Stack2 := recoveredBlock46Arg2.
            recoveredBlock46PC := 63.
        ].
        recoveredBlock46Step = 63 ifTrue: [
            recoveredBlock46Stack1 := (recoveredBlock46Stack1) < (recoveredBlock46Stack2).
            recoveredBlock46PC := 64.
        ].
        recoveredBlock46Step = 64 ifTrue: [
            ^recoveredBlock46Stack1
        ].
        recoveredBlock46Step = 65 ifTrue: [
            recoveredBlock46Result := recoveredBlock46Stack1.
            recoveredBlock46Done := true.
        ].
    ].
    recoveredBlock46Result
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) with: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasValues.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

