"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x200005d4; bytecode file offset 0x10624"
!PlatformFunction methodsFor: 'recovered'!
callWithArray: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) callWithArguments: (recoveredValue0).
    ^recoveredValue1
! !

"abtdah.ic method 0x20000f68; bytecode file offset 0x10f94"
!PlatformFunction methodsFor: 'recovered'!
coroutineCallWithArray: recoveredArg1 threadKey: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) coroutineCallOnThreadKey: (recoveredValue0) withArguments: (recoveredValue1).
    ^recoveredValue2
! !

"abtdah.ic method 0x200012d0; bytecode file offset 0x11300"
!PlatformFunction methodsFor: 'recovered'!
coroutineCallThreadKey: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) coroutineCallOnThreadKey: (recoveredValue0) withArguments: (#()).
    ^recoveredValue1
! !

"abtdah.ic method 0x200015bc; bytecode file offset 0x11604"
!PlatformFunction methodsFor: 'recovered'!
coroutineCallWithArray: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EsMethodArray.
    recoveredValue1 := (recoveredValue0) activeProcess.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) coroutineCallOnThreadKey: (recoveredValue1) withArguments: (recoveredValue2).
    ^recoveredValue3
! !

"abtdah.ic method 0x2000182c; bytecode file offset 0x11864"
!PlatformFunction methodsFor: 'recovered'!
coroutineCall
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EsMethodArray.
    recoveredValue1 := (recoveredValue0) activeProcess.
    recoveredValue2 := (self) coroutineCallOnThreadKey: (recoveredValue1) withArguments: (#()).
    ^recoveredValue2
! !

"abtdah.ic method 0x20001bd4; bytecode file offset 0x11c08"
!PlatformFunction methodsFor: 'recovered'!
coroutineCallWith: recoveredArg1 threadKey: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := ExceptionalEvent.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) coroutineCallOnThreadKey: (recoveredValue0) withArguments: (recoveredValue3).
    ^recoveredValue4
! !

"abtdah.ic method 0x2000209c; bytecode file offset 0x120d8"
!PlatformFunction methodsFor: 'recovered'!
coroutineCallWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EsMethodArray.
    recoveredValue1 := (recoveredValue0) activeProcess.
    recoveredValue2 := ExceptionalEvent.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) coroutineCallOnThreadKey: (recoveredValue1) withArguments: (recoveredValue4).
    ^recoveredValue5
! !

"abtdah.ic method 0x200021c4; bytecode file offset 0x121f8"
!PlatformFunction methodsFor: 'recovered'!
coroutineCallWith: recoveredArg1 with: recoveredArg2 threadKey: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := ExceptionalEvent.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) coroutineCallOnThreadKey: (recoveredValue0) withArguments: (recoveredValue4).
    ^recoveredValue5
! !

"abtdah.ic method 0x20002524; bytecode file offset 0x12560"
!PlatformFunction methodsFor: 'recovered'!
coroutineCallWith: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EsMethodArray.
    recoveredValue1 := (recoveredValue0) activeProcess.
    recoveredValue2 := ExceptionalEvent.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (self) coroutineCallOnThreadKey: (recoveredValue1) withArguments: (recoveredValue5).
    ^recoveredValue6
! !

"abtdah.ic method 0x20002600; bytecode file offset 0x12634"
!PlatformFunction methodsFor: 'recovered'!
coroutineCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 threadKey: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg4.
    recoveredValue1 := ExceptionalEvent.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (self) coroutineCallOnThreadKey: (recoveredValue0) withArguments: (recoveredValue5).
    ^recoveredValue6
! !

"abtdah.ic method 0x20002ae0; bytecode file offset 0x12b1c"
!PlatformFunction methodsFor: 'recovered'!
coroutineCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := EsMethodArray.
    recoveredValue1 := (recoveredValue0) activeProcess.
    recoveredValue2 := ExceptionalEvent.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    recoveredValue7 := (self) coroutineCallOnThreadKey: (recoveredValue1) withArguments: (recoveredValue6).
    ^recoveredValue7
! !

"abtdah.ic method 0x20002b38; bytecode file offset 0x12b6c"
!PlatformFunction methodsFor: 'recovered'!
coroutineCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 threadKey: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg5.
    recoveredValue1 := ExceptionalEvent.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    recoveredValue7 := (self) coroutineCallOnThreadKey: (recoveredValue0) withArguments: (recoveredValue6).
    ^recoveredValue7
! !

"abtdah.ic method 0x20002ccc; bytecode file offset 0x12d08"
!PlatformFunction methodsFor: 'recovered'!
coroutineCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EsMethodArray.
    recoveredValue1 := (recoveredValue0) activeProcess.
    recoveredValue2 := ExceptionalEvent.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    recoveredValue8 := (self) coroutineCallOnThreadKey: (recoveredValue1) withArguments: (recoveredValue7).
    ^recoveredValue8
! !

"abtdah.ic method 0x20004958; bytecode file offset 0x149b0"
!PlatformFunction methodsFor: 'recovered'!
abtErrorFromAcoError: recoveredArg1 locus: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := EsWeakSet.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := Bag.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := 100.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) new: (recoveredStack4).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) on: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) printOn: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) gpInfo.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) gpInfo.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := AbtError.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := (recoveredStack4) errorCode.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack5 := (recoveredStack5) contents.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) in: (recoveredStack2) locus: (recoveredStack3) rc: (recoveredStack4) errorText: (recoveredStack5).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdah.ic method 0x20005fb8; bytecode file offset 0x16018"
!PlatformFunction methodsFor: 'recovered'!
coroutineCallOnThreadKey: recoveredArg1 withArguments: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtThreadManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeThreadedCall: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) callWithArguments: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtProcedureAddress.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAbtError.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := AbtThreadManager.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) procSyncFor: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAbtError.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) staticFuture.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) staticFutureCall: (recoveredStack1) withArguments: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAcoError.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := 'static future call'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtErrorFromAcoError: (recoveredStack1) locus: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAcoError.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := 'static future value'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtErrorFromAcoError: (recoveredStack1) locus: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdah.ic method 0x200062c4; bytecode file offset 0x1632c"
!PlatformFunction methodsFor: 'recovered'!
storeOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := '(PlatformFunction callingConvention: '.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) callingConvention.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := '   function: '.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNamed.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) functionNumber.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := '   library: '.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) library.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := '   parameterTypes: #'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) parameterTypes.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := '   returnType: '.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) returnType.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := ')'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

