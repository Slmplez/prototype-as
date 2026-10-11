"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20000284; bytecode file offset 0x4b1b0"
!Block methodsFor: 'recovered'!
markNonReturnable
    ^self
! !

"kernel.ic method 0x200004e0; bytecode file offset 0x4b474"
!Block methodsFor: 'recovered'!
numArgs
    | recoveredValue0 |
    recoveredValue0 := (self) argumentCount.
    ^recoveredValue0
! !

"kernel.ic method 0x20001be0; bytecode file offset 0x4ce64"
!Block methodsFor: 'recovered'!
fork
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) newProcess.
    recoveredValue1 := (recoveredValue0) resume.
    ^recoveredValue1
! !

"kernel.ic method 0x20002184; bytecode file offset 0x4d118"
!Block methodsFor: 'recovered'!
newProcessWith: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) newProcessWithArguments: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x200021b4; bytecode file offset 0x4d118"
!Block methodsFor: 'recovered'!
ensure: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) valueOnReturnDo: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x20002f04; bytecode file offset 0x4de88"
!Block methodsFor: 'recovered'!
forkNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) newProcessNamed: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) resume.
    ^recoveredValue2
! !

"kernel.ic method 0x200046a8; bytecode file offset 0x4f5c4"
!Block methodsFor: 'recovered'!
isBlock
    ^true
! !

"kernel.ic method 0x20004e7c; bytecode file offset 0x4fde0"
!Block methodsFor: 'recovered'!
newProcessWith: recoveredArg1 named: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) newProcessWithArguments: (recoveredValue0) named: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20005408; bytecode file offset 0x5033c"
!Block methodsFor: 'recovered'!
whileFalse
    | recoveredValue0 |
    recoveredValue0 := [].
    (self) whileFalse: (recoveredValue0).
    ^self
! !

"kernel.ic method 0x20005418; bytecode file offset 0x5033c"
!Block methodsFor: 'recovered'!
whileTrue
    | recoveredValue0 |
    recoveredValue0 := [].
    (self) whileTrue: (recoveredValue0).
    ^self
! !

"kernel.ic method 0x20005db0; bytecode file offset 0x50ccc"
!Block methodsFor: 'recovered'!
on: recoveredArg1 do: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) handle: (self) do: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x2000602c; bytecode file offset 0x50f48"
!Block methodsFor: 'recovered'!
newProcess
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Processor.
    recoveredValue1 := (recoveredValue0) activeProcess.
    recoveredValue2 := (recoveredValue1) forkClass.
    recoveredValue3 := (recoveredValue2) newProcessOn: (self).
    ^recoveredValue3
! !

"kernel.ic method 0x20006638; bytecode file offset 0x51550"
!Block methodsFor: 'recovered'!
forkAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) newProcess.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) priority: (recoveredValue2).
    recoveredValue3 := (recoveredValue0) resume.
    ^recoveredValue3
! !

"kernel.ic method 0x20007ca4; bytecode file offset 0x52bbc"
!Block methodsFor: 'recovered'!
forkAt: recoveredArg1 named: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) newProcessNamed: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) priority: (recoveredValue3).
    recoveredValue4 := (recoveredValue1) resume.
    ^recoveredValue4
! !

"kernel.ic method 0x200080f8; bytecode file offset 0x53024"
!Block methodsFor: 'recovered'!
errorInExecution
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatKRN.
    recoveredValue1 := (recoveredValue0) indexedMsg: (3).
    (self) error: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x200085d4; bytecode file offset 0x53508"
!Block methodsFor: 'recovered'!
newProcessNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Processor.
    recoveredValue1 := (recoveredValue0) activeProcess.
    recoveredValue2 := (recoveredValue1) forkClass.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) newProcessOn: (self) named: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x200085ec; bytecode file offset 0x53508"
!Block methodsFor: 'recovered'!
newProcessWithArguments: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Processor.
    recoveredValue1 := (recoveredValue0) activeProcess.
    recoveredValue2 := (recoveredValue1) forkClass.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) newProcessOn: (self) withArguments: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x2000a114; bytecode file offset 0x55030"
!Block methodsFor: 'recovered'!
newProcessWithArguments: recoveredArg1 named: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Processor.
    recoveredValue1 := (recoveredValue0) activeProcess.
    recoveredValue2 := (recoveredValue1) forkClass.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue2) newProcessOn: (self) withArguments: (recoveredValue3) named: (recoveredValue4).
    ^recoveredValue5
! !

"kernel.ic method 0x2000a5fc; bytecode file offset 0x5550c"
!Block methodsFor: 'recovered'!
whileFalse: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) value.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000a618; bytecode file offset 0x55528"
!Block methodsFor: 'recovered'!
whileTrue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) value.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000cc98; bytecode file offset 0x57bb0"
!Block methodsFor: 'recovered'!
when: recoveredArg1 do: recoveredArg2 when: recoveredArg3 do: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := Array.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    recoveredValue8 := (self) whenOneOf: (recoveredValue3) doMatching: (recoveredValue7).
    ^recoveredValue8
! !

"kernel.ic method 0x2000d408; bytecode file offset 0x5831c"
!Block methodsFor: 'recovered'!
valueWithArguments: recoveredArg1 onReturnDo: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (self) valueWithArguments: (recoveredBlock4Value0).
    recoveredBlock4Value1
].
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) valueOnReturnDo: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x2000f3d4; bytecode file offset 0x5a2fc"
!Block methodsFor: 'recovered'!
bench: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Time.
    recoveredValue1 := (recoveredValue0) millisecondsToRun: (self).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := Transcript.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) cr.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) printString.
    recoveredValue7 := (recoveredValue4) , (recoveredValue6).
    (recoveredValue2) show: (recoveredValue7).
    ^self
! !

"kernel.ic method 0x20010254; bytecode file offset 0x5b16c"
!Block methodsFor: 'recovered'!
when: recoveredArg1 do: recoveredArg2 when: recoveredArg3 do: recoveredArg4 when: recoveredArg5 do: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg5.
    recoveredValue4 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := Array.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := recoveredArg4.
    recoveredValue8 := recoveredArg6.
    recoveredValue9 := (recoveredValue5) with: (recoveredValue6) with: (recoveredValue7) with: (recoveredValue8).
    recoveredValue10 := (self) whenOneOf: (recoveredValue4) doMatching: (recoveredValue9).
    ^recoveredValue10
! !

"kernel.ic method 0x20011214; bytecode file offset 0x5c134"
!Block methodsFor: 'recovered'!
critical
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) enableAsyncMessages: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [
    | block28008b84Value0 block28008b84Value1 |
    block28008b84Value0 := Processor.
    block28008b84Value1 := (block28008b84Value0) enableAsyncMessages: (true).
    block28008b84Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueOnReturnDo: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20012210; bytecode file offset 0x5d128"
!Block methodsFor: 'recovered'!
when: recoveredArg1 do: recoveredArg2 when: recoveredArg3 do: recoveredArg4 when: recoveredArg5 do: recoveredArg6 when: recoveredArg7 do: recoveredArg8
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg5.
    recoveredValue4 := recoveredArg7.
    recoveredValue5 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := Array.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := recoveredArg4.
    recoveredValue9 := recoveredArg6.
    recoveredValue10 := recoveredArg8.
    recoveredValue11 := (recoveredValue6) with: (recoveredValue7) with: (recoveredValue8) with: (recoveredValue9) with: (recoveredValue10).
    recoveredValue12 := (self) whenOneOf: (recoveredValue5) doMatching: (recoveredValue11).
    ^recoveredValue12
! !

"kernel.ic method 0x20015120; bytecode file offset 0x60034"
!Block methodsFor: 'recovered'!
apply: recoveredArg1 from: recoveredArg2 to: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) basicAt: (recoveredStack4).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 12] ifFalse: [recoveredLocal1 := nil. recoveredPC := 32]] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x20015800; bytecode file offset 0x60714"
!Block methodsFor: 'recovered'!
applyWithIndex: recoveredArg1 from: recoveredArg2 to: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) basicAt: (recoveredStack4).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) value: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 12] ifFalse: [recoveredLocal1 := nil. recoveredPC := 33]] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x200170fc; bytecode file offset 0x62010"
!Block methodsFor: 'recovered'!
applyWithIndex: recoveredArg1 from: recoveredArg2 to: recoveredArg3 offset: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) basicAt: (recoveredStack4).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) value: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 12] ifFalse: [recoveredLocal1 := nil. recoveredPC := 36]] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x20017d44; bytecode file offset 0x62c70"
!Block methodsFor: 'recovered'!
whenOneOf: recoveredArg1 doMatching: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Object.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    ^recoveredBlock18Value0
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) whenOneOf: (recoveredStack3) doMatching: (recoveredStack4) exitWith: (recoveredStack5) retryReturn: (recoveredStack6).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 4] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x20017d58; bytecode file offset 0x62c70"
!Block methodsFor: 'recovered'!
when: recoveredArg1 do: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Object.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    ^recoveredBlock18Value0
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) when: (recoveredStack3) do: (recoveredStack4) exitWith: (recoveredStack5) retryReturn: (recoveredStack6).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 4] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x20018484; bytecode file offset 0x63398"
!Block methodsFor: 'recovered'!
ifCurtailed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := true.
    recoveredValue0 := [
    | recoveredBlock8Local1 recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := (self) value.
    recoveredBlock8Local1 := recoveredBlock8Value0.
    recoveredLocal1 := false.
    recoveredBlock8Value1 := recoveredBlock8Local1.
    recoveredBlock8Value1
].
    recoveredValue1 := [
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 29.
        ].
        recoveredBlock22Step = 29 ifTrue: [
            recoveredBlock22Stack2 := recoveredLocal1.
            recoveredBlock22PC := 32.
        ].
        recoveredBlock22Step = 32 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 36] ifFalse: [recoveredBlock22PC := 41].
        ].
        recoveredBlock22Step = 36 ifTrue: [
            recoveredBlock22PC := 37.
        ].
        recoveredBlock22Step = 37 ifTrue: [
            recoveredBlock22Stack1 := recoveredArg1.
            recoveredBlock22PC := 40.
        ].
        recoveredBlock22Step = 40 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) value.
            recoveredBlock22PC := 41.
        ].
        recoveredBlock22Step = 41 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
    recoveredValue2 := (recoveredValue0) valueOnReturnDo: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20019bb8; bytecode file offset 0x64adc"
!Block methodsFor: 'recovered'!
valueWithErrorHandler: recoveredArg1 oldHandler: recoveredArg2 onReturnDo: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Processor.
    recoveredValue1 := (recoveredValue0) activeProcess.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) errorHandler: (recoveredValue2).
    recoveredValue3 := [
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := Processor.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) activeProcess.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) errorHandler.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Stack3 := recoveredArg1.
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            (recoveredBlock12Stack2 ~~ recoveredBlock12Stack3) ifTrue: [recoveredBlock12PC := 44] ifFalse: [recoveredBlock12PC := 30].
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Stack1 := Processor.
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) activeProcess.
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Stack2 := recoveredArg2.
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            (recoveredBlock12Stack1) errorHandler: (recoveredBlock12Stack2).
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            recoveredBlock12Stack1 := recoveredArg3.
            recoveredBlock12PC := 42.
        ].
        recoveredBlock12Step = 42 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) value.
            recoveredBlock12PC := 44.
        ].
        recoveredBlock12Step = 44 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    recoveredValue4 := (self) valueOnReturnDo: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20020114; bytecode file offset 0x6b04c"
!Block methodsFor: 'recovered'!
whenExceptionDo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Processor.
    recoveredValue1 := (recoveredValue0) activeProcess.
    recoveredValue2 := (recoveredValue1) errorHandler.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := Processor.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) activeProcess.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack2 := recoveredLocal2.
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            (recoveredBlock11Stack1) errorHandler: (recoveredBlock11Stack2).
            recoveredBlock11PC := 26.
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack2 := nil.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            (recoveredBlock11Stack1) resumeBlock: (recoveredBlock11Stack2).
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack1 := recoveredArg1.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            (recoveredBlock11Stack1) value.
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal2.
            recoveredBlock11PC := 38.
        ].
        recoveredBlock11Step = 38 ifTrue: [
            (recoveredBlock11Stack1 ~~ nil) ifTrue: [recoveredBlock11PC := 48] ifFalse: [recoveredBlock11PC := 42].
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            (recoveredBlock11Stack1) handlesByDefault.
            recoveredBlock11PC := 45.
        ].
        recoveredBlock11Step = 45 ifTrue: [
            recoveredBlock11PC := 54.
        ].
        recoveredBlock11Step = 48 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal2.
            recoveredBlock11PC := 51.
        ].
        recoveredBlock11Step = 51 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 52.
        ].
        recoveredBlock11Step = 52 ifTrue: [
            (recoveredBlock11Stack1) value: (recoveredBlock11Stack2).
            recoveredBlock11PC := 54.
        ].
        recoveredBlock11Step = 54 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) errorInExecution.
            recoveredBlock11PC := 56.
        ].
        recoveredBlock11Step = 56 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack0.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := [].
    recoveredValue7 := (self) valueWithErrorHandler: (recoveredValue4) oldHandler: (recoveredValue5) onReturnDo: (recoveredValue6).
    ^recoveredValue7
! !

"kernel.ic method 0x20022210; bytecode file offset 0x6d12c"
!Block methodsFor: 'recovered'!
when: recoveredArg1 do: recoveredArg2 when: recoveredArg3 do: recoveredArg4 when: recoveredArg5 do: recoveredArg6 when: recoveredArg7 do: recoveredArg8 when: recoveredArg9 do: recoveredArg10
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (5).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg5.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg7.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg9.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := Array.
    recoveredValue13 := (recoveredValue12) new: (5).
    recoveredValue14 := recoveredValue13.
    recoveredValue15 := recoveredArg2.
    (recoveredValue14) at: (1) put: (recoveredValue15).
    recoveredValue16 := recoveredValue13.
    recoveredValue17 := recoveredArg4.
    (recoveredValue16) at: (2) put: (recoveredValue17).
    recoveredValue18 := recoveredValue13.
    recoveredValue19 := recoveredArg6.
    (recoveredValue18) at: (3) put: (recoveredValue19).
    recoveredValue20 := recoveredValue13.
    recoveredValue21 := recoveredArg8.
    (recoveredValue20) at: (4) put: (recoveredValue21).
    recoveredValue22 := recoveredValue13.
    recoveredValue23 := recoveredArg10.
    (recoveredValue22) at: (5) put: (recoveredValue23).
    recoveredValue24 := (self) whenOneOf: (recoveredValue1) doMatching: (recoveredValue13).
    ^recoveredValue24
! !

"kernel.ic method 0x2002227c; bytecode file offset 0x6d1b4"
!Block methodsFor: 'recovered'!
atEndOrWhenExceptionDo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Processor.
    recoveredValue1 := (recoveredValue0) activeProcess.
    recoveredValue2 := (recoveredValue1) errorHandler.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := Processor.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) activeProcess.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack2 := recoveredLocal2.
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            (recoveredBlock11Stack1) errorHandler: (recoveredBlock11Stack2).
            recoveredBlock11PC := 26.
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack3 := [:recoveredBlock11Block28Arg1 | 
    | recoveredBlock11Block28Value0 |
    recoveredBlock11Block28Value0 := recoveredBlock11Block28Arg1.
    ^recoveredBlock11Block28Value0
].
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            (recoveredBlock11Stack2) exitBlock: (recoveredBlock11Stack3).
            recoveredBlock11PC := 38.
        ].
        recoveredBlock11Step = 38 ifTrue: [
            recoveredBlock11Stack2 := nil.
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            (recoveredBlock11Stack1) resumeBlock: (recoveredBlock11Stack2).
            recoveredBlock11PC := 41.
        ].
        recoveredBlock11Step = 41 ifTrue: [
            recoveredBlock11Stack1 := recoveredArg1.
            recoveredBlock11PC := 44.
        ].
        recoveredBlock11Step = 44 ifTrue: [
            (recoveredBlock11Stack1) value.
            recoveredBlock11PC := 46.
        ].
        recoveredBlock11Step = 46 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal2.
            recoveredBlock11PC := 49.
        ].
        recoveredBlock11Step = 49 ifTrue: [
            (recoveredBlock11Stack1 ~~ nil) ifTrue: [recoveredBlock11PC := 58] ifFalse: [recoveredBlock11PC := 52].
        ].
        recoveredBlock11Step = 52 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 53.
        ].
        recoveredBlock11Step = 53 ifTrue: [
            (recoveredBlock11Stack1) handlesByDefault.
            recoveredBlock11PC := 55.
        ].
        recoveredBlock11Step = 55 ifTrue: [
            recoveredBlock11PC := 64.
        ].
        recoveredBlock11Step = 58 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal2.
            recoveredBlock11PC := 61.
        ].
        recoveredBlock11Step = 61 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 62.
        ].
        recoveredBlock11Step = 62 ifTrue: [
            (recoveredBlock11Stack1) value: (recoveredBlock11Stack2).
            recoveredBlock11PC := 64.
        ].
        recoveredBlock11Step = 64 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) errorInExecution.
            recoveredBlock11PC := 66.
        ].
        recoveredBlock11Step = 66 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack0.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (self) valueWithErrorHandler: (recoveredValue4) oldHandler: (recoveredValue5) onReturnDo: (recoveredValue6).
    ^recoveredValue7
! !

"kernel.ic method 0x20025370; bytecode file offset 0x702b0"
!Block methodsFor: 'recovered'!
when: recoveredArg1 do: recoveredArg2 exitWith: recoveredArg3 retryReturn: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := [
    | recoveredBlock4Value0 |
    recoveredBlock4Value0 := recoveredArg4.
    ^recoveredBlock4Value0
].
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17Stack5 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := Processor.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) activeProcess.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack2 := recoveredLocal1.
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            (recoveredBlock17Stack1) errorHandler: (recoveredBlock17Stack2).
            recoveredBlock17PC := 32.
        ].
        recoveredBlock17Step = 32 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            recoveredBlock17Stack2 := recoveredLocal2.
            recoveredBlock17PC := 36.
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredBlock17Stack3 := recoveredArg3.
            recoveredBlock17PC := 39.
        ].
        recoveredBlock17Step = 39 ifTrue: [
            recoveredBlock17Stack4 := recoveredLocal3.
            recoveredBlock17PC := 42.
        ].
        recoveredBlock17Step = 42 ifTrue: [
            (recoveredBlock17Stack1) handler: (recoveredBlock17Stack2) exit: (recoveredBlock17Stack3) retry: (recoveredBlock17Stack4).
            recoveredBlock17PC := 45.
        ].
        recoveredBlock17Step = 45 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 48.
        ].
        recoveredBlock17Step = 48 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 49.
        ].
        recoveredBlock17Step = 49 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) exception.
            recoveredBlock17PC := 51.
        ].
        recoveredBlock17Step = 51 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) handles: (recoveredBlock17Stack2).
            recoveredBlock17PC := 53.
        ].
        recoveredBlock17Step = 53 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 56] ifFalse: [recoveredBlock17PC := 62].
        ].
        recoveredBlock17Step = 56 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 57.
        ].
        recoveredBlock17Step = 57 ifTrue: [
            recoveredBlock17Stack2 := recoveredArg2.
            recoveredBlock17PC := 60.
        ].
        recoveredBlock17Step = 60 ifTrue: [
            (recoveredBlock17Stack1) evaluate: (recoveredBlock17Stack2).
            recoveredBlock17PC := 62.
        ].
        recoveredBlock17Step = 62 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 65.
        ].
        recoveredBlock17Step = 65 ifTrue: [
            (recoveredBlock17Stack1 ~~ nil) ifTrue: [recoveredBlock17PC := 74] ifFalse: [recoveredBlock17PC := 68].
        ].
        recoveredBlock17Step = 68 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 69.
        ].
        recoveredBlock17Step = 69 ifTrue: [
            (recoveredBlock17Stack1) handlesByDefault.
            recoveredBlock17PC := 71.
        ].
        recoveredBlock17Step = 71 ifTrue: [
            recoveredBlock17PC := 80.
        ].
        recoveredBlock17Step = 74 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 77.
        ].
        recoveredBlock17Step = 77 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 78.
        ].
        recoveredBlock17Step = 78 ifTrue: [
            (recoveredBlock17Stack1) value: (recoveredBlock17Stack2).
            recoveredBlock17PC := 80.
        ].
        recoveredBlock17Step = 80 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) errorInExecution.
            recoveredBlock17PC := 82.
        ].
        recoveredBlock17Step = 82 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack0.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Processor.
    recoveredValue3 := (recoveredValue2) activeProcess.
    recoveredValue4 := (recoveredValue3) errorHandler.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := [].
    recoveredValue8 := (self) valueWithErrorHandler: (recoveredValue5) oldHandler: (recoveredValue6) onReturnDo: (recoveredValue7).
    ^recoveredValue8
! !

"kernel.ic method 0x20029264; bytecode file offset 0x741ac"
!Block methodsFor: 'recovered'!
whenOneOf: recoveredArg1 doMatching: recoveredArg2 exitWith: recoveredArg3 retryReturn: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := [
    | recoveredBlock4Value0 |
    recoveredBlock4Value0 := recoveredArg4.
    ^recoveredBlock4Value0
].
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Local1 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17Stack5 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := Processor.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) activeProcess.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack2 := recoveredLocal1.
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            (recoveredBlock17Stack1) errorHandler: (recoveredBlock17Stack2).
            recoveredBlock17PC := 32.
        ].
        recoveredBlock17Step = 32 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            recoveredBlock17Stack2 := recoveredLocal2.
            recoveredBlock17PC := 36.
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredBlock17Stack3 := recoveredArg3.
            recoveredBlock17PC := 39.
        ].
        recoveredBlock17Step = 39 ifTrue: [
            recoveredBlock17Stack4 := recoveredLocal3.
            recoveredBlock17PC := 42.
        ].
        recoveredBlock17Step = 42 ifTrue: [
            (recoveredBlock17Stack1) handler: (recoveredBlock17Stack2) exit: (recoveredBlock17Stack3) retry: (recoveredBlock17Stack4).
            recoveredBlock17PC := 45.
        ].
        recoveredBlock17Step = 45 ifTrue: [
            recoveredBlock17Stack1 := 0.
            recoveredBlock17PC := 47.
        ].
        recoveredBlock17Step = 47 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 48.
        ].
        recoveredBlock17Step = 48 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 51.
        ].
        recoveredBlock17Step = 51 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) size.
            recoveredBlock17PC := 53.
        ].
        recoveredBlock17Step = 53 ifTrue: [
            recoveredBlock17PC := 79.
        ].
        recoveredBlock17Step = 56 ifTrue: [
            recoveredBlock17Stack2 := recoveredArg1.
            recoveredBlock17PC := 59.
        ].
        recoveredBlock17Step = 59 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local1.
            recoveredBlock17PC := 60.
        ].
        recoveredBlock17Step = 60 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) at: (recoveredBlock17Stack3).
            recoveredBlock17PC := 62.
        ].
        recoveredBlock17Step = 62 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Arg1.
            recoveredBlock17PC := 63.
        ].
        recoveredBlock17Step = 63 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) exception.
            recoveredBlock17PC := 65.
        ].
        recoveredBlock17Step = 65 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) handles: (recoveredBlock17Stack3).
            recoveredBlock17PC := 67.
        ].
        recoveredBlock17Step = 67 ifTrue: [
            (recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 70] ifFalse: [recoveredBlock17PC := 79].
        ].
        recoveredBlock17Step = 70 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 71.
        ].
        recoveredBlock17Step = 71 ifTrue: [
            recoveredBlock17Stack3 := recoveredArg2.
            recoveredBlock17PC := 74.
        ].
        recoveredBlock17Step = 74 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Local1.
            recoveredBlock17PC := 75.
        ].
        recoveredBlock17Step = 75 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) at: (recoveredBlock17Stack4).
            recoveredBlock17PC := 77.
        ].
        recoveredBlock17Step = 77 ifTrue: [
            (recoveredBlock17Stack2) evaluate: (recoveredBlock17Stack3).
            recoveredBlock17PC := 79.
        ].
        recoveredBlock17Step = 79 ifTrue: [
            (recoveredBlock17Stack1 isInteger and: [recoveredBlock17Local1 isInteger]) ifTrue: [(recoveredBlock17Local1 + 1 <= recoveredBlock17Stack1) ifTrue: [recoveredBlock17Local1 := recoveredBlock17Local1 + 1. recoveredBlock17PC := 56] ifFalse: [recoveredBlock17Local1 := nil. recoveredBlock17PC := 93]] ifFalse: [recoveredBlock17PC := 83].
        ].
        recoveredBlock17Step = 83 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 84.
        ].
        recoveredBlock17Step = 84 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local1.
            recoveredBlock17PC := 85.
        ].
        recoveredBlock17Step = 85 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) + (1).
            recoveredBlock17PC := 86.
        ].
        recoveredBlock17Step = 86 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Stack3.
            recoveredBlock17PC := 87.
        ].
        recoveredBlock17Step = 87 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack4.
            recoveredBlock17PC := 88.
        ].
        recoveredBlock17Step = 88 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) < (recoveredBlock17Stack3).
            recoveredBlock17PC := 89.
        ].
        recoveredBlock17Step = 89 ifTrue: [
            (recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 91] ifFalse: [recoveredBlock17PC := 56].
        ].
        recoveredBlock17Step = 91 ifTrue: [
            recoveredBlock17Stack2 := nil.
            recoveredBlock17PC := 92.
        ].
        recoveredBlock17Step = 92 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack2.
            recoveredBlock17PC := 93.
        ].
        recoveredBlock17Step = 93 ifTrue: [
            recoveredBlock17PC := 94.
        ].
        recoveredBlock17Step = 94 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 97.
        ].
        recoveredBlock17Step = 97 ifTrue: [
            (recoveredBlock17Stack1 ~~ nil) ifTrue: [recoveredBlock17PC := 106] ifFalse: [recoveredBlock17PC := 100].
        ].
        recoveredBlock17Step = 100 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 101.
        ].
        recoveredBlock17Step = 101 ifTrue: [
            (recoveredBlock17Stack1) handlesByDefault.
            recoveredBlock17PC := 103.
        ].
        recoveredBlock17Step = 103 ifTrue: [
            recoveredBlock17PC := 112.
        ].
        recoveredBlock17Step = 106 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 109.
        ].
        recoveredBlock17Step = 109 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 110.
        ].
        recoveredBlock17Step = 110 ifTrue: [
            (recoveredBlock17Stack1) value: (recoveredBlock17Stack2).
            recoveredBlock17PC := 112.
        ].
        recoveredBlock17Step = 112 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) errorInExecution.
            recoveredBlock17PC := 114.
        ].
        recoveredBlock17Step = 114 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack0.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Processor.
    recoveredValue3 := (recoveredValue2) activeProcess.
    recoveredValue4 := (recoveredValue3) errorHandler.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := [].
    recoveredValue8 := (self) valueWithErrorHandler: (recoveredValue5) oldHandler: (recoveredValue6) onReturnDo: (recoveredValue7).
    ^recoveredValue8
! !

