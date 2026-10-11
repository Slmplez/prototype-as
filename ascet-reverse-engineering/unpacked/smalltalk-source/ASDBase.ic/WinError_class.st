"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200cb210; bytecode file offset 0x9c7b3c"
!WinError class methodsFor: 'recovered'!
createLocation: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) getLastError.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) location: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d7054; bytecode file offset 0x9d3914"
!WinError class methodsFor: 'recovered'!
getErrorStringFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Association.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) getErrorString: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) key: (recoveredValue1) value: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20149754; bytecode file offset 0xa46020"
!WinError class methodsFor: 'recovered'!
getLastErrorString
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OSCall.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) getLastError.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := Association.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) getErrorString: (recoveredValue5).
    recoveredValue7 := (recoveredValue3) key: (recoveredValue4) value: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2015b588; bytecode file offset 0xa57ef4"
!WinError class methodsFor: 'recovered'!
create: recoveredArg1 msg: recoveredArg2 errorNumber: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) messageId: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) messageText: (recoveredValue5).
    recoveredValue6 := recoveredArg3.
    (recoveredValue1) errorNumber: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2019d1bc; bytecode file offset 0xa99a88"
!WinError class methodsFor: 'recovered'!
getLastError
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) getLastErrorString.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := WinError.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := (recoveredValue2) value.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (recoveredValue4) key.
    recoveredValue6 := (recoveredValue1) create: (nil) msg: (recoveredValue3) errorNumber: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue7) setMethodLocation: (1).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x202654c8; bytecode file offset 0xb61da8"
!WinError class methodsFor: 'recovered'!
getPlainErrorString: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (recoveredValue0) new: (256).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := OSCall.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := FormatMessageIgnoreInserts.
    recoveredValue5 := FormatMessageFromSystem.
    recoveredValue6 := (recoveredValue4) | (recoveredValue5).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) reference.
    recoveredValue11 := (recoveredValue10) size.
    (recoveredValue3) formatMessage: (recoveredValue6) lpSource: (nil) dwMessageId: (recoveredValue7) dwLanguageId: (0) lpBuffer: (recoveredValue8) nSize: (recoveredValue11) lpArguments: (nil).
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue12) asString.
    ^recoveredValue13
! !

"ASDBase.ic method 0x20287d20; bytecode file offset 0xb845ec"
!WinError class methodsFor: 'recovered'!
getError: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isInteger.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) getErrorStringFor: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := WinError.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := (recoveredStack4) key.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2) msg: (recoveredStack3) errorNumber: (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) getErrorStringFor: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := WinError.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) key.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) msg: (recoveredStack2) errorNumber: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202eeb28; bytecode file offset 0xbeb418"
!WinError class methodsFor: 'recovered'!
getErrorString: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (recoveredValue0) new: (256).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := OSCall.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := FormatMessageIgnoreInserts.
    recoveredValue5 := FormatMessageFromSystem.
    recoveredValue6 := (recoveredValue4) | (recoveredValue5).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) reference.
    recoveredValue11 := (recoveredValue10) size.
    (recoveredValue3) formatMessage: (recoveredValue6) lpSource: (nil) dwMessageId: (recoveredValue7) dwLanguageId: (0) lpBuffer: (recoveredValue8) nSize: (recoveredValue11) lpArguments: (nil).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) printString.
    recoveredValue14 := ('winError: ') , (recoveredValue13).
    recoveredValue15 := (recoveredValue14) , (' :: ').
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (recoveredValue16) asString.
    recoveredValue18 := (recoveredValue15) , (recoveredValue17).
    ^recoveredValue18
! !

