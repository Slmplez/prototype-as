"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000640; bytecode file offset 0x8ffcfc"
!RBInfoController methodsFor: 'recovered'!
createProgressWindow
    ^self
! !

"ASDBase.ic method 0x20000d70; bytecode file offset 0x8ffcfc"
!RBInfoController methodsFor: 'recovered'!
outputMediumUserWindow
    ^self
! !

"ASDBase.ic method 0x20000f80; bytecode file offset 0x8ffcfc"
!RBInfoController methodsFor: 'recovered'!
close
    ^self
! !

"ASDBase.ic method 0x20001f20; bytecode file offset 0x8ffcfc"
!RBInfoController methodsFor: 'recovered'!
outputMediumDialogs
    ^self
! !

"ASDBase.ic method 0x200036b0; bytecode file offset 0x90206c"
!RBInfoController methodsFor: 'recovered'!
window: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004250; bytecode file offset 0x90206c"
!RBInfoController methodsFor: 'recovered'!
openWorkingDialogMessage: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005e68; bytecode file offset 0x902744"
!RBInfoController methodsFor: 'recovered'!
createProgressWindow: recoveredArg1 allowCancel: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x200065f0; bytecode file offset 0x902ecc"
!RBInfoController methodsFor: 'recovered'!
writeToTextWindow: recoveredArg1 title: recoveredArg2 fixedFont: recoveredArg3 selection: recoveredArg4
    ^self
! !

"ASDBase.ic method 0x2000c994; bytecode file offset 0x909658"
!RBInfoController methodsFor: 'recovered'!
promptPasswordMessage: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x20011f64; bytecode file offset 0x90e818"
!RBInfoController methodsFor: 'recovered'!
promptListItems: recoveredArg1 selectedItems: recoveredArg2 title: recoveredArg3 messageString: recoveredArg4 printBlock: recoveredArg5 multiSelection: recoveredArg6
    ^nil
! !

"ASDBase.ic method 0x200120f8; bytecode file offset 0x90e9ac"
!RBInfoController methodsFor: 'recovered'!
promptListItems: recoveredArg1 selectedItems: recoveredArg2 title: recoveredArg3 messageString: recoveredArg4 printBlock: recoveredArg5 multiSelection: recoveredArg6 withParent: recoveredArg7
    ^nil
! !

"ASDBase.ic method 0x2001a558; bytecode file offset 0x92209c"
!RBInfoController methodsFor: 'recovered'!
defaultFileName
    ^'message.log'
! !

"ASDBase.ic method 0x2004e360; bytecode file offset 0x94d048"
!RBInfoController methodsFor: 'recovered'!
stopLoggingOnFile
    (self) stopLogging.
    ^self
! !

"ASDBase.ic method 0x20065fec; bytecode file offset 0x963428"
!RBInfoController methodsFor: 'recovered'!
protocol
    | recoveredValue0 |
    recoveredValue0 := loggedUserInfo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006623c; bytecode file offset 0x963428"
!RBInfoController methodsFor: 'recovered'!
loggedUserInfo
    | recoveredValue0 |
    recoveredValue0 := loggedUserInfo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006746c; bytecode file offset 0x9646f8"
!RBInfoController methodsFor: 'recovered'!
state
    | recoveredValue0 |
    recoveredValue0 := state.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067fd4; bytecode file offset 0x965b90"
!RBInfoController methodsFor: 'recovered'!
fileName
    | recoveredValue0 |
    recoveredValue0 := fileName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073570; bytecode file offset 0x970b34"
!RBInfoController methodsFor: 'recovered'!
window
    ^nil
! !

"ASDBase.ic method 0x2007bd0c; bytecode file offset 0x97c330"
!RBInfoController methodsFor: 'recovered'!
isOutputMediumDialogs
    ^false
! !

"ASDBase.ic method 0x2007cd2c; bytecode file offset 0x97c330"
!RBInfoController methodsFor: 'recovered'!
isOutputMediumUserWindow
    ^false
! !

"ASDBase.ic method 0x2007d744; bytecode file offset 0x97c330"
!RBInfoController methodsFor: 'recovered'!
isUIInfoController
    ^false
! !

"ASDBase.ic method 0x200845ac; bytecode file offset 0x981ca4"
!RBInfoController methodsFor: 'recovered'!
userInfoInApplWindow: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) userInfo: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200894ec; bytecode file offset 0x985ef8"
!RBInfoController methodsFor: 'recovered'!
clearLoggedUserInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    loggedUserInfo := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2008cf94; bytecode file offset 0x989db0"
!RBInfoController methodsFor: 'recovered'!
resetFileName
    | recoveredValue0 |
    recoveredValue0 := (self) defaultFileName.
    (self) fileName: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2009267c; bytecode file offset 0x98ef64"
!RBInfoController methodsFor: 'recovered'!
logUserInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := loggedUserInfo.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a0e6c; bytecode file offset 0x99db8c"
!RBInfoController methodsFor: 'recovered'!
outputMediumFile
    | recoveredValue0 |
    recoveredValue0 := (self) state.
    (recoveredValue0) key: ('File').
    ^self
! !

"ASDBase.ic method 0x200a0ef8; bytecode file offset 0x99db8c"
!RBInfoController methodsFor: 'recovered'!
startLogging
    | recoveredValue0 |
    recoveredValue0 := (self) state.
    (recoveredValue0) value: ('log').
    ^self
! !

"ASDBase.ic method 0x200a0fc0; bytecode file offset 0x99db8c"
!RBInfoController methodsFor: 'recovered'!
startLoggingOnFile
    | recoveredValue0 |
    recoveredValue0 := (self) state.
    (recoveredValue0) value: ('logOnFile').
    ^self
! !

"ASDBase.ic method 0x200a11c8; bytecode file offset 0x99db8c"
!RBInfoController methodsFor: 'recovered'!
stopLogging
    | recoveredValue0 |
    recoveredValue0 := (self) state.
    (recoveredValue0) value: ('noLog').
    ^self
! !

"ASDBase.ic method 0x200be874; bytecode file offset 0x9bb178"
!RBInfoController methodsFor: 'recovered'!
loggedUserInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    loggedUserInfo := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200be9e8; bytecode file offset 0x9bc0b4"
!RBInfoController methodsFor: 'recovered'!
state: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    state := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c059c; bytecode file offset 0x9bd228"
!RBInfoController methodsFor: 'recovered'!
fileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20110b00; bytecode file offset 0xa0d3bc"
!RBInfoController methodsFor: 'recovered'!
writeToTextWindow: recoveredArg1 title: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (0) @ (0).
    recoveredValue3 := (self) writeToTextWindow: (recoveredValue0) title: (recoveredValue1) fixedFont: (false) selection: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20202f38; bytecode file offset 0xaff824"
!RBInfoController methodsFor: 'recovered'!
openInfo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) state.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 'log'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) state.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'logOnFile'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) logUserInfo: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) addToFile: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20202f58; bytecode file offset 0xaff824"
!RBInfoController methodsFor: 'recovered'!
userInfo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) state.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 'log'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) state.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'logOnFile'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) logUserInfo: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) addToFile: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20219a94; bytecode file offset 0xb16378"
!RBInfoController methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) loggedUserInfo: (recoveredValue1).
    recoveredValue2 := (self) defaultFileName.
    (self) fileName: (recoveredValue2).
    recoveredValue3 := Association.
    recoveredValue4 := (recoveredValue3) key: ('File') value: ('log').
    (self) state: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2027a564; bytecode file offset 0xb76e4c"
!RBInfoController methodsFor: 'recovered'!
addToFile: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsReadWriteFileStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := EtasGeneralDllApi.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) getETASLogFilePath.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPathname.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) fileName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) setToEnd.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) printOn: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) flush.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) answer.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

