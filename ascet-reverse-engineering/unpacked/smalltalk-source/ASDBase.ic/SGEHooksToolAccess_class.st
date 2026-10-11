"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012b1c; bytecode file offset 0x912098"
!SGEHooksToolAccess class methodsFor: 'recovered'!
current
    | recoveredValue0 |
    recoveredValue0 := Current.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200540d4; bytecode file offset 0x951190"
!SGEHooksToolAccess class methodsFor: 'recovered'!
current: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Current := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20094bbc; bytecode file offset 0x99148c"
!SGEHooksToolAccess class methodsFor: 'recovered'!
cleanupEHooks: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) cleanupEHooks: (recoveredValue0) quiet: (false).
    ^self
! !

"ASDBase.ic method 0x2009c980; bytecode file offset 0x999628"
!SGEHooksToolAccess class methodsFor: 'recovered'!
cleanupEHooks
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGBasicWriteStream.
    recoveredValue1 := (recoveredValue0) create.
    (self) cleanupEHooks: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200d83e4; bytecode file offset 0x9d4cb8"
!SGEHooksToolAccess class methodsFor: 'recovered'!
logConnectingStart: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('EHOOKS connecting ...').
    (recoveredValue0) incIndent.
    ^self
! !

"ASDBase.ic method 0x201413cc; bytecode file offset 0xa3ddcc"
!SGEHooksToolAccess class methodsFor: 'recovered'!
ehooksApplicationServerIsRunning
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) current.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) ehooksApplicationServerIsRunning.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x20141548; bytecode file offset 0xa3df70"
!SGEHooksToolAccess class methodsFor: 'recovered'!
ehooksAppServerScripting
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) current.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) ehooksAppServerScripting.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x2014155c; bytecode file offset 0xa3df70"
!SGEHooksToolAccess class methodsFor: 'recovered'!
ehooksApplicationServer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) current.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) ehooksApplicationServer.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x2014164c; bytecode file offset 0xa3df70"
!SGEHooksToolAccess class methodsFor: 'recovered'!
ehooksAppServerScriptingProject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) current.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) ehooksAppServerScriptingProject.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x201b6c08; bytecode file offset 0xab34c8"
!SGEHooksToolAccess class methodsFor: 'recovered'!
ehooksApplicationServerIsRunningForProject: recoveredArg1 ifFail: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) current.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredArg2.
    recoveredBlock5Value3 := (recoveredBlock5Value0) ehooksApplicationServerIsRunningForProject: (recoveredBlock5Value1) ifFail: (recoveredBlock5Value2).
    ^recoveredBlock5Value3
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x201f7cbc; bytecode file offset 0xaf4580"
!SGEHooksToolAccess class methodsFor: 'recovered'!
cleanupEHooks: recoveredArg1 quiet: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) current.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredArg2.
    (recoveredBlock5Value0) cleanupEHooks: (recoveredBlock5Value1) quiet: (recoveredBlock5Value2).
    Current := nil.
    nil
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x204075a8; bytecode file offset 0xd03ea4"
!SGEHooksToolAccess class methodsFor: 'recovered'!
createApplicationServerForProject: recoveredArg1 tool: recoveredArg2 logStream: recoveredArg3 ifFail: recoveredArg4
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 recoveredBlock7Value9 recoveredBlock7Value10 recoveredBlock7Value11 recoveredBlock7Value12 recoveredBlock7Value13 recoveredBlock7Value14 recoveredBlock7Value15 recoveredBlock7Value16 |
    recoveredBlock7Value0 := recoveredArg3.
    (self) cleanupEHooks: (recoveredBlock7Value0) quiet: (true).
    recoveredBlock7Value1 := (self) new.
    recoveredBlock7Value2 := (recoveredBlock7Value1) initialize.
    recoveredBlock7Value3 := recoveredBlock7Value2.
    recoveredBlock7Value4 := recoveredBlock7Arg1.
    (recoveredBlock7Value3) ascetProject: (recoveredBlock7Value4).
    recoveredBlock7Value5 := recoveredBlock7Value2.
    recoveredBlock7Value6 := recoveredArg2.
    recoveredBlock7Value7 := (recoveredBlock7Value6) appServerLabel.
    (recoveredBlock7Value5) appServerLabel: (recoveredBlock7Value7).
    (self) current: (recoveredBlock7Value2).
    recoveredBlock7Value8 := EtasEHooksOleObjectWrapperApplication.
    recoveredBlock7Value9 := recoveredArg2.
    recoveredBlock7Value10 := (recoveredBlock7Value9) clientName.
    recoveredBlock7Value11 := (recoveredBlock7Value8) createObject: (recoveredBlock7Value10).
    recoveredBlock7Value12 := [:recoveredBlock7Block47Arg1 | 
    | recoveredBlock7Block47Stack0 recoveredBlock7Block47Stack1 recoveredBlock7Block47Stack2 recoveredBlock7Block47PC recoveredBlock7Block47Step recoveredBlock7Block47Done recoveredBlock7Block47Result |
    recoveredBlock7Block47Stack0 := self.
    recoveredBlock7Block47PC := 54.
    recoveredBlock7Block47Done := false.
    [recoveredBlock7Block47Done not] whileTrue: [
        recoveredBlock7Block47Step := recoveredBlock7Block47PC.
        recoveredBlock7Block47Step = 54 ifTrue: [
            recoveredBlock7Block47Stack0 := (recoveredBlock7Block47Stack0) current.
            recoveredBlock7Block47PC := 56.
        ].
        recoveredBlock7Block47Step = 56 ifTrue: [
            recoveredBlock7Block47Stack1 := recoveredBlock7Block47Arg1.
            recoveredBlock7Block47PC := 57.
        ].
        recoveredBlock7Block47Step = 57 ifTrue: [
            (recoveredBlock7Block47Stack0) ehooksApplication: (recoveredBlock7Block47Stack1).
            recoveredBlock7Block47PC := 59.
        ].
        recoveredBlock7Block47Step = 59 ifTrue: [
            recoveredBlock7Block47Stack0 := recoveredBlock7Block47Arg1.
            recoveredBlock7Block47PC := 60.
        ].
        recoveredBlock7Block47Step = 60 ifTrue: [
            (recoveredBlock7Block47Stack0) start.
            recoveredBlock7Block47PC := 62.
        ].
        recoveredBlock7Block47Step = 62 ifTrue: [
            recoveredBlock7Block47Stack0 := recoveredBlock7Block47Arg1.
            recoveredBlock7Block47PC := 63.
        ].
        recoveredBlock7Block47Step = 63 ifTrue: [
            recoveredBlock7Block47Stack0 := (recoveredBlock7Block47Stack0) isRunning.
            recoveredBlock7Block47PC := 65.
        ].
        recoveredBlock7Block47Step = 65 ifTrue: [
            (recoveredBlock7Block47Stack0) ifTrue: [recoveredBlock7Block47PC := 68] ifFalse: [recoveredBlock7Block47PC := 76].
        ].
        recoveredBlock7Block47Step = 68 ifTrue: [
            recoveredBlock7Block47Stack0 := self.
            recoveredBlock7Block47PC := 69.
        ].
        recoveredBlock7Block47Step = 69 ifTrue: [
            recoveredBlock7Block47Stack0 := (recoveredBlock7Block47Stack0) current.
            recoveredBlock7Block47PC := 71.
        ].
        recoveredBlock7Block47Step = 71 ifTrue: [
            recoveredBlock7Block47Stack1 := recoveredArg3.
            recoveredBlock7Block47PC := 74.
        ].
        recoveredBlock7Block47Step = 74 ifTrue: [
            (recoveredBlock7Block47Stack0) logServerStarted: (recoveredBlock7Block47Stack1).
            recoveredBlock7Block47PC := 76.
        ].
        recoveredBlock7Block47Step = 76 ifTrue: [
            recoveredBlock7Block47Stack0 := self.
            recoveredBlock7Block47PC := 77.
        ].
        recoveredBlock7Block47Step = 77 ifTrue: [
            recoveredBlock7Block47Stack0 := (recoveredBlock7Block47Stack0) current.
            recoveredBlock7Block47PC := 79.
        ].
        recoveredBlock7Block47Step = 79 ifTrue: [
            ^recoveredBlock7Block47Stack0
        ].
    ].
    recoveredBlock7Block47Result
].
    (recoveredBlock7Value11) ifNotNil: (recoveredBlock7Value12).
    recoveredBlock7Value13 := recoveredArg4.
    recoveredBlock7Value14 := recoveredArg2.
    recoveredBlock7Value15 := (recoveredBlock7Value14) label.
    recoveredBlock7Value16 := (recoveredBlock7Value13) value: (recoveredBlock7Value15).
    ^recoveredBlock7Value16
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

