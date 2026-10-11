"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000b2f4; bytecode file offset 0x908be4"
!SGIlConstSub methodsFor: 'recovered'!
ileConstChild
    | recoveredValue0 |
    recoveredValue0 := (self) leftExpr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000c260; bytecode file offset 0x908be4"
!SGIlConstSub methodsFor: 'recovered'!
ileExprChild
    | recoveredValue0 |
    recoveredValue0 := (self) rightExpr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20032e94; bytecode file offset 0x934580"
!SGIlConstSub methodsFor: 'recovered'!
ileExtendedInputValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rightExpr.
    recoveredValue1 := (recoveredValue0) ileExtendedInputValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035e84; bytecode file offset 0x934580"
!SGIlConstSub methodsFor: 'recovered'!
ileAdditiveConstChildValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileConstChild.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200560c4; bytecode file offset 0x952a9c"
!SGIlConstSub methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) constSubExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2007635c; bytecode file offset 0x9757c8"
!SGIlConstSub methodsFor: 'recovered'!
hasIleConstChild
    ^true
! !

"ASDBase.ic method 0x20077bb4; bytecode file offset 0x9757c8"
!SGIlConstSub methodsFor: 'recovered'!
isIleConstSubExpr
    ^true
! !

"ASDBase.ic method 0x20086834; bytecode file offset 0x9830ec"
!SGIlConstSub methodsFor: 'recovered'!
ileAdjustInterval: recoveredArg1 constChild: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) asInterval.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) - (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009903c; bytecode file offset 0x9958f8"
!SGIlConstSub methodsFor: 'recovered'!
ileAdjustBound: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) ileConstChild.
    recoveredValue1 := (recoveredValue0) value.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) value.
    recoveredValue4 := (recoveredValue1) - (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200a9fb4; bytecode file offset 0x9a69f0"
!SGIlConstSub methodsFor: 'recovered'!
ileAdjustInterval: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) ileConstChild.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := (self) ileAdjustInterval: (recoveredValue0) constChild: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200acfa4; bytecode file offset 0x9a9860"
!SGIlConstSub methodsFor: 'recovered'!
createOpExprChild: recoveredArg1 constChild: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) ileBasicType.
    recoveredValue3 := (recoveredValue0) sub: (recoveredValue1) type: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bd8d8; bytecode file offset 0x9ba19c"
!SGIlConstSub methodsFor: 'recovered'!
createOpExprChild: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) ileConstChild.
    recoveredValue1 := (recoveredValue0) asIleCopy.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) ileBasicType.
    recoveredValue4 := (recoveredValue1) sub: (recoveredValue2) type: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201eee6c; bytecode file offset 0xaeb738"
!SGIlConstSub methodsFor: 'recovered'!
ileOptConstantFoldingSubOpRightConstant: recoveredArg1 type: recoveredArg2 onSuccess: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicType.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) sub: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) sub: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
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

"ASDBase.ic method 0x201fba78; bytecode file offset 0xaf8348"
!SGIlConstSub methodsFor: 'recovered'!
ileOptConstantFoldingSubOpLeftConstant: recoveredArg1 type: recoveredArg2 onSuccess: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) sub: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) add: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20239918; bytecode file offset 0xb361ec"
!SGIlConstSub methodsFor: 'recovered'!
ileOptConstantFoldingAddOpRightConstant: recoveredArg1 type: recoveredArg2 onSuccess: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicType.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) add: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleConstant.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) sub: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a9908; bytecode file offset 0xda620c"
!SGIlConstSub methodsFor: 'recovered'!
ilePropagateLimitInterval: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) negated.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicInterval.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) intersect: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) surroundingInteger.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeRepresentable.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) ilePropagateLimitInterval: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileCopyLimitAttributesArithOpExpr: (recoveredStack1) originalExpr: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) resetGoalInterval.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) neg.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicType.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) add: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleConstSubExpr.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) ilePropagateLimitInterval: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

