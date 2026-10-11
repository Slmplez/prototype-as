"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015a10; bytecode file offset 0x92209c"
!SGRoundedOrthogonalLineGO methodsFor: 'recovered'!
connectorType
    ^'orthogonal'
! !

"ASDBase.ic method 0x20032f64; bytecode file offset 0x934580"
!SGRoundedOrthogonalLineGO methodsFor: 'recovered'!
identifier
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) connectionWrapper.
    recoveredValue1 := (recoveredValue0) identifier.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20084720; bytecode file offset 0x981ca4"
!SGRoundedOrthogonalLineGO methodsFor: 'recovered'!
cornerPoints: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) initializeBuildPointColl: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a30a8; bytecode file offset 0x99f9d4"
!SGRoundedOrthogonalLineGO methodsFor: 'recovered'!
fitToRaster: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := ('hw') == ('call_2008402718').
    ^self
! !

"ASDBase.ic method 0x200af438; bytecode file offset 0x9abcf4"
!SGRoundedOrthogonalLineGO methodsFor: 'recovered'!
buildLogic: recoveredArg1 for: recoveredArg2 startConnectionPoint: recoveredArg3 endConnectionPoint: recoveredArg4
    (self) runtimeAssert: (false) additionalInfo: ('Method is not implemented.').
    ^self
! !

"ASDBase.ic method 0x200b93a0; bytecode file offset 0x9b5c5c"
!SGRoundedOrthogonalLineGO methodsFor: 'recovered'!
getDynamicStateConnectorDirectionPointFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('hw') == ('call_2008402718').
    recoveredValue1 := recoveredArg1.
    ^recoveredValue1
! !

"ASDBase.ic method 0x202493fc; bytecode file offset 0xb45cc8"
!SGRoundedOrthogonalLineGO methodsFor: 'recovered'!
pointA
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) cornerPoints.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPosition.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) cornerPoints.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) cornerPoints.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock25Value0 |
    recoveredBlock25Value0 := (self) getPosition.
    recoveredBlock25Value0
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056b048; bytecode file offset 0xe67970"
!SGRoundedOrthogonalLineGO methodsFor: 'recovered'!
displayOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) lineStyle.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := RBLineStyle.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) lineStyle: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) setGC: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) lineColl.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [:recoveredBlock47Arg1 :recoveredBlock47Arg2 | 
    | recoveredBlock47Local1 recoveredBlock47Local2 recoveredBlock47Stack0 recoveredBlock47Stack1 recoveredBlock47Stack2 recoveredBlock47Stack3 recoveredBlock47Stack4 recoveredBlock47Stack5 recoveredBlock47Stack6 recoveredBlock47Stack7 recoveredBlock47Stack8 recoveredBlock47PC recoveredBlock47Step recoveredBlock47Done recoveredBlock47Result |
    recoveredBlock47Stack0 := self.
    recoveredBlock47PC := 54.
    recoveredBlock47Done := false.
    [recoveredBlock47Done not] whileTrue: [
        recoveredBlock47Step := recoveredBlock47PC.
        recoveredBlock47Step = 54 ifTrue: [
            recoveredBlock47Stack1 := recoveredLocal6.
            recoveredBlock47PC := 57.
        ].
        recoveredBlock47Step = 57 ifTrue: [
            recoveredBlock47Stack2 := recoveredBlock47Arg2.
            recoveredBlock47PC := 58.
        ].
        recoveredBlock47Step = 58 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) + (-1).
            recoveredBlock47PC := 59.
        ].
        recoveredBlock47Step = 59 ifTrue: [
            recoveredBlock47Stack3 := [].
            recoveredBlock47PC := 61.
        ].
        recoveredBlock47Step = 61 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) at: (recoveredBlock47Stack2) ifAbsent: (recoveredBlock47Stack3).
            recoveredBlock47PC := 63.
        ].
        recoveredBlock47Step = 63 ifTrue: [
            recoveredBlock47Local2 := recoveredBlock47Stack1.
            recoveredBlock47PC := 64.
        ].
        recoveredBlock47Step = 64 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Arg1.
            recoveredBlock47PC := 65.
        ].
        recoveredBlock47Step = 65 ifTrue: [
            recoveredBlock47Stack2 := recoveredBlock47Local2.
            recoveredBlock47PC := 66.
        ].
        recoveredBlock47Step = 66 ifTrue: [
            recoveredBlock47Stack3 := recoveredLocal6.
            recoveredBlock47PC := 69.
        ].
        recoveredBlock47Step = 69 ifTrue: [
            recoveredBlock47Stack4 := recoveredBlock47Arg2.
            recoveredBlock47PC := 70.
        ].
        recoveredBlock47Step = 70 ifTrue: [
            recoveredBlock47Stack4 := (recoveredBlock47Stack4) + (1).
            recoveredBlock47PC := 71.
        ].
        recoveredBlock47Step = 71 ifTrue: [
            recoveredBlock47Stack5 := [].
            recoveredBlock47PC := 73.
        ].
        recoveredBlock47Step = 73 ifTrue: [
            recoveredBlock47Stack3 := (recoveredBlock47Stack3) at: (recoveredBlock47Stack4) ifAbsent: (recoveredBlock47Stack5).
            recoveredBlock47PC := 75.
        ].
        recoveredBlock47Step = 75 ifTrue: [
            recoveredBlock47Stack4 := PinDistance.
            recoveredBlock47PC := 77.
        ].
        recoveredBlock47Step = 77 ifTrue: [
            recoveredBlock47Stack5 := 2.
            recoveredBlock47PC := 79.
        ].
        recoveredBlock47Step = 79 ifTrue: [
            recoveredBlock47Stack4 := (recoveredBlock47Stack4) * (recoveredBlock47Stack5).
            recoveredBlock47PC := 80.
        ].
        recoveredBlock47Step = 80 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) getPointsForRoundedConnectionLinePredecessor: (recoveredBlock47Stack2) successor: (recoveredBlock47Stack3) radius: (recoveredBlock47Stack4).
            recoveredBlock47PC := 83.
        ].
        recoveredBlock47Step = 83 ifTrue: [
            recoveredBlock47Local1 := recoveredBlock47Stack1.
            recoveredBlock47PC := 84.
        ].
        recoveredBlock47Step = 84 ifTrue: [
            recoveredBlock47Stack1 := recoveredArg1.
            recoveredBlock47PC := 87.
        ].
        recoveredBlock47Step = 87 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) window.
            recoveredBlock47PC := 89.
        ].
        recoveredBlock47Step = 89 ifTrue: [
            recoveredBlock47Stack2 := recoveredLocal4.
            recoveredBlock47PC := 92.
        ].
        recoveredBlock47Step = 92 ifTrue: [
            recoveredBlock47Stack3 := recoveredBlock47Local1.
            recoveredBlock47PC := 93.
        ].
        recoveredBlock47Step = 93 ifTrue: [
            recoveredBlock47Stack4 := 1.
            recoveredBlock47PC := 95.
        ].
        recoveredBlock47Step = 95 ifTrue: [
            recoveredBlock47Stack3 := (recoveredBlock47Stack3) at: (recoveredBlock47Stack4).
            recoveredBlock47PC := 97.
        ].
        recoveredBlock47Step = 97 ifTrue: [
            recoveredBlock47Stack3 := (recoveredBlock47Stack3) x.
            recoveredBlock47PC := 99.
        ].
        recoveredBlock47Step = 99 ifTrue: [
            recoveredBlock47Stack4 := recoveredBlock47Local1.
            recoveredBlock47PC := 100.
        ].
        recoveredBlock47Step = 100 ifTrue: [
            recoveredBlock47Stack5 := 1.
            recoveredBlock47PC := 102.
        ].
        recoveredBlock47Step = 102 ifTrue: [
            recoveredBlock47Stack4 := (recoveredBlock47Stack4) at: (recoveredBlock47Stack5).
            recoveredBlock47PC := 104.
        ].
        recoveredBlock47Step = 104 ifTrue: [
            recoveredBlock47Stack4 := (recoveredBlock47Stack4) y.
            recoveredBlock47PC := 106.
        ].
        recoveredBlock47Step = 106 ifTrue: [
            recoveredBlock47Stack5 := recoveredBlock47Local1.
            recoveredBlock47PC := 107.
        ].
        recoveredBlock47Step = 107 ifTrue: [
            recoveredBlock47Stack6 := 2.
            recoveredBlock47PC := 109.
        ].
        recoveredBlock47Step = 109 ifTrue: [
            recoveredBlock47Stack5 := (recoveredBlock47Stack5) at: (recoveredBlock47Stack6).
            recoveredBlock47PC := 111.
        ].
        recoveredBlock47Step = 111 ifTrue: [
            recoveredBlock47Stack5 := (recoveredBlock47Stack5) x.
            recoveredBlock47PC := 113.
        ].
        recoveredBlock47Step = 113 ifTrue: [
            recoveredBlock47Stack6 := recoveredBlock47Local1.
            recoveredBlock47PC := 114.
        ].
        recoveredBlock47Step = 114 ifTrue: [
            recoveredBlock47Stack7 := 2.
            recoveredBlock47PC := 116.
        ].
        recoveredBlock47Step = 116 ifTrue: [
            recoveredBlock47Stack6 := (recoveredBlock47Stack6) at: (recoveredBlock47Stack7).
            recoveredBlock47PC := 118.
        ].
        recoveredBlock47Step = 118 ifTrue: [
            recoveredBlock47Stack6 := (recoveredBlock47Stack6) y.
            recoveredBlock47PC := 120.
        ].
        recoveredBlock47Step = 120 ifTrue: [
            (recoveredBlock47Stack1) drawLine: (recoveredBlock47Stack2) x1: (recoveredBlock47Stack3) y1: (recoveredBlock47Stack4) x2: (recoveredBlock47Stack5) y2: (recoveredBlock47Stack6).
            recoveredBlock47PC := 123.
        ].
        recoveredBlock47Step = 123 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Local2.
            recoveredBlock47PC := 124.
        ].
        recoveredBlock47Step = 124 ifTrue: [
            (recoveredBlock47Stack1 == nil) ifTrue: [recoveredBlock47PC := 156] ifFalse: [recoveredBlock47PC := 128].
        ].
        recoveredBlock47Step = 128 ifTrue: [
            recoveredBlock47Stack1 := recoveredLocal5.
            recoveredBlock47PC := 131.
        ].
        recoveredBlock47Step = 131 ifTrue: [
            (recoveredBlock47Stack1 == nil) ifTrue: [recoveredBlock47PC := 156] ifFalse: [recoveredBlock47PC := 134].
        ].
        recoveredBlock47Step = 134 ifTrue: [
            recoveredBlock47Stack1 := recoveredArg1.
            recoveredBlock47PC := 137.
        ].
        recoveredBlock47Step = 137 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) window.
            recoveredBlock47PC := 139.
        ].
        recoveredBlock47Step = 139 ifTrue: [
            recoveredBlock47Stack2 := recoveredLocal4.
            recoveredBlock47PC := 142.
        ].
        recoveredBlock47Step = 142 ifTrue: [
            recoveredBlock47Stack3 := recoveredLocal5.
            recoveredBlock47PC := 145.
        ].
        recoveredBlock47Step = 145 ifTrue: [
            recoveredBlock47Stack4 := recoveredBlock47Local1.
            recoveredBlock47PC := 146.
        ].
        recoveredBlock47Step = 146 ifTrue: [
            recoveredBlock47Stack5 := 1.
            recoveredBlock47PC := 148.
        ].
        recoveredBlock47Step = 148 ifTrue: [
            recoveredBlock47Stack4 := (recoveredBlock47Stack4) at: (recoveredBlock47Stack5).
            recoveredBlock47PC := 150.
        ].
        recoveredBlock47Step = 150 ifTrue: [
            recoveredBlock47Stack5 := recoveredBlock47Arg1.
            recoveredBlock47PC := 151.
        ].
        recoveredBlock47Step = 151 ifTrue: [
            recoveredBlock47Stack5 := (recoveredBlock47Stack5) pointA.
            recoveredBlock47PC := 153.
        ].
        recoveredBlock47Step = 153 ifTrue: [
            (recoveredBlock47Stack1) drawCurve: (recoveredBlock47Stack2) from: (recoveredBlock47Stack3) to: (recoveredBlock47Stack4) towards: (recoveredBlock47Stack5).
            recoveredBlock47PC := 156.
        ].
        recoveredBlock47Step = 156 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Local1.
            recoveredBlock47PC := 157.
        ].
        recoveredBlock47Step = 157 ifTrue: [
            recoveredBlock47Stack2 := 2.
            recoveredBlock47PC := 159.
        ].
        recoveredBlock47Step = 159 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) at: (recoveredBlock47Stack2).
            recoveredBlock47PC := 161.
        ].
        recoveredBlock47Step = 161 ifTrue: [
            recoveredBlock47Stack2 := recoveredBlock47Stack1.
            recoveredBlock47PC := 162.
        ].
        recoveredBlock47Step = 162 ifTrue: [
            recoveredLocal5 := recoveredBlock47Stack2.
            recoveredBlock47PC := 165.
        ].
        recoveredBlock47Step = 165 ifTrue: [
            recoveredBlock47Result := recoveredBlock47Stack1.
            recoveredBlock47Done := true.
        ].
    ].
    recoveredBlock47Result
].
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := 'call_2008402718'.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := (recoveredStack0) length.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 194] ifFalse: [recoveredPC := 220].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 206] ifFalse: [recoveredPC := 220].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPointsForArrow.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack3 := Convex.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack4 := CoordModeOrigin.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack0) fillPolygon: (recoveredStack1) points: (recoveredStack2) shape: (recoveredStack3) mode: (recoveredStack4).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

