"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200d0418; bytecode file offset 0x9ccda0"
!ASDBezier60GO methodsFor: 'recovered'!
connectorType
    | recoveredValue0 |
    recoveredValue0 := ('hw') == ('call_84169').
    ^'bezier'
! !

"ASDBase.ic method 0x205adfb0; bytecode file offset 0xeaa8d0"
!ASDBezier60GO methodsFor: 'recovered'!
generateLinePoints
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1000.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 1000.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) frame.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) extent.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) bezPoints.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) pointB.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) bezPoints.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) pointA.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) pointB.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) pointB.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := #[154 153 153 153 153 153 245 63].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) pointA.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := #[154 153 153 153 153 153 245 63].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := (recoveredStack4) pointA.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) reverse.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal13 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := #[0 0 0 0 0 0 240 63].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredPC := 291.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack3 := [:recoveredBlock185Arg1 | 
    | recoveredBlock185Local1 recoveredBlock185Stack0 recoveredBlock185Stack1 recoveredBlock185Stack2 recoveredBlock185Stack3 recoveredBlock185Stack4 recoveredBlock185Stack5 recoveredBlock185Stack6 recoveredBlock185Stack7 recoveredBlock185Stack8 recoveredBlock185PC recoveredBlock185Step recoveredBlock185Done recoveredBlock185Result |
    recoveredBlock185Stack0 := self.
    recoveredBlock185PC := 192.
    recoveredBlock185Done := false.
    [recoveredBlock185Done not] whileTrue: [
        recoveredBlock185Step := recoveredBlock185PC.
        recoveredBlock185Step = 192 ifTrue: [
            recoveredBlock185Stack1 := 0.
            recoveredBlock185PC := 194.
        ].
        recoveredBlock185Step = 194 ifTrue: [
            recoveredBlock185Local1 := recoveredBlock185Stack1.
            recoveredBlock185PC := 195.
        ].
        recoveredBlock185Step = 195 ifTrue: [
            recoveredBlock185Stack1 := recoveredBlock185Arg1.
            recoveredBlock185PC := 196.
        ].
        recoveredBlock185Step = 196 ifTrue: [
            recoveredBlock185PC := 231.
        ].
        recoveredBlock185Step = 200 ifTrue: [
            recoveredBlock185Stack2 := recoveredLocal1.
            recoveredBlock185PC := 203.
        ].
        recoveredBlock185Step = 203 ifTrue: [
            recoveredBlock185Stack3 := recoveredBlock185Local1.
            recoveredBlock185PC := 204.
        ].
        recoveredBlock185Step = 204 ifTrue: [
            recoveredBlock185Stack4 := 1.
            recoveredBlock185PC := 206.
        ].
        recoveredBlock185Step = 206 ifTrue: [
            recoveredBlock185Stack5 := recoveredLocal10.
            recoveredBlock185PC := 209.
        ].
        recoveredBlock185Step = 209 ifTrue: [
            recoveredBlock185Stack4 := (recoveredBlock185Stack4) - (recoveredBlock185Stack5).
            recoveredBlock185PC := 210.
        ].
        recoveredBlock185Step = 210 ifTrue: [
            recoveredBlock185Stack5 := recoveredLocal1.
            recoveredBlock185PC := 213.
        ].
        recoveredBlock185Step = 213 ifTrue: [
            recoveredBlock185Stack6 := recoveredBlock185Local1.
            recoveredBlock185PC := 214.
        ].
        recoveredBlock185Step = 214 ifTrue: [
            recoveredBlock185Stack5 := (recoveredBlock185Stack5) at: (recoveredBlock185Stack6).
            recoveredBlock185PC := 216.
        ].
        recoveredBlock185Step = 216 ifTrue: [
            recoveredBlock185Stack4 := (recoveredBlock185Stack4) * (recoveredBlock185Stack5).
            recoveredBlock185PC := 217.
        ].
        recoveredBlock185Step = 217 ifTrue: [
            recoveredBlock185Stack5 := recoveredLocal10.
            recoveredBlock185PC := 220.
        ].
        recoveredBlock185Step = 220 ifTrue: [
            recoveredBlock185Stack6 := recoveredLocal1.
            recoveredBlock185PC := 223.
        ].
        recoveredBlock185Step = 223 ifTrue: [
            recoveredBlock185Stack7 := recoveredBlock185Local1.
            recoveredBlock185PC := 224.
        ].
        recoveredBlock185Step = 224 ifTrue: [
            recoveredBlock185Stack7 := (recoveredBlock185Stack7) + (1).
            recoveredBlock185PC := 225.
        ].
        recoveredBlock185Step = 225 ifTrue: [
            recoveredBlock185Stack6 := (recoveredBlock185Stack6) at: (recoveredBlock185Stack7).
            recoveredBlock185PC := 227.
        ].
        recoveredBlock185Step = 227 ifTrue: [
            recoveredBlock185Stack5 := (recoveredBlock185Stack5) * (recoveredBlock185Stack6).
            recoveredBlock185PC := 228.
        ].
        recoveredBlock185Step = 228 ifTrue: [
            recoveredBlock185Stack4 := (recoveredBlock185Stack4) + (recoveredBlock185Stack5).
            recoveredBlock185PC := 229.
        ].
        recoveredBlock185Step = 229 ifTrue: [
            (recoveredBlock185Stack2) at: (recoveredBlock185Stack3) put: (recoveredBlock185Stack4).
            recoveredBlock185PC := 231.
        ].
        recoveredBlock185Step = 231 ifTrue: [
            (recoveredBlock185Stack1 isInteger and: [recoveredBlock185Local1 isInteger]) ifTrue: [(recoveredBlock185Local1 + 1 <= recoveredBlock185Stack1) ifTrue: [recoveredBlock185Local1 := recoveredBlock185Local1 + 1. recoveredBlock185PC := 200] ifFalse: [recoveredBlock185Local1 := nil. recoveredBlock185PC := 245]] ifFalse: [recoveredBlock185PC := 235].
        ].
        recoveredBlock185Step = 235 ifTrue: [
            recoveredBlock185Stack2 := recoveredBlock185Stack1.
            recoveredBlock185PC := 236.
        ].
        recoveredBlock185Step = 236 ifTrue: [
            recoveredBlock185Stack3 := recoveredBlock185Local1.
            recoveredBlock185PC := 237.
        ].
        recoveredBlock185Step = 237 ifTrue: [
            recoveredBlock185Stack3 := (recoveredBlock185Stack3) + (1).
            recoveredBlock185PC := 238.
        ].
        recoveredBlock185Step = 238 ifTrue: [
            recoveredBlock185Stack4 := recoveredBlock185Stack3.
            recoveredBlock185PC := 239.
        ].
        recoveredBlock185Step = 239 ifTrue: [
            recoveredBlock185Local1 := recoveredBlock185Stack4.
            recoveredBlock185PC := 240.
        ].
        recoveredBlock185Step = 240 ifTrue: [
            recoveredBlock185Stack2 := (recoveredBlock185Stack2) < (recoveredBlock185Stack3).
            recoveredBlock185PC := 241.
        ].
        recoveredBlock185Step = 241 ifTrue: [
            (recoveredBlock185Stack2) ifTrue: [recoveredBlock185PC := 243] ifFalse: [recoveredBlock185PC := 200].
        ].
        recoveredBlock185Step = 243 ifTrue: [
            recoveredBlock185Stack2 := nil.
            recoveredBlock185PC := 244.
        ].
        recoveredBlock185Step = 244 ifTrue: [
            recoveredBlock185Local1 := recoveredBlock185Stack2.
            recoveredBlock185PC := 245.
        ].
        recoveredBlock185Step = 245 ifTrue: [
            recoveredBlock185Result := recoveredBlock185Stack1.
            recoveredBlock185Done := true.
        ].
    ].
    recoveredBlock185Result
].
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack0) to: (recoveredStack1) by: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := (recoveredStack0) rounded.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 162] ifFalse: [recoveredPC := 302].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

