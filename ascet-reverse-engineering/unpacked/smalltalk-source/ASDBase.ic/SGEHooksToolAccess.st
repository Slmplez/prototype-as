"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006608; bytecode file offset 0x902ecc"
!SGEHooksToolAccess methodsFor: 'recovered'!
checkProjectIdentifier: recoveredArg1 settings: recoveredArg2 monitorStream: recoveredArg3 ifFail: recoveredArg4
    ^self
! !

"ASDBase.ic method 0x20026f2c; bytecode file offset 0x923928"
!SGEHooksToolAccess methodsFor: 'recovered'!
label
    ^'EHOOKS Access'
! !

"ASDBase.ic method 0x2005622c; bytecode file offset 0x952c58"
!SGEHooksToolAccess methodsFor: 'recovered'!
logSynchronizeEnd: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) decIndent.
    ^self
! !

"ASDBase.ic method 0x20056304; bytecode file offset 0x952c58"
!SGEHooksToolAccess methodsFor: 'recovered'!
logConnectingEnd: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) decIndent.
    ^self
! !

"ASDBase.ic method 0x2005637c; bytecode file offset 0x952c58"
!SGEHooksToolAccess methodsFor: 'recovered'!
logDisconnectingEnd: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) decIndent.
    ^self
! !

"ASDBase.ic method 0x20065d4c; bytecode file offset 0x963428"
!SGEHooksToolAccess methodsFor: 'recovered'!
ascetProject
    | recoveredValue0 |
    recoveredValue0 := ascetProject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200670f4; bytecode file offset 0x9646f8"
!SGEHooksToolAccess methodsFor: 'recovered'!
ehooksApplicationServer
    | recoveredValue0 |
    recoveredValue0 := ehooksApplication.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068ba4; bytecode file offset 0x965b90"
!SGEHooksToolAccess methodsFor: 'recovered'!
appServerLabel
    | recoveredValue0 |
    recoveredValue0 := appServerLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20094934; bytecode file offset 0x9913f0"
!SGEHooksToolAccess methodsFor: 'recovered'!
logScriptingCurrent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) newlinePutAll: ('using current').
    ^self
! !

"ASDBase.ic method 0x20094ae4; bytecode file offset 0x9913f0"
!SGEHooksToolAccess methodsFor: 'recovered'!
logScriptingCurrentUsing: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) newlinePutAll: ('using open configuration').
    ^self
! !

"ASDBase.ic method 0x200bda2c; bytecode file offset 0x9bb178"
!SGEHooksToolAccess methodsFor: 'recovered'!
ascetProject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ascetProject := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf010; bytecode file offset 0x9bc0b4"
!SGEHooksToolAccess methodsFor: 'recovered'!
ehooksApplication: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ehooksApplication := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfd14; bytecode file offset 0x9bd228"
!SGEHooksToolAccess methodsFor: 'recovered'!
appServerLabel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    appServerLabel := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d83f8; bytecode file offset 0x9d4cb8"
!SGEHooksToolAccess methodsFor: 'recovered'!
logDisconnectingStart: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('EHOOKS disconnecting ...').
    (recoveredValue0) incIndent.
    ^self
! !

"ASDBase.ic method 0x200db984; bytecode file offset 0x9d82c0"
!SGEHooksToolAccess methodsFor: 'recovered'!
logSynchronizeFunctions: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) logSynchronize: ('bypass function') count: (recoveredValue0) on: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200db9a4; bytecode file offset 0x9d82c0"
!SGEHooksToolAccess methodsFor: 'recovered'!
logSynchronizeVariables: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) logSynchronize: ('write hook') count: (recoveredValue0) on: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200db9b4; bytecode file offset 0x9d82c0"
!SGEHooksToolAccess methodsFor: 'recovered'!
logSynchronizeLibraries: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) logSynchronize: ('library file') count: (recoveredValue0) on: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200db9e4; bytecode file offset 0x9d82c0"
!SGEHooksToolAccess methodsFor: 'recovered'!
logSynchronizeIncludes: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) logSynchronize: ('include directory') count: (recoveredValue0) on: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200dc7e0; bytecode file offset 0x9d90fc"
!SGEHooksToolAccess methodsFor: 'recovered'!
logOutputPathNotFound: recoveredArg1 file: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) logNotFound: (recoveredValue0) file: (recoveredValue1) category: ('output path').
    ^self
! !

"ASDBase.ic method 0x200dc7f0; bytecode file offset 0x9d90fc"
!SGEHooksToolAccess methodsFor: 'recovered'!
logInputFileFound: recoveredArg1 file: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) logFileFound: (recoveredValue0) file: (recoveredValue1) category: ('input').
    ^self
! !

"ASDBase.ic method 0x200dc810; bytecode file offset 0x9d90fc"
!SGEHooksToolAccess methodsFor: 'recovered'!
logOutputFileFound: recoveredArg1 file: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) logFileFound: (recoveredValue0) file: (recoveredValue1) category: ('output').
    ^self
! !

"ASDBase.ic method 0x200dc830; bytecode file offset 0x9d90fc"
!SGEHooksToolAccess methodsFor: 'recovered'!
logInputFileNotFound: recoveredArg1 file: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) logNotFound: (recoveredValue0) file: (recoveredValue1) category: ('input file').
    ^self
! !

"ASDBase.ic method 0x200e99a4; bytecode file offset 0x9e62c8"
!SGEHooksToolAccess methodsFor: 'recovered'!
logServerClosed: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) logServer: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) nextPutAll: (' closed').
    ^self
! !

"ASDBase.ic method 0x200e99cc; bytecode file offset 0x9e62c8"
!SGEHooksToolAccess methodsFor: 'recovered'!
logScriptingCurrentConfiguration: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) logScriptingCurrent: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) nextPutAll: (' configuration').
    ^self
! !

"ASDBase.ic method 0x200e99e0; bytecode file offset 0x9e62c8"
!SGEHooksToolAccess methodsFor: 'recovered'!
logSynchronizeFailed: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) logServer: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) nextPutAll: (' synchronization failed').
    ^self
! !

"ASDBase.ic method 0x200e99f4; bytecode file offset 0x9e62c8"
!SGEHooksToolAccess methodsFor: 'recovered'!
logServerStarted: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) logServer: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) nextPutAll: (' started').
    ^self
! !

"ASDBase.ic method 0x200e9a08; bytecode file offset 0x9e62c8"
!SGEHooksToolAccess methodsFor: 'recovered'!
logServerFound: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) logServer: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) nextPutAll: (' found').
    ^self
! !

"ASDBase.ic method 0x200fcc6c; bytecode file offset 0x9f9548"
!SGEHooksToolAccess methodsFor: 'recovered'!
logServer: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) appServerLabel.
    (recoveredValue1) newlinePutAll: (recoveredValue2).
    (recoveredValue0) nextPutAll: (' automation server').
    ^self
! !

"ASDBase.ic method 0x2010d908; bytecode file offset 0xa0a1cc"
!SGEHooksToolAccess methodsFor: 'recovered'!
logSynchronizeStart: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) decIndent.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) newlinePutAll: ('EHOOKS synchronization ...').
    (recoveredValue0) incIndent.
    ^self
! !

"ASDBase.ic method 0x20123aa4; bytecode file offset 0xa20364"
!SGEHooksToolAccess methodsFor: 'recovered'!
logASCETProjectCurrent: recoveredArg1 path: recoveredArg2 expectedPath: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) newlinePutAll: ('ASCET project OID').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    (self) logDoesNotMatch: (recoveredValue1) value: (recoveredValue2) expectedValue: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20134cf8; bytecode file offset 0xa315b8"
!SGEHooksToolAccess methodsFor: 'recovered'!
logScriptingCurrent: recoveredArg1 configuration: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) logScriptingCurrentConfiguration: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) nextPutAll: (' path: ').
    recoveredValue3 := recoveredArg2.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20141354; bytecode file offset 0xa3ddcc"
!SGEHooksToolAccess methodsFor: 'recovered'!
ehooksApplicationServerIsRunning
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ehooksApplicationServer.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) isRunning.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x20141534; bytecode file offset 0xa3df70"
!SGEHooksToolAccess methodsFor: 'recovered'!
ehooksAppServerScripting
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ehooksApplicationServer.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) scripting.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x201699f8; bytecode file offset 0xa662bc"
!SGEHooksToolAccess methodsFor: 'recovered'!
logScriptingCurrent: recoveredArg1 identifier: recoveredArg2 expectedIdentifier: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (self) logScriptingCurrentConfiguration: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) nextPutAll: (' identifier').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    (self) logDoesNotMatch: (recoveredValue2) value: (recoveredValue3) expectedValue: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20187b48; bytecode file offset 0xa8440c"
!SGEHooksToolAccess methodsFor: 'recovered'!
logScriptingCurrent: recoveredArg1 identifier: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (self) logScriptingCurrentConfiguration: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) nextPutAll: (' identifier: "').
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) nextPutAll: (recoveredValue4).
    (recoveredValue1) nextPutAll: ('"').
    ^self
! !

"ASDBase.ic method 0x2018874c; bytecode file offset 0xa85010"
!SGEHooksToolAccess methodsFor: 'recovered'!
logNotFound: recoveredArg1 file: recoveredArg2 category: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg3.
    (recoveredValue1) newlinePutAll: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) nextPutAll: (' "').
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) nextPutAll: (recoveredValue5).
    (recoveredValue0) nextPutAll: ('" does not exist').
    ^self
! !

"ASDBase.ic method 0x20197164; bytecode file offset 0xa93a64"
!SGEHooksToolAccess methodsFor: 'recovered'!
logScriptingQuit: recoveredArg1 configuration: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('quit configuration').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) nextPutAll: (' with path = "').
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) nextPutAll: (recoveredValue4).
    (recoveredValue0) nextPutAll: ('"').
    ^self
! !

"ASDBase.ic method 0x2019719c; bytecode file offset 0xa93a64"
!SGEHooksToolAccess methodsFor: 'recovered'!
logScriptingOpen: recoveredArg1 configuration: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('open configuration').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) nextPutAll: (' with path = "').
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) nextPutAll: (recoveredValue4).
    (recoveredValue0) nextPutAll: ('"').
    ^self
! !

"ASDBase.ic method 0x201cb264; bytecode file offset 0xac7b28"
!SGEHooksToolAccess methodsFor: 'recovered'!
ehooksAppServerScriptingProject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ehooksAppServerScripting.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) hasProject.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 22].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) project.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x201dcb04; bytecode file offset 0xad93cc"
!SGEHooksToolAccess methodsFor: 'recovered'!
logFileFound: recoveredArg1 file: recoveredArg2 category: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('using ').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg3.
    (recoveredValue2) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) nextPutAll: (' file "').
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) nextPutAll: (recoveredValue6).
    (recoveredValue0) nextPutAll: ('"').
    ^self
! !

"ASDBase.ic method 0x201dcb54; bytecode file offset 0xad9418"
!SGEHooksToolAccess methodsFor: 'recovered'!
logDoesNotMatch: recoveredArg1 value: recoveredArg2 expectedValue: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: (' does not match:  "').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) nextPutAll: ('" !!= "').
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) nextPutAll: (recoveredValue6).
    (recoveredValue0) nextPutAll: ('"').
    ^self
! !

"ASDBase.ic method 0x201ead0c; bytecode file offset 0xae75cc"
!SGEHooksToolAccess methodsFor: 'recovered'!
newEHooksBypassFunctionFrom: recoveredArg1 ehooksProject: recoveredArg2 client: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) newBypassFunction.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := recoveredArg3.
    recoveredBlock8Value1 := recoveredBlock8Arg1.
    recoveredBlock8Value2 := recoveredArg1.
    (recoveredBlock8Value0) updateEHooksBypassFunction: (recoveredBlock8Value1) with: (recoveredBlock8Value2).
    recoveredBlock8Value3 := recoveredBlock8Arg1.
    ^recoveredBlock8Value3
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^nil
! !

"ASDBase.ic method 0x20210de0; bytecode file offset 0xb0d6a0"
!SGEHooksToolAccess methodsFor: 'recovered'!
newEHooksTriggerConfigurationFrom: recoveredArg1 ehooksProject: recoveredArg2 client: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) newEHooksBypassFunctionFrom: (recoveredValue0) ehooksProject: (recoveredValue1) client: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 |
    recoveredBlock16Value0 := recoveredArg2.
    recoveredBlock16Value1 := recoveredBlock16Arg1.
    recoveredBlock16Value2 := (recoveredBlock16Value0) newTriggerConfiguration: (recoveredBlock16Value1).
    ^recoveredBlock16Value2
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    ^nil
! !

"ASDBase.ic method 0x2024cb68; bytecode file offset 0xb49438"
!SGEHooksToolAccess methodsFor: 'recovered'!
logScriptingCurrent: recoveredArg1 backendLocation: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 'backend not found'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) logScriptingCurrent: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := ' backend "'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) fileName.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := '"'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024cbb4; bytecode file offset 0xb494a8"
!SGEHooksToolAccess methodsFor: 'recovered'!
logScriptingCurrent: recoveredArg1 target: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'target ECU (and variant) has not been set'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) logScriptingCurrent: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := ' target "'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := '"'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024cbd8; bytecode file offset 0xb494a8"
!SGEHooksToolAccess methodsFor: 'recovered'!
logScriptingCurrent: recoveredArg1 backEndVersion: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'backend version not found'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) logScriptingCurrent: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := ' backend version "'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := '"'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026e940; bytecode file offset 0xb6b20c"
!SGEHooksToolAccess methodsFor: 'recovered'!
ehooksApplicationServerIsRunningForProject: recoveredArg1 ifFail: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksApplicationServerIsRunning.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) ascetProject.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := recoveredArg1.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) globalIdString.
            recoveredBlock10PC := 20.
        ].
        recoveredBlock10Step = 20 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 21.
        ].
        recoveredBlock10Step = 21 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) globalIdString.
            recoveredBlock10PC := 22.
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) equals: (recoveredBlock10Stack2).
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            (recoveredBlock10Stack1) ifTrue: [recoveredBlock10PC := 26] ifFalse: [recoveredBlock10PC := 28].
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10Stack1 := true.
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            ^recoveredBlock10Stack1
        ].
        recoveredBlock10Step = 28 ifTrue: [
            recoveredBlock10Stack1 := recoveredArg2.
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            recoveredBlock10Stack2 := self.
            recoveredBlock10PC := 32.
        ].
        recoveredBlock10Step = 32 ifTrue: [
            recoveredBlock10Stack3 := recoveredBlock10Arg1.
            recoveredBlock10PC := 33.
        ].
        recoveredBlock10Step = 33 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) value: (recoveredBlock10Stack2) value: (recoveredBlock10Stack3).
            recoveredBlock10PC := 35.
        ].
        recoveredBlock10Step = 35 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202904ec; bytecode file offset 0xb8cdbc"
!SGEHooksToolAccess methodsFor: 'recovered'!
logSynchronize: recoveredArg1 count: recoveredArg2 on: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := ' synchronize '.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) newlinePutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 's'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20481c6c; bytecode file offset 0xd7e55c"
!SGEHooksToolAccess methodsFor: 'recovered'!
cleanupEHooks: recoveredArg1 quiet: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ehooksApplicationServer.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) isRunning.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 106].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) ehooksAppServerScriptingProject.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack2 := [:block28102628Arg1 | 
    | block28102628Value0 block28102628Value1 |
    block28102628Value0 := block28102628Arg1.
    block28102628Value1 := (block28102628Value0) releaseObject.
    block28102628Value1
].
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            (recoveredBlock5Stack1) ifNotNil: (recoveredBlock5Stack2).
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) ehooksAppServerScripting.
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            (recoveredBlock5Stack1 ~~ nil) ifTrue: [recoveredBlock5PC := 44] ifFalse: [recoveredBlock5PC := 38].
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) ehooksApplicationServer.
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            (recoveredBlock5Stack1 == nil) ifTrue: [recoveredBlock5PC := 106] ifFalse: [recoveredBlock5PC := 44].
        ].
        recoveredBlock5Step = 44 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg2.
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 56] ifFalse: [recoveredBlock5PC := 50].
        ].
        recoveredBlock5Step = 50 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 51.
        ].
        recoveredBlock5Step = 51 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 54.
        ].
        recoveredBlock5Step = 54 ifTrue: [
            (recoveredBlock5Stack1) logDisconnectingStart: (recoveredBlock5Stack2).
            recoveredBlock5PC := 56.
        ].
        recoveredBlock5Step = 56 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 57.
        ].
        recoveredBlock5Step = 57 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) ehooksAppServerScripting.
            recoveredBlock5PC := 59.
        ].
        recoveredBlock5Step = 59 ifTrue: [
            recoveredBlock5Stack2 := [:recoveredBlock5Block59Arg1 | 
    | recoveredBlock5Block59Stack0 recoveredBlock5Block59Stack1 recoveredBlock5Block59Stack2 recoveredBlock5Block59Stack3 recoveredBlock5Block59Stack4 recoveredBlock5Block59PC recoveredBlock5Block59Step recoveredBlock5Block59Done recoveredBlock5Block59Result |
    recoveredBlock5Block59Stack0 := self.
    recoveredBlock5Block59PC := 66.
    recoveredBlock5Block59Done := false.
    [recoveredBlock5Block59Done not] whileTrue: [
        recoveredBlock5Block59Step := recoveredBlock5Block59PC.
        recoveredBlock5Block59Step = 66 ifTrue: [
            recoveredBlock5Block59Stack1 := recoveredArg2.
            recoveredBlock5Block59PC := 69.
        ].
        recoveredBlock5Block59Step = 69 ifTrue: [
            (recoveredBlock5Block59Stack1) ifTrue: [recoveredBlock5Block59PC := 85] ifFalse: [recoveredBlock5Block59PC := 72].
        ].
        recoveredBlock5Block59Step = 72 ifTrue: [
            recoveredBlock5Block59Stack1 := self.
            recoveredBlock5Block59PC := 73.
        ].
        recoveredBlock5Block59Step = 73 ifTrue: [
            recoveredBlock5Block59Stack2 := recoveredArg1.
            recoveredBlock5Block59PC := 76.
        ].
        recoveredBlock5Block59Step = 76 ifTrue: [
            recoveredBlock5Block59Stack3 := self.
            recoveredBlock5Block59PC := 77.
        ].
        recoveredBlock5Block59Step = 77 ifTrue: [
            recoveredBlock5Block59Stack3 := (recoveredBlock5Block59Stack3) ascetProject.
            recoveredBlock5Block59PC := 79.
        ].
        recoveredBlock5Block59Step = 79 ifTrue: [
            recoveredBlock5Block59Stack3 := (recoveredBlock5Block59Stack3) eHooksConfiguration.
            recoveredBlock5Block59PC := 81.
        ].
        recoveredBlock5Block59Step = 81 ifTrue: [
            recoveredBlock5Block59Stack3 := (recoveredBlock5Block59Stack3) configFileName.
            recoveredBlock5Block59PC := 83.
        ].
        recoveredBlock5Block59Step = 83 ifTrue: [
            (recoveredBlock5Block59Stack1) logScriptingQuit: (recoveredBlock5Block59Stack2) configuration: (recoveredBlock5Block59Stack3).
            recoveredBlock5Block59PC := 85.
        ].
        recoveredBlock5Block59Step = 85 ifTrue: [
            recoveredBlock5Block59Stack1 := recoveredBlock5Block59Arg1.
            recoveredBlock5Block59PC := 86.
        ].
        recoveredBlock5Block59Step = 86 ifTrue: [
            (recoveredBlock5Block59Stack1) quit.
            recoveredBlock5Block59PC := 88.
        ].
        recoveredBlock5Block59Step = 88 ifTrue: [
            recoveredBlock5Block59Stack1 := recoveredBlock5Block59Arg1.
            recoveredBlock5Block59PC := 89.
        ].
        recoveredBlock5Block59Step = 89 ifTrue: [
            recoveredBlock5Block59Stack1 := (recoveredBlock5Block59Stack1) releaseObject.
            recoveredBlock5Block59PC := 91.
        ].
        recoveredBlock5Block59Step = 91 ifTrue: [
            recoveredBlock5Block59Result := recoveredBlock5Block59Stack1.
            recoveredBlock5Block59Done := true.
        ].
    ].
    recoveredBlock5Block59Result
].
            recoveredBlock5PC := 92.
        ].
        recoveredBlock5Step = 92 ifTrue: [
            (recoveredBlock5Stack1) ifNotNil: (recoveredBlock5Stack2).
            recoveredBlock5PC := 94.
        ].
        recoveredBlock5Step = 94 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg2.
            recoveredBlock5PC := 97.
        ].
        recoveredBlock5Step = 97 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 106] ifFalse: [recoveredBlock5PC := 100].
        ].
        recoveredBlock5Step = 100 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 101.
        ].
        recoveredBlock5Step = 101 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 104.
        ].
        recoveredBlock5Step = 104 ifTrue: [
            (recoveredBlock5Stack1) logServerClosed: (recoveredBlock5Stack2).
            recoveredBlock5PC := 106.
        ].
        recoveredBlock5Step = 106 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 107.
        ].
        recoveredBlock5Step = 107 ifTrue: [
            (recoveredBlock5Stack1) releaseObject.
            recoveredBlock5PC := 109.
        ].
        recoveredBlock5Step = 109 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 110.
        ].
        recoveredBlock5Step = 110 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg2.
            recoveredBlock5PC := 113.
        ].
        recoveredBlock5Step = 113 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 123] ifFalse: [recoveredBlock5PC := 116].
        ].
        recoveredBlock5Step = 116 ifTrue: [
            recoveredBlock5PC := 117.
        ].
        recoveredBlock5Step = 117 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 118.
        ].
        recoveredBlock5Step = 118 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 121.
        ].
        recoveredBlock5Step = 121 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) logDisconnectingEnd: (recoveredBlock5Stack2).
            recoveredBlock5PC := 123.
        ].
        recoveredBlock5Step = 123 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20486de0; bytecode file offset 0xd836d0"
!SGEHooksToolAccess methodsFor: 'recovered'!
checkApplicationServerBackend: recoveredArg1 settings: recoveredArg2 monitorStream: recoveredArg3 ifFail: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) logScriptingCurrent: (recoveredStack1) target: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := '2.0'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) backendVersion.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 |
    recoveredBlock28Value0 := recoveredBlock28Arg1.
    recoveredBlock28Value1 := (recoveredBlock28Value0) asString.
    recoveredBlock28Value2 := recoveredBlock28Value1.
    recoveredLocal3 := recoveredBlock28Value2.
    recoveredBlock28Value1
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) logScriptingCurrent: (recoveredStack1) backEndVersion: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildTool.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) compareServerVersion: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) backendLocation.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := [:recoveredBlock88Arg1 | 
    | recoveredBlock88Stack0 recoveredBlock88Stack1 recoveredBlock88Stack2 recoveredBlock88Stack3 recoveredBlock88Stack4 recoveredBlock88PC recoveredBlock88Step recoveredBlock88Done recoveredBlock88Result |
    recoveredBlock88Stack0 := self.
    recoveredBlock88PC := 94.
    recoveredBlock88Done := false.
    [recoveredBlock88Done not] whileTrue: [
        recoveredBlock88Step := recoveredBlock88PC.
        recoveredBlock88Step = 94 ifTrue: [
            recoveredBlock88Stack1 := nil.
            recoveredBlock88PC := 95.
        ].
        recoveredBlock88Step = 95 ifTrue: [
            recoveredBlock88Stack2 := recoveredBlock88Arg1.
            recoveredBlock88PC := 96.
        ].
        recoveredBlock88Step = 96 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) asString.
            recoveredBlock88PC := 98.
        ].
        recoveredBlock88Step = 98 ifTrue: [
            recoveredBlock88Stack3 := recoveredBlock88Stack2.
            recoveredBlock88PC := 99.
        ].
        recoveredBlock88Step = 99 ifTrue: [
            recoveredLocal2 := recoveredBlock88Stack3.
            recoveredBlock88PC := 102.
        ].
        recoveredBlock88Step = 102 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) isEmpty.
            recoveredBlock88PC := 104.
        ].
        recoveredBlock88Step = 104 ifTrue: [
            (recoveredBlock88Stack2) ifTrue: [recoveredBlock88PC := 108] ifFalse: [recoveredBlock88PC := 115].
        ].
        recoveredBlock88Step = 108 ifTrue: [
            recoveredBlock88PC := 109.
        ].
        recoveredBlock88Step = 109 ifTrue: [
            recoveredBlock88Stack1 := '(not found)'.
            recoveredBlock88PC := 111.
        ].
        recoveredBlock88Step = 111 ifTrue: [
            recoveredBlock88Stack2 := recoveredBlock88Stack1.
            recoveredBlock88PC := 112.
        ].
        recoveredBlock88Step = 112 ifTrue: [
            recoveredLocal2 := recoveredBlock88Stack2.
            recoveredBlock88PC := 115.
        ].
        recoveredBlock88Step = 115 ifTrue: [
            recoveredBlock88Result := recoveredBlock88Stack1.
            recoveredBlock88Done := true.
        ].
    ].
    recoveredBlock88Result
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) logScriptingCurrent: (recoveredStack1) backendLocation: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20553954; bytecode file offset 0xe50260"
!SGEHooksToolAccess methodsFor: 'recovered'!
checkEHooksProjectInputFiles: recoveredArg1 monitorStream: recoveredArg2 ifFail: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) filePath.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFilename.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) inputA2LFile.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAbsolutePath.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := '*.a2l'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPathname.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) inputA2LFile.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := '*.a2l'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) logInputFileFound: (recoveredStack2) file: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) logInputFileNotFound: (recoveredStack2) file: (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) inputECUImage.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 145] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAbsolutePath.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := '*.hex'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 145.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPathname.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := (recoveredStack3) inputECUImage.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 145] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := '*.hex'.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack1) logInputFileFound: (recoveredStack2) file: (recoveredStack3).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredPC := 168.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) logInputFileNotFound: (recoveredStack2) file: (recoveredStack3).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 192] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := 'input values'.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack4 := ' and '.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack4 := 'file'.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2) value: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := 'input value'.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack4 := 'file'.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2) value: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 224 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20556858; bytecode file offset 0xe53164"
!SGEHooksToolAccess methodsFor: 'recovered'!
checkEHooksProjectOutputFiles: recoveredArg1 monitorStream: recoveredArg2 ifFail: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) filePath.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFilename.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) outputA2LFile.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathName.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAbsolutePath.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := '*.a2l'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) outputA2LFile.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathName.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := '*.a2l'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) logOutputFileFound: (recoveredStack2) file: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) logOutputPathNotFound: (recoveredStack2) file: (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) outputECUImage.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathName.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 147] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAbsolutePath.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := '*.hex'.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredPC := 147.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) outputECUImage.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathName.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 147] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := '*.hex'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1) logOutputFileFound: (recoveredStack2) file: (recoveredStack3).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredPC := 170.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1) logOutputPathNotFound: (recoveredStack2) file: (recoveredStack3).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 212].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 194] ifFalse: [recoveredPC := 212].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := 'output values'.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack4 := ' and '.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack4 := 'path'.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2) value: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := 'output value'.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack4 := 'path'.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2) value: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 226 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

