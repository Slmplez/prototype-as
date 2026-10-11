"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200e0b20; bytecode file offset 0x9dd3e4"
!SGIlReplaceSystemConstantTransformation methodsFor: 'recovered'!
prepareCodeGeneration
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGIlNodeLookupTable.
    recoveredValue1 := (recoveredValue0) createIsIleIdentical.
    map := recoveredValue1.
    recoveredValue2 := super prepareCodeGeneration.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20101b9c; bytecode file offset 0x9fe45c"
!SGIlReplaceSystemConstantTransformation methodsFor: 'recovered'!
replace: recoveredArg1 with: recoveredArg2 in: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) prepareCodeGeneration.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) replace: (recoveredValue0) with: (recoveredValue1).
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) visitNode: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2010ed30; bytecode file offset 0xa0b5f8"
!SGIlReplaceSystemConstantTransformation methodsFor: 'recovered'!
abstractNoOverflowExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super abstractNoOverflowExpr: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) originalExpr.
    recoveredValue4 := (self) visitNode: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) createOpOriginalExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2018af74; bytecode file offset 0xa87848"
!SGIlReplaceSystemConstantTransformation methodsFor: 'recovered'!
unaryOp: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) map: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := super unaryOp: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018af88; bytecode file offset 0xa87848"
!SGIlReplaceSystemConstantTransformation methodsFor: 'recovered'!
binaryExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) map: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := super binaryExpr: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ed5e0; bytecode file offset 0xae9f1c"
!SGIlReplaceSystemConstantTransformation methodsFor: 'recovered'!
modelIdentifier: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) map: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNumber.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := super modelIdentifier: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ed5f8; bytecode file offset 0xae9f1c"
!SGIlReplaceSystemConstantTransformation methodsFor: 'recovered'!
abstractModelMethodCall: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) map: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNumber.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := super abstractModelMethodCall: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ed610; bytecode file offset 0xae9f1c"
!SGIlReplaceSystemConstantTransformation methodsFor: 'recovered'!
declFieldAccess: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) map: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNumber.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := super declFieldAccess: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ed628; bytecode file offset 0xae9f1c"
!SGIlReplaceSystemConstantTransformation methodsFor: 'recovered'!
abstractDirectAccess: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) map: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNumber.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := super abstractDirectAccess: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ed640; bytecode file offset 0xae9f1c"
!SGIlReplaceSystemConstantTransformation methodsFor: 'recovered'!
phonyAssignExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) map: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNumber.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := super phonyAssignExpr: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ed658; bytecode file offset 0xae9f1c"
!SGIlReplaceSystemConstantTransformation methodsFor: 'recovered'!
ileDereferencedExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) map: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNumber.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := super ileDereferencedExpr: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fc648; bytecode file offset 0xaf8f0c"
!SGIlReplaceSystemConstantTransformation methodsFor: 'recovered'!
tempAssignIdentifier: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := super tempAssignIdentifier: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) map: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNumber.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ec744; bytecode file offset 0xce902c"
!SGIlReplaceSystemConstantTransformation methodsFor: 'recovered'!
multiplexExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) condExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) map: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := super multiplexExpr: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNumber.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) choices.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := super multiplexExpr: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultExpr.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) choices.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultExpr.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := (recoveredStack4) expressionContext.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) multiplexOn: (recoveredStack1) defaultExpr: (recoveredStack2) type: (recoveredStack3) expressionContext: (recoveredStack4).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleMultiplexExpr.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := super multiplexExpr: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c4604; bytecode file offset 0xdc0ef4"
!SGIlReplaceSystemConstantTransformation methodsFor: 'recovered'!
map: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleArithmeticExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) resetGoalInterval.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := map.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNumber.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock68Stack0 recoveredBlock68Stack1 recoveredBlock68Stack2 recoveredBlock68Stack3 recoveredBlock68PC recoveredBlock68Step recoveredBlock68Done recoveredBlock68Result |
    recoveredBlock68Stack0 := self.
    recoveredBlock68PC := 74.
    recoveredBlock68Done := false.
    [recoveredBlock68Done not] whileTrue: [
        recoveredBlock68Step := recoveredBlock68PC.
        recoveredBlock68Step = 74 ifTrue: [
            recoveredBlock68Stack1 := true.
            recoveredBlock68PC := 75.
        ].
        recoveredBlock68Step = 75 ifTrue: [
            recoveredBlock68Stack2 := recoveredArg1.
            recoveredBlock68PC := 78.
        ].
        recoveredBlock68Step = 78 ifTrue: [
            recoveredBlock68Stack2 := (recoveredBlock68Stack2) isIleTempVarIdentifier.
            recoveredBlock68PC := 80.
        ].
        recoveredBlock68Step = 80 ifTrue: [
            (recoveredBlock68Stack2) ifTrue: [recoveredBlock68PC := 90] ifFalse: [recoveredBlock68PC := 84].
        ].
        recoveredBlock68Step = 84 ifTrue: [
            recoveredBlock68PC := 85.
        ].
        recoveredBlock68Step = 85 ifTrue: [
            recoveredBlock68Stack1 := recoveredArg1.
            recoveredBlock68PC := 88.
        ].
        recoveredBlock68Step = 88 ifTrue: [
            recoveredBlock68Stack1 := (recoveredBlock68Stack1) hasIleNoSideEffects.
            recoveredBlock68PC := 90.
        ].
        recoveredBlock68Step = 90 ifTrue: [
            recoveredBlock68Result := recoveredBlock68Stack1.
            recoveredBlock68Done := true.
        ].
    ].
    recoveredBlock68Result
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := [
    'Expressions with side effects must not have propagated goal intervals'
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasIleAnnotatedGoalInterval.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 147].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasIleAnnotatedGoalInterval.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) goalInterval.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) intersect: (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) decorateGoalInterval: (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) goalInterval.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) decorateGoalInterval: (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206608bc; bytecode file offset 0xf5d1f0"
!SGIlReplaceSystemConstantTransformation methodsFor: 'recovered'!
replace: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleArithmeticExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) resetGoalInterval.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := map.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock24Value0 |
    recoveredBlock24Value0 := recoveredArg2.
    recoveredBlock24Value0
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 recoveredBlock34Value3 recoveredBlock34Value4 recoveredBlock34Value5 recoveredBlock34Value6 |
    recoveredBlock34Value0 := map.
    recoveredBlock34Value1 := recoveredLocal3.
    recoveredBlock34Value2 := recoveredBlock34Arg1.
    recoveredBlock34Value3 := recoveredArg2.
    recoveredBlock34Value4 := (recoveredBlock34Value3) interval.
    recoveredBlock34Value5 := (recoveredBlock34Value2) decorateGoalInterval: (recoveredBlock34Value4).
    recoveredBlock34Value6 := (recoveredBlock34Value0) at: (recoveredBlock34Value1) put: (recoveredBlock34Value5).
    recoveredBlock34Value6
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := map.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBooleanTypedExpr.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := map.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := (recoveredStack3) not.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAndExpr.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) replace: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) replace: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleOrExpr.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueFalse.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack1) replace: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) replace: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNotExpr.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := (recoveredStack3) not.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack1) replace: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBinaryRelOp.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 206] ifFalse: [recoveredPC := 979].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 216] ifFalse: [recoveredPC := 246].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 242] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredPC := 272.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 256] ifFalse: [recoveredPC := 272].
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 971] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleEqualExpr.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 286] ifFalse: [recoveredPC := 294].
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 310] ifFalse: [recoveredPC := 294].
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNotEqualExpr.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 302] ifFalse: [recoveredPC := 319].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueFalse.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 310] ifFalse: [recoveredPC := 319].
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            (recoveredStack1) replace: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleGreaterExpr.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 328] ifFalse: [recoveredPC := 348].
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 336] ifFalse: [recoveredPC := 348].
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 432] ifFalse: [recoveredPC := 348].
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLessEqualExpr.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 356] ifFalse: [recoveredPC := 376].
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueFalse.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 364] ifFalse: [recoveredPC := 376].
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 432] ifFalse: [recoveredPC := 376].
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLessExpr.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 384] ifFalse: [recoveredPC := 404].
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 392] ifFalse: [recoveredPC := 404].
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 432] ifFalse: [recoveredPC := 404].
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleGreaterEqualExpr.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 412] ifFalse: [recoveredPC := 510].
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueFalse.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 420] ifFalse: [recoveredPC := 510].
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 432] ifFalse: [recoveredPC := 510].
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack1 := (recoveredStack1) expressionContext.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock437Value0 recoveredBlock437Value1 |
    recoveredBlock437Value0 := recoveredLocal3.
    recoveredBlock437Value1 := (recoveredBlock437Value0) isIleFloatTypedExpr.
    recoveredBlock437Value1
].
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack1 := (recoveredStack1) executeInContext: (recoveredStack2).
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 456] ifFalse: [recoveredPC := 476].
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack3 := Float.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack3 := (recoveredStack3) infinityPlus.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack1 := (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredPC := 493.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack3 := Float.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack3 := (recoveredStack3) infinityPlus.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack1 := (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack3 := (recoveredStack3) decorateGoalInterval: (recoveredStack4).
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            (recoveredStack1) replace: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleGreaterEqualExpr.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 518] ifFalse: [recoveredPC := 538].
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 526] ifFalse: [recoveredPC := 538].
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 622] ifFalse: [recoveredPC := 538].
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLessExpr.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 546] ifFalse: [recoveredPC := 566].
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueFalse.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 554] ifFalse: [recoveredPC := 566].
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 622] ifFalse: [recoveredPC := 566].
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLessEqualExpr.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 574] ifFalse: [recoveredPC := 594].
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 582] ifFalse: [recoveredPC := 594].
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 622] ifFalse: [recoveredPC := 594].
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleGreaterExpr.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 602] ifFalse: [recoveredPC := 645].
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueFalse.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 610] ifFalse: [recoveredPC := 645].
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 622] ifFalse: [recoveredPC := 645].
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredStack4 := RBInterval.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack5 := (recoveredStack5) value.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack6 := Float.
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredStack6 := (recoveredStack6) infinityPlus.
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack4 := (recoveredStack4) left: (recoveredStack5) right: (recoveredStack6).
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack3 := (recoveredStack3) decorateGoalInterval: (recoveredStack4).
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            (recoveredStack1) replace: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLessExpr.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 654] ifFalse: [recoveredPC := 674].
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 662] ifFalse: [recoveredPC := 674].
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 758] ifFalse: [recoveredPC := 674].
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleGreaterEqualExpr.
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 682] ifFalse: [recoveredPC := 702].
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueFalse.
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 690] ifFalse: [recoveredPC := 702].
        ].
        recoveredStep = 690 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 758] ifFalse: [recoveredPC := 702].
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 705.
        ].
        recoveredStep = 705 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleGreaterExpr.
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 710] ifFalse: [recoveredPC := 730].
        ].
        recoveredStep = 710 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 715.
        ].
        recoveredStep = 715 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 718] ifFalse: [recoveredPC := 730].
        ].
        recoveredStep = 718 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 723.
        ].
        recoveredStep = 723 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 726.
        ].
        recoveredStep = 726 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 758] ifFalse: [recoveredPC := 730].
        ].
        recoveredStep = 730 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLessEqualExpr.
            recoveredPC := 735.
        ].
        recoveredStep = 735 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 738] ifFalse: [recoveredPC := 836].
        ].
        recoveredStep = 738 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueFalse.
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 746] ifFalse: [recoveredPC := 836].
        ].
        recoveredStep = 746 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 754.
        ].
        recoveredStep = 754 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 758] ifFalse: [recoveredPC := 836].
        ].
        recoveredStep = 758 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 761.
        ].
        recoveredStep = 761 ifTrue: [
            recoveredStack1 := (recoveredStack1) expressionContext.
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock763Value0 recoveredBlock763Value1 |
    recoveredBlock763Value0 := recoveredLocal3.
    recoveredBlock763Value1 := (recoveredBlock763Value0) isIleFloatTypedExpr.
    recoveredBlock763Value1
].
            recoveredPC := 776.
        ].
        recoveredStep = 776 ifTrue: [
            recoveredStack1 := (recoveredStack1) executeInContext: (recoveredStack2).
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 782] ifFalse: [recoveredPC := 802].
        ].
        recoveredStep = 782 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack2 := Float.
            recoveredPC := 786.
        ].
        recoveredStep = 786 ifTrue: [
            recoveredStack2 := (recoveredStack2) infinityMinus.
            recoveredPC := 788.
        ].
        recoveredStep = 788 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 791.
        ].
        recoveredStep = 791 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            recoveredStack1 := (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 795.
        ].
        recoveredStep = 795 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredPC := 819.
        ].
        recoveredStep = 802 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 804.
        ].
        recoveredStep = 804 ifTrue: [
            recoveredStack2 := Float.
            recoveredPC := 806.
        ].
        recoveredStep = 806 ifTrue: [
            recoveredStack2 := (recoveredStack2) infinityMinus.
            recoveredPC := 808.
        ].
        recoveredStep = 808 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 813.
        ].
        recoveredStep = 813 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            recoveredStack1 := (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 816.
        ].
        recoveredStep = 816 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 819.
        ].
        recoveredStep = 819 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 820.
        ].
        recoveredStep = 820 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 823.
        ].
        recoveredStep = 823 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 826.
        ].
        recoveredStep = 826 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 829.
        ].
        recoveredStep = 829 ifTrue: [
            recoveredStack3 := (recoveredStack3) decorateGoalInterval: (recoveredStack4).
            recoveredPC := 830.
        ].
        recoveredStep = 830 ifTrue: [
            (recoveredStack1) replace: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 832.
        ].
        recoveredStep = 832 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 833.
        ].
        recoveredStep = 833 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 836.
        ].
        recoveredStep = 836 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 839.
        ].
        recoveredStep = 839 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLessEqualExpr.
            recoveredPC := 841.
        ].
        recoveredStep = 841 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 844] ifFalse: [recoveredPC := 864].
        ].
        recoveredStep = 844 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 847.
        ].
        recoveredStep = 847 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 849.
        ].
        recoveredStep = 849 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 852] ifFalse: [recoveredPC := 864].
        ].
        recoveredStep = 852 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 855.
        ].
        recoveredStep = 855 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 857.
        ].
        recoveredStep = 857 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 860.
        ].
        recoveredStep = 860 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 861.
        ].
        recoveredStep = 861 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 948] ifFalse: [recoveredPC := 864].
        ].
        recoveredStep = 864 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 867.
        ].
        recoveredStep = 867 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleGreaterExpr.
            recoveredPC := 869.
        ].
        recoveredStep = 869 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 872] ifFalse: [recoveredPC := 892].
        ].
        recoveredStep = 872 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 875.
        ].
        recoveredStep = 875 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueFalse.
            recoveredPC := 877.
        ].
        recoveredStep = 877 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 880] ifFalse: [recoveredPC := 892].
        ].
        recoveredStep = 880 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 883.
        ].
        recoveredStep = 883 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 885.
        ].
        recoveredStep = 885 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 888.
        ].
        recoveredStep = 888 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 889.
        ].
        recoveredStep = 889 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 948] ifFalse: [recoveredPC := 892].
        ].
        recoveredStep = 892 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 895.
        ].
        recoveredStep = 895 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleGreaterEqualExpr.
            recoveredPC := 897.
        ].
        recoveredStep = 897 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 900] ifFalse: [recoveredPC := 920].
        ].
        recoveredStep = 900 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 903.
        ].
        recoveredStep = 903 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 905.
        ].
        recoveredStep = 905 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 908] ifFalse: [recoveredPC := 920].
        ].
        recoveredStep = 908 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 911.
        ].
        recoveredStep = 911 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 913.
        ].
        recoveredStep = 913 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 916.
        ].
        recoveredStep = 916 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 917.
        ].
        recoveredStep = 917 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 948] ifFalse: [recoveredPC := 920].
        ].
        recoveredStep = 920 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 923.
        ].
        recoveredStep = 923 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLessExpr.
            recoveredPC := 925.
        ].
        recoveredStep = 925 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 928] ifFalse: [recoveredPC := 971].
        ].
        recoveredStep = 928 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 931.
        ].
        recoveredStep = 931 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueFalse.
            recoveredPC := 933.
        ].
        recoveredStep = 933 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 936] ifFalse: [recoveredPC := 971].
        ].
        recoveredStep = 936 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 939.
        ].
        recoveredStep = 939 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 941.
        ].
        recoveredStep = 941 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 944.
        ].
        recoveredStep = 944 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 945.
        ].
        recoveredStep = 945 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 948] ifFalse: [recoveredPC := 971].
        ].
        recoveredStep = 948 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 949.
        ].
        recoveredStep = 949 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 952.
        ].
        recoveredStep = 952 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 955.
        ].
        recoveredStep = 955 ifTrue: [
            recoveredStack4 := RBInterval.
            recoveredPC := 957.
        ].
        recoveredStep = 957 ifTrue: [
            recoveredStack5 := Float.
            recoveredPC := 959.
        ].
        recoveredStep = 959 ifTrue: [
            recoveredStack5 := (recoveredStack5) infinityMinus.
            recoveredPC := 961.
        ].
        recoveredStep = 961 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 964.
        ].
        recoveredStep = 964 ifTrue: [
            recoveredStack6 := (recoveredStack6) value.
            recoveredPC := 966.
        ].
        recoveredStep = 966 ifTrue: [
            recoveredStack4 := (recoveredStack4) left: (recoveredStack5) right: (recoveredStack6).
            recoveredPC := 968.
        ].
        recoveredStep = 968 ifTrue: [
            recoveredStack3 := (recoveredStack3) decorateGoalInterval: (recoveredStack4).
            recoveredPC := 969.
        ].
        recoveredStep = 969 ifTrue: [
            (recoveredStack1) replace: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 971.
        ].
        recoveredStep = 971 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 972.
        ].
        recoveredStep = 972 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 973.
        ].
        recoveredStep = 973 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 976.
        ].
        recoveredStep = 976 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 979.
        ].
        recoveredStep = 979 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

