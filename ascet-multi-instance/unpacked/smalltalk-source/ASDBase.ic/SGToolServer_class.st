"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014f40; bytecode file offset 0x912098"
!SGToolServer class methodsFor: 'recovered'!
initializedClass
    | recoveredValue0 |
    recoveredValue0 := InitializedClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024c38; bytecode file offset 0x92209c"
!SGToolServer class methodsFor: 'recovered'!
addressString
    ^'127.0.0.1'
! !

"ASDBase.ic method 0x200543d4; bytecode file offset 0x951190"
!SGToolServer class methodsFor: 'recovered'!
initializedClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    InitializedClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2009c19c; bytecode file offset 0x998d48"
!SGToolServer class methodsFor: 'recovered'!
logFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EtasCebraInfo.
    recoveredValue1 := (recoveredValue0) logPath.
    recoveredValue2 := (recoveredValue1) , ('\CebraToolServerLog.txt').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ae13c; bytecode file offset 0x9aaa48"
!SGToolServer class methodsFor: 'recovered'!
addToServerList: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) serverList.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200d4ebc; bytecode file offset 0x9d1774"
!SGToolServer class methodsFor: 'recovered'!
isInitializedClass
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializedClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializedClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e00cc; bytecode file offset 0x9dc994"
!SGToolServer class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGToolServer.
    recoveredValue1 := EtasCebraInfo.
    recoveredValue2 := (recoveredValue1) port: ('TOOL').
    recoveredValue3 := (recoveredValue0) create: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20119dc4; bytecode file offset 0xa16880"
!SGToolServer class methodsFor: 'recovered'!
close
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allInstances.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c8298Arg1 | 
    | block280c8298Value0 block280c8298Value1 |
    block280c8298Value0 := block280c8298Arg1.
    block280c8298Value1 := (block280c8298Value0) shutDown.
    block280c8298Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201285b4; bytecode file offset 0xa24eb0"
!SGToolServer class methodsFor: 'recovered'!
serverList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ServerList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ServerList := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ServerList.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201285c8; bytecode file offset 0xa24eb0"
!SGToolServer class methodsFor: 'recovered'!
ports
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := PortList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            PortList := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := PortList.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20146d3c; bytecode file offset 0xa435f8"
!SGToolServer class methodsFor: 'recovered'!
removeFromServerList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) serverList.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^self
].
    (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2014c100; bytecode file offset 0xa489d0"
!SGToolServer class methodsFor: 'recovered'!
generateDefaultSocketAddress
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SciSocketAddress.
    recoveredValue1 := SGToolServer.
    recoveredValue2 := (recoveredValue1) addressString.
    recoveredValue3 := (recoveredValue0) fromString: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := EtasCebraInfo.
    recoveredValue6 := (recoveredValue5) port: ('TOOL').
    (recoveredValue4) port: (recoveredValue6).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201a2214; bytecode file offset 0xa9eadc"
!SGToolServer class methodsFor: 'recovered'!
initializeClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInitializedClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := EtasCebraInfo.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInitialized.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) classInit.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) initializedClass: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022cd6c; bytecode file offset 0xb29634"
!SGToolServer class methodsFor: 'recovered'!
getServerForTool: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) serverList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := SGToolServer.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) serverList.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20308c08; bytecode file offset 0xc054fc"
!SGToolServer class methodsFor: 'recovered'!
promptErrorCantStartToolServer: recoveredArg1 onPort: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WriteStream.
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := CSErrorCantStartToolServer.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorCode.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := EAFNOSUPPORT.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := CSErrorMissingNetworkInstallation.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := CSErrorMissingTCPIPInstallation.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033c688; bytecode file offset 0xc38f90"
!SGToolServer class methodsFor: 'recovered'!
classInit
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsWriteFileStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) logFileName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := CSErrorCantOpenCebraLogfile.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := Time.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) dateAndTimeNow.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := ErrorHandle.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) initErrorTable.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := SGObjectHandle.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) reset.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            PortList := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ServerList := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ba9ac; bytecode file offset 0xdb72ac"
!SGToolServer class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionToolServer.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) serverList.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := ASDGeneralOptions.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionToolServerPortNumber.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Stack0 recoveredBlock44Stack1 recoveredBlock44Stack2 recoveredBlock44Stack3 recoveredBlock44PC recoveredBlock44Step recoveredBlock44Done recoveredBlock44Result |
    recoveredBlock44Stack0 := self.
    recoveredBlock44PC := 50.
    recoveredBlock44Done := false.
    [recoveredBlock44Done not] whileTrue: [
        recoveredBlock44Step := recoveredBlock44PC.
        recoveredBlock44Step = 50 ifTrue: [
            recoveredBlock44Stack1 := nil.
            recoveredBlock44PC := 51.
        ].
        recoveredBlock44Step = 51 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Arg1.
            recoveredBlock44PC := 52.
        ].
        recoveredBlock44Step = 52 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) isServerMode.
            recoveredBlock44PC := 54.
        ].
        recoveredBlock44Step = 54 ifTrue: [
            (recoveredBlock44Stack2) ifTrue: [recoveredBlock44PC := 58] ifFalse: [recoveredBlock44PC := 68].
        ].
        recoveredBlock44Step = 58 ifTrue: [
            recoveredBlock44PC := 59.
        ].
        recoveredBlock44Step = 59 ifTrue: [
            recoveredBlock44Stack1 := ASDGeneralOptions.
            recoveredBlock44PC := 61.
        ].
        recoveredBlock44Step = 61 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) instance.
            recoveredBlock44PC := 62.
        ].
        recoveredBlock44Step = 62 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) optionHeadlessToolServerPortNumber.
            recoveredBlock44PC := 64.
        ].
        recoveredBlock44Step = 64 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Stack1.
            recoveredBlock44PC := 65.
        ].
        recoveredBlock44Step = 65 ifTrue: [
            recoveredLocal1 := recoveredBlock44Stack2.
            recoveredBlock44PC := 68.
        ].
        recoveredBlock44Step = 68 ifTrue: [
            recoveredBlock44Result := recoveredBlock44Stack1.
            recoveredBlock44Done := true.
        ].
    ].
    recoveredBlock44Result
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) ports.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 145] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := SGToolServer.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) initialize: (recoveredStack1) onPort: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSciError.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 121].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) promptErrorCantStartToolServer: (recoveredStack1) onPort: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) ports.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) addToServerList: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

