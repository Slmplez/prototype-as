"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x205665f4; bytecode file offset 0xe62ef0"
!RBChangedAxisGridGraph methodsFor: 'recovered'!
updateDisplayedObjects
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal6 := recoveredValue1.
    recoveredValue2 := channel.
    recoveredValue3 := (recoveredValue2) getLogXAxis.
    recoveredValue4 := (recoveredValue3) graphObject.
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := channel.
    recoveredValue6 := (recoveredValue5) getLogWAxis.
    recoveredValue7 := (recoveredValue6) graphObject.
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) getTicObjects.
    recoveredLocal5 := recoveredValue9.
    recoveredValue10 := recoveredLocal5.
    recoveredValue11 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Stack0 recoveredBlock36Stack1 recoveredBlock36Stack2 recoveredBlock36Stack3 recoveredBlock36Stack4 recoveredBlock36Stack5 recoveredBlock36Stack6 recoveredBlock36Stack7 recoveredBlock36PC recoveredBlock36Step recoveredBlock36Done recoveredBlock36Result |
    recoveredBlock36Stack0 := self.
    recoveredBlock36PC := 42.
    recoveredBlock36Done := false.
    [recoveredBlock36Done not] whileTrue: [
        recoveredBlock36Step := recoveredBlock36PC.
        recoveredBlock36Step = 42 ifTrue: [
            recoveredBlock36Stack1 := nil.
            recoveredBlock36PC := 43.
        ].
        recoveredBlock36Step = 43 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 44.
        ].
        recoveredBlock36Step = 44 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) pointA.
            recoveredBlock36PC := 46.
        ].
        recoveredBlock36Step = 46 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) x.
            recoveredBlock36PC := 48.
        ].
        recoveredBlock36Step = 48 ifTrue: [
            recoveredBlock36Stack3 := frame.
            recoveredBlock36PC := 50.
        ].
        recoveredBlock36Step = 50 ifTrue: [
            recoveredBlock36Stack3 := (recoveredBlock36Stack3) origin.
            recoveredBlock36PC := 52.
        ].
        recoveredBlock36Step = 52 ifTrue: [
            recoveredBlock36Stack3 := (recoveredBlock36Stack3) x.
            recoveredBlock36PC := 54.
        ].
        recoveredBlock36Step = 54 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) = (recoveredBlock36Stack3).
            recoveredBlock36PC := 55.
        ].
        recoveredBlock36Step = 55 ifTrue: [
            recoveredBlock36Stack3 := recoveredBlock36Arg1.
            recoveredBlock36PC := 56.
        ].
        recoveredBlock36Step = 56 ifTrue: [
            recoveredBlock36Stack3 := (recoveredBlock36Stack3) pointA.
            recoveredBlock36PC := 58.
        ].
        recoveredBlock36Step = 58 ifTrue: [
            recoveredBlock36Stack3 := (recoveredBlock36Stack3) x.
            recoveredBlock36PC := 60.
        ].
        recoveredBlock36Step = 60 ifTrue: [
            recoveredBlock36Stack4 := frame.
            recoveredBlock36PC := 62.
        ].
        recoveredBlock36Step = 62 ifTrue: [
            recoveredBlock36Stack4 := (recoveredBlock36Stack4) corner.
            recoveredBlock36PC := 64.
        ].
        recoveredBlock36Step = 64 ifTrue: [
            recoveredBlock36Stack4 := (recoveredBlock36Stack4) x.
            recoveredBlock36PC := 66.
        ].
        recoveredBlock36Step = 66 ifTrue: [
            recoveredBlock36Stack3 := (recoveredBlock36Stack3) = (recoveredBlock36Stack4).
            recoveredBlock36PC := 67.
        ].
        recoveredBlock36Step = 67 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) | (recoveredBlock36Stack3).
            recoveredBlock36PC := 69.
        ].
        recoveredBlock36Step = 69 ifTrue: [
            (recoveredBlock36Stack2) ifTrue: [recoveredBlock36PC := 126] ifFalse: [recoveredBlock36PC := 72].
        ].
        recoveredBlock36Step = 72 ifTrue: [
            recoveredBlock36PC := 73.
        ].
        recoveredBlock36Step = 73 ifTrue: [
            recoveredBlock36Stack1 := recoveredBlock36Arg1.
            recoveredBlock36PC := 74.
        ].
        recoveredBlock36Step = 74 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) pointA.
            recoveredBlock36PC := 76.
        ].
        recoveredBlock36Step = 76 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) x.
            recoveredBlock36PC := 78.
        ].
        recoveredBlock36Step = 78 ifTrue: [
            recoveredBlock36Stack2 := frame.
            recoveredBlock36PC := 80.
        ].
        recoveredBlock36Step = 80 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) origin.
            recoveredBlock36PC := 82.
        ].
        recoveredBlock36Step = 82 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) y.
            recoveredBlock36PC := 84.
        ].
        recoveredBlock36Step = 84 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) @ (recoveredBlock36Stack2).
            recoveredBlock36PC := 86.
        ].
        recoveredBlock36Step = 86 ifTrue: [
            recoveredLocal4 := recoveredBlock36Stack1.
            recoveredBlock36PC := 89.
        ].
        recoveredBlock36Step = 89 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal4.
            recoveredBlock36PC := 92.
        ].
        recoveredBlock36Step = 92 ifTrue: [
            recoveredBlock36Stack2 := 0.
            recoveredBlock36PC := 94.
        ].
        recoveredBlock36Step = 94 ifTrue: [
            recoveredBlock36Stack3 := frame.
            recoveredBlock36PC := 96.
        ].
        recoveredBlock36Step = 96 ifTrue: [
            recoveredBlock36Stack3 := (recoveredBlock36Stack3) extent.
            recoveredBlock36PC := 98.
        ].
        recoveredBlock36Step = 98 ifTrue: [
            recoveredBlock36Stack3 := (recoveredBlock36Stack3) y.
            recoveredBlock36PC := 100.
        ].
        recoveredBlock36Step = 100 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) @ (recoveredBlock36Stack3).
            recoveredBlock36PC := 102.
        ].
        recoveredBlock36Step = 102 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) + (recoveredBlock36Stack2).
            recoveredBlock36PC := 103.
        ].
        recoveredBlock36Step = 103 ifTrue: [
            recoveredLocal3 := recoveredBlock36Stack1.
            recoveredBlock36PC := 106.
        ].
        recoveredBlock36Step = 106 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal6.
            recoveredBlock36PC := 109.
        ].
        recoveredBlock36Step = 109 ifTrue: [
            recoveredBlock36Stack2 := RBLineGO.
            recoveredBlock36PC := 111.
        ].
        recoveredBlock36Step = 111 ifTrue: [
            recoveredBlock36Stack3 := lineStyle.
            recoveredBlock36PC := 113.
        ].
        recoveredBlock36Step = 113 ifTrue: [
            recoveredBlock36Stack4 := manager.
            recoveredBlock36PC := 115.
        ].
        recoveredBlock36Step = 115 ifTrue: [
            recoveredBlock36Stack5 := recoveredLocal4.
            recoveredBlock36PC := 118.
        ].
        recoveredBlock36Step = 118 ifTrue: [
            recoveredBlock36Stack6 := recoveredLocal3.
            recoveredBlock36PC := 121.
        ].
        recoveredBlock36Step = 121 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) createWithLineStyle: (recoveredBlock36Stack3) manager: (recoveredBlock36Stack4) pointA: (recoveredBlock36Stack5) pointB: (recoveredBlock36Stack6).
            recoveredBlock36PC := 124.
        ].
        recoveredBlock36Step = 124 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) add: (recoveredBlock36Stack2).
            recoveredBlock36PC := 126.
        ].
        recoveredBlock36Step = 126 ifTrue: [
            recoveredBlock36Result := recoveredBlock36Stack1.
            recoveredBlock36Done := true.
        ].
    ].
    recoveredBlock36Result
].
    (recoveredValue10) do: (recoveredValue11).
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := (recoveredValue12) getTicObjects.
    recoveredLocal5 := recoveredValue13.
    recoveredValue14 := recoveredLocal5.
    recoveredValue15 := [:recoveredBlock140Arg1 | 
    | recoveredBlock140Stack0 recoveredBlock140Stack1 recoveredBlock140Stack2 recoveredBlock140Stack3 recoveredBlock140Stack4 recoveredBlock140Stack5 recoveredBlock140Stack6 recoveredBlock140Stack7 recoveredBlock140PC recoveredBlock140Step recoveredBlock140Done recoveredBlock140Result |
    recoveredBlock140Stack0 := self.
    recoveredBlock140PC := 146.
    recoveredBlock140Done := false.
    [recoveredBlock140Done not] whileTrue: [
        recoveredBlock140Step := recoveredBlock140PC.
        recoveredBlock140Step = 146 ifTrue: [
            recoveredBlock140Stack1 := nil.
            recoveredBlock140PC := 147.
        ].
        recoveredBlock140Step = 147 ifTrue: [
            recoveredBlock140Stack2 := recoveredBlock140Arg1.
            recoveredBlock140PC := 148.
        ].
        recoveredBlock140Step = 148 ifTrue: [
            recoveredBlock140Stack2 := (recoveredBlock140Stack2) pointA.
            recoveredBlock140PC := 150.
        ].
        recoveredBlock140Step = 150 ifTrue: [
            recoveredBlock140Stack2 := (recoveredBlock140Stack2) y.
            recoveredBlock140PC := 152.
        ].
        recoveredBlock140Step = 152 ifTrue: [
            recoveredBlock140Stack3 := frame.
            recoveredBlock140PC := 154.
        ].
        recoveredBlock140Step = 154 ifTrue: [
            recoveredBlock140Stack3 := (recoveredBlock140Stack3) origin.
            recoveredBlock140PC := 156.
        ].
        recoveredBlock140Step = 156 ifTrue: [
            recoveredBlock140Stack3 := (recoveredBlock140Stack3) y.
            recoveredBlock140PC := 158.
        ].
        recoveredBlock140Step = 158 ifTrue: [
            recoveredBlock140Stack2 := (recoveredBlock140Stack2) = (recoveredBlock140Stack3).
            recoveredBlock140PC := 159.
        ].
        recoveredBlock140Step = 159 ifTrue: [
            recoveredBlock140Stack3 := recoveredBlock140Arg1.
            recoveredBlock140PC := 160.
        ].
        recoveredBlock140Step = 160 ifTrue: [
            recoveredBlock140Stack3 := (recoveredBlock140Stack3) pointA.
            recoveredBlock140PC := 162.
        ].
        recoveredBlock140Step = 162 ifTrue: [
            recoveredBlock140Stack3 := (recoveredBlock140Stack3) y.
            recoveredBlock140PC := 164.
        ].
        recoveredBlock140Step = 164 ifTrue: [
            recoveredBlock140Stack4 := frame.
            recoveredBlock140PC := 166.
        ].
        recoveredBlock140Step = 166 ifTrue: [
            recoveredBlock140Stack4 := (recoveredBlock140Stack4) corner.
            recoveredBlock140PC := 168.
        ].
        recoveredBlock140Step = 168 ifTrue: [
            recoveredBlock140Stack4 := (recoveredBlock140Stack4) y.
            recoveredBlock140PC := 170.
        ].
        recoveredBlock140Step = 170 ifTrue: [
            recoveredBlock140Stack3 := (recoveredBlock140Stack3) = (recoveredBlock140Stack4).
            recoveredBlock140PC := 171.
        ].
        recoveredBlock140Step = 171 ifTrue: [
            recoveredBlock140Stack2 := (recoveredBlock140Stack2) | (recoveredBlock140Stack3).
            recoveredBlock140PC := 173.
        ].
        recoveredBlock140Step = 173 ifTrue: [
            (recoveredBlock140Stack2) ifTrue: [recoveredBlock140PC := 230] ifFalse: [recoveredBlock140PC := 176].
        ].
        recoveredBlock140Step = 176 ifTrue: [
            recoveredBlock140PC := 177.
        ].
        recoveredBlock140Step = 177 ifTrue: [
            recoveredBlock140Stack1 := frame.
            recoveredBlock140PC := 179.
        ].
        recoveredBlock140Step = 179 ifTrue: [
            recoveredBlock140Stack1 := (recoveredBlock140Stack1) origin.
            recoveredBlock140PC := 181.
        ].
        recoveredBlock140Step = 181 ifTrue: [
            recoveredBlock140Stack1 := (recoveredBlock140Stack1) x.
            recoveredBlock140PC := 183.
        ].
        recoveredBlock140Step = 183 ifTrue: [
            recoveredBlock140Stack2 := recoveredBlock140Arg1.
            recoveredBlock140PC := 184.
        ].
        recoveredBlock140Step = 184 ifTrue: [
            recoveredBlock140Stack2 := (recoveredBlock140Stack2) pointA.
            recoveredBlock140PC := 186.
        ].
        recoveredBlock140Step = 186 ifTrue: [
            recoveredBlock140Stack2 := (recoveredBlock140Stack2) y.
            recoveredBlock140PC := 188.
        ].
        recoveredBlock140Step = 188 ifTrue: [
            recoveredBlock140Stack1 := (recoveredBlock140Stack1) @ (recoveredBlock140Stack2).
            recoveredBlock140PC := 190.
        ].
        recoveredBlock140Step = 190 ifTrue: [
            recoveredLocal4 := recoveredBlock140Stack1.
            recoveredBlock140PC := 193.
        ].
        recoveredBlock140Step = 193 ifTrue: [
            recoveredBlock140Stack1 := recoveredLocal4.
            recoveredBlock140PC := 196.
        ].
        recoveredBlock140Step = 196 ifTrue: [
            recoveredBlock140Stack2 := frame.
            recoveredBlock140PC := 198.
        ].
        recoveredBlock140Step = 198 ifTrue: [
            recoveredBlock140Stack2 := (recoveredBlock140Stack2) extent.
            recoveredBlock140PC := 200.
        ].
        recoveredBlock140Step = 200 ifTrue: [
            recoveredBlock140Stack2 := (recoveredBlock140Stack2) x.
            recoveredBlock140PC := 202.
        ].
        recoveredBlock140Step = 202 ifTrue: [
            recoveredBlock140Stack3 := 0.
            recoveredBlock140PC := 204.
        ].
        recoveredBlock140Step = 204 ifTrue: [
            recoveredBlock140Stack2 := (recoveredBlock140Stack2) @ (recoveredBlock140Stack3).
            recoveredBlock140PC := 206.
        ].
        recoveredBlock140Step = 206 ifTrue: [
            recoveredBlock140Stack1 := (recoveredBlock140Stack1) + (recoveredBlock140Stack2).
            recoveredBlock140PC := 207.
        ].
        recoveredBlock140Step = 207 ifTrue: [
            recoveredLocal3 := recoveredBlock140Stack1.
            recoveredBlock140PC := 210.
        ].
        recoveredBlock140Step = 210 ifTrue: [
            recoveredBlock140Stack1 := recoveredLocal6.
            recoveredBlock140PC := 213.
        ].
        recoveredBlock140Step = 213 ifTrue: [
            recoveredBlock140Stack2 := RBLineGO.
            recoveredBlock140PC := 215.
        ].
        recoveredBlock140Step = 215 ifTrue: [
            recoveredBlock140Stack3 := lineStyle.
            recoveredBlock140PC := 217.
        ].
        recoveredBlock140Step = 217 ifTrue: [
            recoveredBlock140Stack4 := manager.
            recoveredBlock140PC := 219.
        ].
        recoveredBlock140Step = 219 ifTrue: [
            recoveredBlock140Stack5 := recoveredLocal4.
            recoveredBlock140PC := 222.
        ].
        recoveredBlock140Step = 222 ifTrue: [
            recoveredBlock140Stack6 := recoveredLocal3.
            recoveredBlock140PC := 225.
        ].
        recoveredBlock140Step = 225 ifTrue: [
            recoveredBlock140Stack2 := (recoveredBlock140Stack2) createWithLineStyle: (recoveredBlock140Stack3) manager: (recoveredBlock140Stack4) pointA: (recoveredBlock140Stack5) pointB: (recoveredBlock140Stack6).
            recoveredBlock140PC := 228.
        ].
        recoveredBlock140Step = 228 ifTrue: [
            recoveredBlock140Stack1 := (recoveredBlock140Stack1) add: (recoveredBlock140Stack2).
            recoveredBlock140PC := 230.
        ].
        recoveredBlock140Step = 230 ifTrue: [
            recoveredBlock140Result := recoveredBlock140Stack1.
            recoveredBlock140Done := true.
        ].
    ].
    recoveredBlock140Result
].
    (recoveredValue14) do: (recoveredValue15).
    recoveredValue16 := recoveredLocal6.
    displayedObjects := recoveredValue16.
    ^self
! !

