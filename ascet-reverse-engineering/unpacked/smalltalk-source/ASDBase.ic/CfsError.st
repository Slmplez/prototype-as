"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004780; bytecode file offset 0x90206c"
!CfsError methodsFor: 'recovered'!
subErrors: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004940; bytecode file offset 0x90206c"
!CfsError methodsFor: 'recovered'!
addErrorObject: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20009db8; bytecode file offset 0x908be4"
!CfsError methodsFor: 'recovered'!
errorNumber
    | recoveredValue0 |
    recoveredValue0 := (self) errno.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b330; bytecode file offset 0x908be4"
!CfsError methodsFor: 'recovered'!
messageText
    | recoveredValue0 |
    recoveredValue0 := (self) message.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076a6c; bytecode file offset 0x9757c8"
!CfsError methodsFor: 'recovered'!
isError
    ^true
! !

"ASDBase.ic method 0x2009b8ac; bytecode file offset 0x99816c"
!CfsError methodsFor: 'recovered'!
winMessage
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := WinError.
    recoveredValue1 := platformErrno.
    recoveredValue2 := (recoveredValue0) getError: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) messageText.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200afd18; bytecode file offset 0x9ac5d4"
!CfsError methodsFor: 'recovered'!
addWinError
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := WinError.
    recoveredValue1 := platformErrno.
    recoveredValue2 := (recoveredValue0) getError: (recoveredValue1).
    platformErrno := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b8080; bytecode file offset 0x9b4944"
!CfsError methodsFor: 'recovered'!
getMethodLocation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Processor.
    recoveredValue1 := (recoveredValue0) activeProcess.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) + (1).
    recoveredValue4 := (recoveredValue1) methodAtFrame: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) printString.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20205348; bytecode file offset 0xb01c14"
!CfsError methodsFor: 'recovered'!
printExtended
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := errorObject.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := errorObject.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) printOn: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b5c6c; bytecode file offset 0xcb2568"
!CfsError methodsFor: 'recovered'!
monitor
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := '<'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := '>'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) addText: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) getMethodLocation: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) addText: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorCode.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) platformErrno.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) platformErrno.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) monitor.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := WinError.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) platformErrno.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) getError: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) monitor.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) addText: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

