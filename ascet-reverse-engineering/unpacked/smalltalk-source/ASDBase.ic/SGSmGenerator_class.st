"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20053dbc; bytecode file offset 0x951190"
!SGSmGenerator class methodsFor: 'recovered'!
initializeHistoryWith0: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    InitializeHistoryWith0 := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200542a8; bytecode file offset 0x951190"
!SGSmGenerator class methodsFor: 'recovered'!
optimizeSMAssign: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    OptimizeSMAssign := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200545b4; bytecode file offset 0x951190"
!SGSmGenerator class methodsFor: 'recovered'!
assignSMBeforeTransitionAction: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    AssignSMBeforeTransitionAction := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200efd48; bytecode file offset 0x9ec648"
!SGSmGenerator class methodsFor: 'recovered'!
assignSMBeforeTransitionAction
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AssignSMBeforeTransitionAction.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := AssignSMBeforeTransitionAction.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20105128; bytecode file offset 0xa01a28"
!SGSmGenerator class methodsFor: 'recovered'!
initializeHistoryWith0
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := InitializeHistoryWith0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            InitializeHistoryWith0 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := InitializeHistoryWith0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20105134; bytecode file offset 0xa01a28"
!SGSmGenerator class methodsFor: 'recovered'!
optimizeSMAssign
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OptimizeSMAssign.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            OptimizeSMAssign := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := OptimizeSMAssign.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20355604; bytecode file offset 0xc51ef4"
!SGSmGenerator class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) generateFlatStateMachine.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGSmFlatGenerator.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := SGSmHierarchyGenerator.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := SGSmGenerator.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) initializeHistoryWith0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) initializeHistoryWith0: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) optimizeStaticActionsForSM.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := SGSmOptimizeStaticAction.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) create.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := SGSmNoOptStaticAction.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) create.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) staticsOptimizer: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) misraComplianceForSM.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := SGSmMISRACompliance.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) create.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := SGSmNoMISRACompliance.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) create.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) misraCompliance: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2056d374; bytecode file offset 0xe69c58"
!SGSmGenerator class methodsFor: 'recovered'!
normalizeESDL: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_2001297'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38Stack4 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := recoveredLocal2.
            recoveredBlock38PC := 47.
        ].
        recoveredBlock38Step = 47 ifTrue: [
            (recoveredBlock38Stack1) ifTrue: [recoveredBlock38PC := 50] ifFalse: [recoveredBlock38PC := 88].
        ].
        recoveredBlock38Step = 50 ifTrue: [
            recoveredBlock38Stack1 := recoveredLocal3.
            recoveredBlock38PC := 53.
        ].
        recoveredBlock38Step = 53 ifTrue: [
            recoveredBlock38Stack2 := $*.
            recoveredBlock38PC := 56.
        ].
        recoveredBlock38Step = 56 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) = (recoveredBlock38Stack2).
            recoveredBlock38PC := 57.
        ].
        recoveredBlock38Step = 57 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 58.
        ].
        recoveredBlock38Step = 58 ifTrue: [
            recoveredBlock38Stack3 := $/.
            recoveredBlock38PC := 62.
        ].
        recoveredBlock38Step = 62 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) = (recoveredBlock38Stack3).
            recoveredBlock38PC := 63.
        ].
        recoveredBlock38Step = 63 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) and: (recoveredBlock38Stack2).
            recoveredBlock38PC := 65.
        ].
        recoveredBlock38Step = 65 ifTrue: [
            (recoveredBlock38Stack1) ifTrue: [recoveredBlock38PC := 68] ifFalse: [recoveredBlock38PC := 80].
        ].
        recoveredBlock38Step = 68 ifTrue: [
            recoveredBlock38Stack1 := false.
            recoveredBlock38PC := 69.
        ].
        recoveredBlock38Step = 69 ifTrue: [
            recoveredLocal2 := recoveredBlock38Stack1.
            recoveredBlock38PC := 72.
        ].
        recoveredBlock38Step = 72 ifTrue: [
            recoveredBlock38Stack1 := nil.
            recoveredBlock38PC := 73.
        ].
        recoveredBlock38Step = 73 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Stack1.
            recoveredBlock38PC := 74.
        ].
        recoveredBlock38Step = 74 ifTrue: [
            recoveredLocal3 := recoveredBlock38Stack2.
            recoveredBlock38PC := 77.
        ].
        recoveredBlock38Step = 77 ifTrue: [
            recoveredBlock38PC := 85.
        ].
        recoveredBlock38Step = 80 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Arg1.
            recoveredBlock38PC := 81.
        ].
        recoveredBlock38Step = 81 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Stack1.
            recoveredBlock38PC := 82.
        ].
        recoveredBlock38Step = 82 ifTrue: [
            recoveredLocal3 := recoveredBlock38Stack2.
            recoveredBlock38PC := 85.
        ].
        recoveredBlock38Step = 85 ifTrue: [
            recoveredBlock38PC := 197.
        ].
        recoveredBlock38Step = 88 ifTrue: [
            recoveredBlock38Stack1 := recoveredLocal1.
            recoveredBlock38PC := 91.
        ].
        recoveredBlock38Step = 91 ifTrue: [
            (recoveredBlock38Stack1) ifTrue: [recoveredBlock38PC := 94] ifFalse: [recoveredBlock38PC := 118].
        ].
        recoveredBlock38Step = 94 ifTrue: [
            recoveredBlock38Stack1 := nil.
            recoveredBlock38PC := 95.
        ].
        recoveredBlock38Step = 95 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 96.
        ].
        recoveredBlock38Step = 96 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) value.
            recoveredBlock38PC := 98.
        ].
        recoveredBlock38Step = 98 ifTrue: [
            recoveredBlock38Stack3 := 10.
            recoveredBlock38PC := 100.
        ].
        recoveredBlock38Step = 100 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) = (recoveredBlock38Stack3).
            recoveredBlock38PC := 101.
        ].
        recoveredBlock38Step = 101 ifTrue: [
            (recoveredBlock38Stack2) ifTrue: [recoveredBlock38PC := 104] ifFalse: [recoveredBlock38PC := 114].
        ].
        recoveredBlock38Step = 104 ifTrue: [
            recoveredBlock38PC := 105.
        ].
        recoveredBlock38Step = 105 ifTrue: [
            recoveredBlock38Stack1 := false.
            recoveredBlock38PC := 106.
        ].
        recoveredBlock38Step = 106 ifTrue: [
            recoveredLocal1 := recoveredBlock38Stack1.
            recoveredBlock38PC := 109.
        ].
        recoveredBlock38Step = 109 ifTrue: [
            recoveredBlock38Stack1 := nil.
            recoveredBlock38PC := 110.
        ].
        recoveredBlock38Step = 110 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Stack1.
            recoveredBlock38PC := 111.
        ].
        recoveredBlock38Step = 111 ifTrue: [
            recoveredLocal3 := recoveredBlock38Stack2.
            recoveredBlock38PC := 114.
        ].
        recoveredBlock38Step = 114 ifTrue: [
            recoveredBlock38PC := 197.
        ].
        recoveredBlock38Step = 118 ifTrue: [
            recoveredBlock38Stack1 := recoveredLocal3.
            recoveredBlock38PC := 121.
        ].
        recoveredBlock38Step = 121 ifTrue: [
            recoveredBlock38Stack2 := $/.
            recoveredBlock38PC := 124.
        ].
        recoveredBlock38Step = 124 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) = (recoveredBlock38Stack2).
            recoveredBlock38PC := 125.
        ].
        recoveredBlock38Step = 125 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 126.
        ].
        recoveredBlock38Step = 126 ifTrue: [
            recoveredBlock38Stack3 := $*.
            recoveredBlock38PC := 130.
        ].
        recoveredBlock38Step = 130 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) = (recoveredBlock38Stack3).
            recoveredBlock38PC := 131.
        ].
        recoveredBlock38Step = 131 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) and: (recoveredBlock38Stack2).
            recoveredBlock38PC := 133.
        ].
        recoveredBlock38Step = 133 ifTrue: [
            (recoveredBlock38Stack1) ifTrue: [recoveredBlock38PC := 136] ifFalse: [recoveredBlock38PC := 144].
        ].
        recoveredBlock38Step = 136 ifTrue: [
            recoveredBlock38Stack1 := true.
            recoveredBlock38PC := 137.
        ].
        recoveredBlock38Step = 137 ifTrue: [
            recoveredLocal2 := recoveredBlock38Stack1.
            recoveredBlock38PC := 140.
        ].
        recoveredBlock38Step = 140 ifTrue: [
            recoveredBlock38PC := 192.
        ].
        recoveredBlock38Step = 144 ifTrue: [
            recoveredBlock38Stack1 := recoveredLocal3.
            recoveredBlock38PC := 147.
        ].
        recoveredBlock38Step = 147 ifTrue: [
            recoveredBlock38Stack2 := $/.
            recoveredBlock38PC := 150.
        ].
        recoveredBlock38Step = 150 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) = (recoveredBlock38Stack2).
            recoveredBlock38PC := 151.
        ].
        recoveredBlock38Step = 151 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 152.
        ].
        recoveredBlock38Step = 152 ifTrue: [
            recoveredBlock38Stack3 := $/.
            recoveredBlock38PC := 156.
        ].
        recoveredBlock38Step = 156 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) = (recoveredBlock38Stack3).
            recoveredBlock38PC := 157.
        ].
        recoveredBlock38Step = 157 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) and: (recoveredBlock38Stack2).
            recoveredBlock38PC := 159.
        ].
        recoveredBlock38Step = 159 ifTrue: [
            (recoveredBlock38Stack1) ifTrue: [recoveredBlock38PC := 162] ifFalse: [recoveredBlock38PC := 170].
        ].
        recoveredBlock38Step = 162 ifTrue: [
            recoveredBlock38Stack1 := true.
            recoveredBlock38PC := 163.
        ].
        recoveredBlock38Step = 163 ifTrue: [
            recoveredLocal1 := recoveredBlock38Stack1.
            recoveredBlock38PC := 166.
        ].
        recoveredBlock38Step = 166 ifTrue: [
            recoveredBlock38PC := 192.
        ].
        recoveredBlock38Step = 170 ifTrue: [
            recoveredBlock38Stack1 := recoveredLocal3.
            recoveredBlock38PC := 173.
        ].
        recoveredBlock38Step = 173 ifTrue: [
            (recoveredBlock38Stack1 == nil) ifTrue: [recoveredBlock38PC := 192] ifFalse: [recoveredBlock38PC := 176].
        ].
        recoveredBlock38Step = 176 ifTrue: [
            recoveredBlock38Stack1 := recoveredLocal3.
            recoveredBlock38PC := 179.
        ].
        recoveredBlock38Step = 179 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) isSeparator.
            recoveredBlock38PC := 181.
        ].
        recoveredBlock38Step = 181 ifTrue: [
            (recoveredBlock38Stack1) ifTrue: [recoveredBlock38PC := 192] ifFalse: [recoveredBlock38PC := 184].
        ].
        recoveredBlock38Step = 184 ifTrue: [
            recoveredBlock38Stack1 := recoveredLocal4.
            recoveredBlock38PC := 187.
        ].
        recoveredBlock38Step = 187 ifTrue: [
            recoveredBlock38Stack2 := recoveredLocal3.
            recoveredBlock38PC := 190.
        ].
        recoveredBlock38Step = 190 ifTrue: [
            (recoveredBlock38Stack1) nextPut: (recoveredBlock38Stack2).
            recoveredBlock38PC := 192.
        ].
        recoveredBlock38Step = 192 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Arg1.
            recoveredBlock38PC := 193.
        ].
        recoveredBlock38Step = 193 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Stack1.
            recoveredBlock38PC := 194.
        ].
        recoveredBlock38Step = 194 ifTrue: [
            recoveredLocal3 := recoveredBlock38Stack2.
            recoveredBlock38PC := 197.
        ].
        recoveredBlock38Step = 197 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack1.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack4 == nil) ifTrue: [recoveredPC := 223] ifFalse: [recoveredPC := 216].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack3 := (recoveredStack3) isSeparator.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := (recoveredStack3) not.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 230] ifFalse: [recoveredPC := 238].
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

