"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x20000060; bytecode file offset 0x10088"
!Object methodsFor: 'recovered'!
abrDereferenced
    ^self
! !

"abtdah.ic method 0x20000078; bytecode file offset 0x100e0"
!Object methodsFor: 'recovered'!
abtReturnReceiver: recoveredArg1
    ^self
! !

"abtdah.ic method 0x200001ec; bytecode file offset 0x10284"
!Object methodsFor: 'recovered'!
abtDereferencedValue
    | recoveredValue0 |
    recoveredValue0 := (self) abrDereferenced.
    ^recoveredValue0
! !

"abtdah.ic method 0x2000024c; bytecode file offset 0x10284"
!Object methodsFor: 'recovered'!
abtAsAddress
    | recoveredValue0 |
    recoveredValue0 := (self) abtAsExternalPassedPointer.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000578; bytecode file offset 0x105bc"
!Object methodsFor: 'recovered'!
abtReplaceableDisplay: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) display.
    ^recoveredValue1
! !

"abtdah.ic method 0x20000584; bytecode file offset 0x105bc"
!Object methodsFor: 'recovered'!
haltErrorIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) halt.
    ^recoveredValue1
! !

"abtdah.ic method 0x2000061c; bytecode file offset 0x1068c"
!Object methodsFor: 'recovered'!
bigEndian
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EsImageStartUp.
    recoveredValue1 := (recoveredValue0) bigEndian.
    ^recoveredValue1
! !

"abtdah.ic method 0x2000063c; bytecode file offset 0x1068c"
!Object methodsFor: 'recovered'!
codePage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtCodePageConverter.
    recoveredValue1 := (recoveredValue0) currentCodePage.
    ^recoveredValue1
! !

"abtdah.ic method 0x200007a4; bytecode file offset 0x107d0"
!Object methodsFor: 'recovered'!
abrSender
    | recoveredValue0 |
    recoveredValue0 := (self) abrSender: (3).
    ^recoveredValue0
! !

"abtdah.ic method 0x20000dbc; bytecode file offset 0x10e2c"
!Object methodsFor: 'recovered'!
isAbtRecord
    ^false
! !

"abtdah.ic method 0x20000dc4; bytecode file offset 0x10e2c"
!Object methodsFor: 'recovered'!
abtIsDirectedMessage
    ^false
! !

"abtdah.ic method 0x20000dd4; bytecode file offset 0x10e2c"
!Object methodsFor: 'recovered'!
abtIsProcess
    ^false
! !

"abtdah.ic method 0x20000ddc; bytecode file offset 0x10e2c"
!Object methodsFor: 'recovered'!
abtIsUIProcess
    ^false
! !

"abtdah.ic method 0x20000df4; bytecode file offset 0x10e2c"
!Object methodsFor: 'recovered'!
isAbtCompoundType
    ^false
! !

"abtdah.ic method 0x20001238; bytecode file offset 0x11268"
!Object methodsFor: 'recovered'!
abtReplaceableBasicDisplay: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtPrimitiveLoggingSupport.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) logError: (recoveredValue1).
    ^self
! !

"abtdah.ic method 0x200012b0; bytecode file offset 0x11300"
!Object methodsFor: 'recovered'!
traceOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) traceOn: (recoveredValue0) withIndentation: ('').
    ^recoveredValue1
! !

"abtdah.ic method 0x2000177c; bytecode file offset 0x117ac"
!Object methodsFor: 'recovered'!
abtWhenPrimitive: recoveredArg1 signal: recoveredArg2 of: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) abrMessageToSignalEvent: (recoveredValue2).
    recoveredValue4 := (self) abtWhenPrimitive: (recoveredValue0) perform: (recoveredValue3).
    ^recoveredValue4
! !

"abtdah.ic method 0x20002074; bytecode file offset 0x120ac"
!Object methodsFor: 'recovered'!
abrMessageToSignalEvent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := AbtMessageToSignalEvent.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) receiver: (self).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue1) event: (recoveredValue3).
    ^recoveredValue4
! !

"abtdah.ic method 0x20002c20; bytecode file offset 0x12c54"
!Object methodsFor: 'recovered'!
ignoreErrorIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := AbtError.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) in: (recoveredStack1) locus: (recoveredStack2) rc: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdah.ic method 0x20003b74; bytecode file offset 0x13bc0"
!Object methodsFor: 'recovered'!
traceOn: recoveredArg1 withIndentation: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SubApplication.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) current.
    recoveredValue3 := (recoveredValue2) preferredStringClass.
    recoveredValue4 := (recoveredValue3) new: (100).
    recoveredValue5 := (recoveredValue0) on: (recoveredValue4).
    recoveredValue6 := recoveredValue5.
    recoveredLocal1 := recoveredValue6.
    (self) printOn: (recoveredValue5).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) contents.
    (recoveredValue7) nextPutAll: (recoveredValue9).
    ^self
! !

"abtdah.ic method 0x20004234; bytecode file offset 0x14270"
!Object methodsFor: 'recovered'!
abrSender: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isInteger.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := EsMethodArray.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) activeProcess.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) numberOfFrames.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodAtFrame: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

