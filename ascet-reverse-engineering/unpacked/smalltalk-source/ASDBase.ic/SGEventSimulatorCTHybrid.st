"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x205e9344; bytecode file offset 0xee5ca0"
!SGEventSimulatorCTHybrid methodsFor: 'recovered'!
createAllEvents: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block2811afe8Arg1 :block2811afe8Arg2 | 
    | block2811afe8Value0 block2811afe8Value1 block2811afe8Value2 block2811afe8Value3 block2811afe8Value4 |
    block2811afe8Value0 := block2811afe8Arg1.
    block2811afe8Value1 := (block2811afe8Value0) eventName.
    block2811afe8Value2 := block2811afe8Arg2.
    block2811afe8Value3 := (block2811afe8Value2) eventName.
    block2811afe8Value4 := (block2811afe8Value1) < (block2811afe8Value3).
    block2811afe8Value4
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            allEvents := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := SGSimEventQueueEntry.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForSimulator: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := SGDataGenerator.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) callLabel.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) eventName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) dmMethod: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) simEnvironment.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) dataGenerator.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) receiver: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := SGDataGenerator.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) callSymbol.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) selector: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) prio: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := allEvents.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Value0 recoveredBlock72Value1 recoveredBlock72Value2 recoveredBlock72Value3 recoveredBlock72Value4 recoveredBlock72Value5 recoveredBlock72Value6 |
    recoveredBlock72Value0 := recoveredBlock72Arg1.
    recoveredBlock72Value1 := (recoveredBlock72Value0) procedureName.
    recoveredBlock72Value2 := (self) simEnvironment.
    recoveredBlock72Value3 := (recoveredBlock72Value2) getTopClass.
    recoveredBlock72Value4 := (recoveredBlock72Value3) class.
    recoveredBlock72Value5 := (recoveredBlock72Value4) initMethodName.
    recoveredBlock72Value6 := (recoveredBlock72Value1) = (recoveredBlock72Value5).
    recoveredBlock72Value6
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := SGSimEventQueueEntry.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForSimulator: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := (recoveredStack3) procedureName.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack2) eventName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack2) dmMethod: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := (recoveredStack3) simEnvironment.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := (recoveredStack3) getModel.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack2) receiver: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := (recoveredStack3) procedureName.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack2) selector: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := #().
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack2) arguments: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack2) prio: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := 'singleShot'.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack2) mode: (recoveredStack3).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) delay: (recoveredStack2).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := allEvents.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCTSolvers.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := [:recoveredBlock174Arg1 | 
    | recoveredBlock174Local1 recoveredBlock174Stack0 recoveredBlock174Stack1 recoveredBlock174Stack2 recoveredBlock174Stack3 recoveredBlock174Stack4 recoveredBlock174PC recoveredBlock174Step recoveredBlock174Done recoveredBlock174Result |
    recoveredBlock174Stack0 := self.
    recoveredBlock174PC := 180.
    recoveredBlock174Done := false.
    [recoveredBlock174Done not] whileTrue: [
        recoveredBlock174Step := recoveredBlock174PC.
        recoveredBlock174Step = 180 ifTrue: [
            recoveredBlock174Stack1 := recoveredBlock174Arg1.
            recoveredBlock174PC := 183.
        ].
        recoveredBlock174Step = 183 ifTrue: [
            recoveredBlock174Stack1 := (recoveredBlock174Stack1) simNode.
            recoveredBlock174PC := 185.
        ].
        recoveredBlock174Step = 185 ifTrue: [
            recoveredBlock174Stack1 := (recoveredBlock174Stack1) reference.
            recoveredBlock174PC := 187.
        ].
        recoveredBlock174Step = 187 ifTrue: [
            recoveredBlock174Local1 := recoveredBlock174Stack1.
            recoveredBlock174PC := 190.
        ].
        recoveredBlock174Step = 190 ifTrue: [
            recoveredBlock174Stack1 := recoveredArg1.
            recoveredBlock174PC := 193.
        ].
        recoveredBlock174Step = 193 ifTrue: [
            recoveredBlock174Stack2 := [:recoveredBlock174Block193Arg1 | 
    | recoveredBlock174Block193Value0 recoveredBlock174Block193Value1 recoveredBlock174Block193Value2 recoveredBlock174Block193Value3 recoveredBlock174Block193Value4 recoveredBlock174Block193Value5 recoveredBlock174Block193Value6 |
    recoveredBlock174Block193Value0 := recoveredBlock174Block193Arg1.
    recoveredBlock174Block193Value1 := (recoveredBlock174Block193Value0) procedureName.
    recoveredBlock174Block193Value2 := (self) simEnvironment.
    recoveredBlock174Block193Value3 := (recoveredBlock174Block193Value2) getTopClass.
    recoveredBlock174Block193Value4 := recoveredBlock174Local1.
    recoveredBlock174Block193Value5 := (recoveredBlock174Block193Value3) simulateProcessNameForVariable: (recoveredBlock174Block193Value4).
    recoveredBlock174Block193Value6 := (recoveredBlock174Block193Value1) = (recoveredBlock174Block193Value5).
    recoveredBlock174Block193Value6
].
            recoveredBlock174PC := 215.
        ].
        recoveredBlock174Step = 215 ifTrue: [
            recoveredBlock174Stack3 := [].
            recoveredBlock174PC := 217.
        ].
        recoveredBlock174Step = 217 ifTrue: [
            recoveredBlock174Stack1 := (recoveredBlock174Stack1) detect: (recoveredBlock174Stack2) ifNone: (recoveredBlock174Stack3).
            recoveredBlock174PC := 219.
        ].
        recoveredBlock174Step = 219 ifTrue: [
            recoveredLocal1 := recoveredBlock174Stack1.
            recoveredBlock174PC := 222.
        ].
        recoveredBlock174Step = 222 ifTrue: [
            recoveredBlock174Stack1 := nil.
            recoveredBlock174PC := 223.
        ].
        recoveredBlock174Step = 223 ifTrue: [
            recoveredBlock174Stack2 := recoveredLocal1.
            recoveredBlock174PC := 226.
        ].
        recoveredBlock174Step = 226 ifTrue: [
            (recoveredBlock174Stack2 == nil) ifTrue: [recoveredBlock174PC := 291] ifFalse: [recoveredBlock174PC := 230].
        ].
        recoveredBlock174Step = 230 ifTrue: [
            recoveredBlock174PC := 231.
        ].
        recoveredBlock174Step = 231 ifTrue: [
            recoveredBlock174Stack1 := SGSimEventQueueEntry.
            recoveredBlock174PC := 233.
        ].
        recoveredBlock174Step = 233 ifTrue: [
            recoveredBlock174Stack2 := self.
            recoveredBlock174PC := 234.
        ].
        recoveredBlock174Step = 234 ifTrue: [
            recoveredBlock174Stack1 := (recoveredBlock174Stack1) createForSimulator: (recoveredBlock174Stack2).
            recoveredBlock174PC := 236.
        ].
        recoveredBlock174Step = 236 ifTrue: [
            recoveredLocal3 := recoveredBlock174Stack1.
            recoveredBlock174PC := 239.
        ].
        recoveredBlock174Step = 239 ifTrue: [
            recoveredBlock174Stack1 := recoveredLocal3.
            recoveredBlock174PC := 242.
        ].
        recoveredBlock174Step = 242 ifTrue: [
            recoveredBlock174Stack2 := recoveredBlock174Stack1.
            recoveredBlock174PC := 243.
        ].
        recoveredBlock174Step = 243 ifTrue: [
            recoveredBlock174Stack3 := recoveredLocal1.
            recoveredBlock174PC := 246.
        ].
        recoveredBlock174Step = 246 ifTrue: [
            recoveredBlock174Stack3 := (recoveredBlock174Stack3) procedureName.
            recoveredBlock174PC := 248.
        ].
        recoveredBlock174Step = 248 ifTrue: [
            (recoveredBlock174Stack2) eventName: (recoveredBlock174Stack3).
            recoveredBlock174Stack2 := recoveredBlock174Stack1.
            recoveredBlock174PC := 251.
        ].
        recoveredBlock174Step = 251 ifTrue: [
            recoveredBlock174Stack3 := recoveredLocal1.
            recoveredBlock174PC := 254.
        ].
        recoveredBlock174Step = 254 ifTrue: [
            (recoveredBlock174Stack2) dmMethod: (recoveredBlock174Stack3).
            recoveredBlock174Stack2 := recoveredBlock174Stack1.
            recoveredBlock174PC := 257.
        ].
        recoveredBlock174Step = 257 ifTrue: [
            recoveredBlock174Stack3 := self.
            recoveredBlock174PC := 258.
        ].
        recoveredBlock174Step = 258 ifTrue: [
            recoveredBlock174Stack3 := (recoveredBlock174Stack3) simEnvironment.
            recoveredBlock174PC := 260.
        ].
        recoveredBlock174Step = 260 ifTrue: [
            recoveredBlock174Stack3 := (recoveredBlock174Stack3) getModel.
            recoveredBlock174PC := 262.
        ].
        recoveredBlock174Step = 262 ifTrue: [
            (recoveredBlock174Stack2) receiver: (recoveredBlock174Stack3).
            recoveredBlock174Stack2 := recoveredBlock174Stack1.
            recoveredBlock174PC := 265.
        ].
        recoveredBlock174Step = 265 ifTrue: [
            recoveredBlock174Stack3 := recoveredLocal1.
            recoveredBlock174PC := 268.
        ].
        recoveredBlock174Step = 268 ifTrue: [
            recoveredBlock174Stack3 := (recoveredBlock174Stack3) procedureName.
            recoveredBlock174PC := 270.
        ].
        recoveredBlock174Step = 270 ifTrue: [
            (recoveredBlock174Stack2) selector: (recoveredBlock174Stack3).
            recoveredBlock174PC := 272.
        ].
        recoveredBlock174Step = 272 ifTrue: [
            recoveredBlock174Stack2 := #().
            recoveredBlock174PC := 274.
        ].
        recoveredBlock174Step = 274 ifTrue: [
            (recoveredBlock174Stack1) arguments: (recoveredBlock174Stack2).
            recoveredBlock174PC := 276.
        ].
        recoveredBlock174Step = 276 ifTrue: [
            recoveredBlock174Stack1 := allEvents.
            recoveredBlock174PC := 278.
        ].
        recoveredBlock174Step = 278 ifTrue: [
            recoveredBlock174Stack2 := recoveredLocal3.
            recoveredBlock174PC := 281.
        ].
        recoveredBlock174Step = 281 ifTrue: [
            (recoveredBlock174Stack1) add: (recoveredBlock174Stack2).
            recoveredBlock174PC := 283.
        ].
        recoveredBlock174Step = 283 ifTrue: [
            recoveredBlock174Stack1 := recoveredBlock174Arg1.
            recoveredBlock174PC := 286.
        ].
        recoveredBlock174Step = 286 ifTrue: [
            recoveredBlock174Stack2 := recoveredLocal3.
            recoveredBlock174PC := 289.
        ].
        recoveredBlock174Step = 289 ifTrue: [
            recoveredBlock174Stack1 := (recoveredBlock174Stack1) event: (recoveredBlock174Stack2).
            recoveredBlock174PC := 291.
        ].
        recoveredBlock174Step = 291 ifTrue: [
            recoveredBlock174Result := recoveredBlock174Stack1.
            recoveredBlock174Done := true.
        ].
    ].
    recoveredBlock174Result
].
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := [:recoveredBlock297Arg1 | 
    | recoveredBlock297Stack0 recoveredBlock297Stack1 recoveredBlock297Stack2 recoveredBlock297Stack3 recoveredBlock297Stack4 recoveredBlock297PC recoveredBlock297Step recoveredBlock297Done recoveredBlock297Result |
    recoveredBlock297Stack0 := self.
    recoveredBlock297PC := 304.
    recoveredBlock297Done := false.
    [recoveredBlock297Done not] whileTrue: [
        recoveredBlock297Step := recoveredBlock297PC.
        recoveredBlock297Step = 304 ifTrue: [
            recoveredBlock297Stack1 := nil.
            recoveredBlock297PC := 305.
        ].
        recoveredBlock297Step = 305 ifTrue: [
            recoveredBlock297Stack2 := recoveredBlock297Arg1.
            recoveredBlock297PC := 306.
        ].
        recoveredBlock297Step = 306 ifTrue: [
            recoveredBlock297Stack2 := (recoveredBlock297Stack2) isCT.
            recoveredBlock297PC := 308.
        ].
        recoveredBlock297Step = 308 ifTrue: [
            (recoveredBlock297Stack2) ifTrue: [recoveredBlock297PC := 375] ifFalse: [recoveredBlock297PC := 312].
        ].
        recoveredBlock297Step = 312 ifTrue: [
            recoveredBlock297PC := 313.
        ].
        recoveredBlock297Step = 313 ifTrue: [
            recoveredBlock297Stack1 := SGSimEventQueueEntry.
            recoveredBlock297PC := 315.
        ].
        recoveredBlock297Step = 315 ifTrue: [
            recoveredBlock297Stack2 := self.
            recoveredBlock297PC := 316.
        ].
        recoveredBlock297Step = 316 ifTrue: [
            recoveredBlock297Stack1 := (recoveredBlock297Stack1) createForSimulator: (recoveredBlock297Stack2).
            recoveredBlock297PC := 318.
        ].
        recoveredBlock297Step = 318 ifTrue: [
            recoveredLocal3 := recoveredBlock297Stack1.
            recoveredBlock297PC := 321.
        ].
        recoveredBlock297Step = 321 ifTrue: [
            recoveredBlock297Stack1 := recoveredLocal3.
            recoveredBlock297PC := 324.
        ].
        recoveredBlock297Step = 324 ifTrue: [
            recoveredBlock297Stack2 := recoveredBlock297Stack1.
            recoveredBlock297PC := 325.
        ].
        recoveredBlock297Step = 325 ifTrue: [
            recoveredBlock297Stack3 := recoveredBlock297Arg1.
            recoveredBlock297PC := 326.
        ].
        recoveredBlock297Step = 326 ifTrue: [
            recoveredBlock297Stack3 := (recoveredBlock297Stack3) procedureName.
            recoveredBlock297PC := 328.
        ].
        recoveredBlock297Step = 328 ifTrue: [
            (recoveredBlock297Stack2) eventName: (recoveredBlock297Stack3).
            recoveredBlock297Stack2 := recoveredBlock297Stack1.
            recoveredBlock297PC := 331.
        ].
        recoveredBlock297Step = 331 ifTrue: [
            recoveredBlock297Stack3 := recoveredBlock297Arg1.
            recoveredBlock297PC := 332.
        ].
        recoveredBlock297Step = 332 ifTrue: [
            (recoveredBlock297Stack2) dmMethod: (recoveredBlock297Stack3).
            recoveredBlock297Stack2 := recoveredBlock297Stack1.
            recoveredBlock297PC := 335.
        ].
        recoveredBlock297Step = 335 ifTrue: [
            recoveredBlock297Stack3 := self.
            recoveredBlock297PC := 336.
        ].
        recoveredBlock297Step = 336 ifTrue: [
            recoveredBlock297Stack3 := (recoveredBlock297Stack3) simEnvironment.
            recoveredBlock297PC := 338.
        ].
        recoveredBlock297Step = 338 ifTrue: [
            recoveredBlock297Stack3 := (recoveredBlock297Stack3) getModel.
            recoveredBlock297PC := 340.
        ].
        recoveredBlock297Step = 340 ifTrue: [
            (recoveredBlock297Stack2) receiver: (recoveredBlock297Stack3).
            recoveredBlock297Stack2 := recoveredBlock297Stack1.
            recoveredBlock297PC := 343.
        ].
        recoveredBlock297Step = 343 ifTrue: [
            recoveredBlock297Stack3 := recoveredBlock297Arg1.
            recoveredBlock297PC := 344.
        ].
        recoveredBlock297Step = 344 ifTrue: [
            recoveredBlock297Stack3 := (recoveredBlock297Stack3) procedureName.
            recoveredBlock297PC := 346.
        ].
        recoveredBlock297Step = 346 ifTrue: [
            (recoveredBlock297Stack2) selector: (recoveredBlock297Stack3).
            recoveredBlock297PC := 348.
        ].
        recoveredBlock297Step = 348 ifTrue: [
            recoveredBlock297Stack2 := recoveredBlock297Arg1.
            recoveredBlock297PC := 349.
        ].
        recoveredBlock297Step = 349 ifTrue: [
            recoveredBlock297Stack2 := (recoveredBlock297Stack2) allArgumentValues.
            recoveredBlock297PC := 351.
        ].
        recoveredBlock297Step = 351 ifTrue: [
            (recoveredBlock297Stack1) arguments: (recoveredBlock297Stack2).
            recoveredBlock297PC := 353.
        ].
        recoveredBlock297Step = 353 ifTrue: [
            recoveredBlock297Stack1 := recoveredBlock297Arg1.
            recoveredBlock297PC := 354.
        ].
        recoveredBlock297Step = 354 ifTrue: [
            recoveredBlock297Stack1 := (recoveredBlock297Stack1) hasReturnValue.
            recoveredBlock297PC := 356.
        ].
        recoveredBlock297Step = 356 ifTrue: [
            (recoveredBlock297Stack1) ifTrue: [recoveredBlock297PC := 360] ifFalse: [recoveredBlock297PC := 368].
        ].
        recoveredBlock297Step = 360 ifTrue: [
            recoveredBlock297Stack1 := recoveredLocal3.
            recoveredBlock297PC := 363.
        ].
        recoveredBlock297Step = 363 ifTrue: [
            recoveredBlock297Stack2 := recoveredBlock297Arg1.
            recoveredBlock297PC := 364.
        ].
        recoveredBlock297Step = 364 ifTrue: [
            recoveredBlock297Stack2 := (recoveredBlock297Stack2) returnValue.
            recoveredBlock297PC := 366.
        ].
        recoveredBlock297Step = 366 ifTrue: [
            (recoveredBlock297Stack1) return: (recoveredBlock297Stack2).
            recoveredBlock297PC := 368.
        ].
        recoveredBlock297Step = 368 ifTrue: [
            recoveredBlock297Stack1 := allEvents.
            recoveredBlock297PC := 370.
        ].
        recoveredBlock297Step = 370 ifTrue: [
            recoveredBlock297Stack2 := recoveredLocal3.
            recoveredBlock297PC := 373.
        ].
        recoveredBlock297Step = 373 ifTrue: [
            recoveredBlock297Stack1 := (recoveredBlock297Stack1) add: (recoveredBlock297Stack2).
            recoveredBlock297PC := 375.
        ].
        recoveredBlock297Step = 375 ifTrue: [
            recoveredBlock297Result := recoveredBlock297Stack1.
            recoveredBlock297Done := true.
        ].
    ].
    recoveredBlock297Result
].
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack0 := allEvents.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack1 := [:block2811b00cArg1 | 
    | block2811b00cValue0 block2811b00cValue1 |
    block2811b00cValue0 := block2811b00cArg1.
    block2811b00cValue1 := (block2811b00cValue0) enable.
    block2811b00cValue1
].
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack0 := allEvents.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

