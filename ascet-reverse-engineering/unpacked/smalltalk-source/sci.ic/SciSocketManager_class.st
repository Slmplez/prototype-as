"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x20000090; bytecode file offset 0x13128"
!SciSocketManager class methodsFor: 'recovered'!
platformIdentifier
    | recoveredValue0 |
    recoveredValue0 := (self) primitivePlatform.
    ^recoveredValue0
! !

"sci.ic method 0x200000a8; bytecode file offset 0x13128"
!SciSocketManager class methodsFor: 'recovered'!
new
    | recoveredValue0 |
    recoveredValue0 := (self) default.
    ^recoveredValue0
! !

"sci.ic method 0x200000bc; bytecode file offset 0x13160"
!SciSocketManager class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
primFdSetSize
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"sci.ic method 0x20000228; bytecode file offset 0x132cc"
!SciSocketManager class methodsFor: 'recovered'!
blockingDispatcherClass
    | recoveredValue0 |
    recoveredValue0 := BlockingDispatcherClass.
    ^recoveredValue0
! !

"sci.ic method 0x20000240; bytecode file offset 0x132cc"
!SciSocketManager class methodsFor: 'recovered'!
primitivePlatform
    | recoveredValue0 |
    recoveredValue0 := SCIIDWIN.
    ^recoveredValue0
! !

"sci.ic method 0x20000368; bytecode file offset 0x133fc"
!SciSocketManager class methodsFor: 'recovered'!
version
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) blockingDispatcherClass.
    recoveredValue1 := (recoveredValue0) version.
    ^recoveredValue1
! !

"sci.ic method 0x20000548; bytecode file offset 0x13610"
!SciSocketManager class methodsFor: 'recovered'!
blockingOS: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    BlockingOS := recoveredValue0.
    ^self
! !

"sci.ic method 0x20000778; bytecode file offset 0x137fc"
!SciSocketManager class methodsFor: 'recovered'!
isCompatible
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) version.
    recoveredValue1 := (recoveredValue0) = (#[0 0 0 0 0 0 8 64]).
    ^recoveredValue1
! !

"sci.ic method 0x20000aa0; bytecode file offset 0x13b20"
!SciSocketManager class methodsFor: 'recovered'!
blockingDispatcherClass: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    BlockingDispatcherClass := recoveredValue1.
    ^recoveredValue0
! !

"sci.ic method 0x20000dd0; bytecode file offset 0x13e5c"
!SciSocketManager class methodsFor: 'recovered'!
getLastError
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SciError.
    recoveredValue1 := SCIERROR.
    recoveredValue2 := (recoveredValue1) call.
    recoveredValue3 := (recoveredValue0) errorCode: (recoveredValue2).
    ^recoveredValue3
! !

"sci.ic method 0x200016fc; bytecode file offset 0x1478c"
!SciSocketManager class methodsFor: 'recovered'!
libraryName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) vmVersionId.
    recoveredValue2 := ('essci') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , ('.dll').
    ^recoveredValue3
! !

"sci.ic method 0x20001a4c; bytecode file offset 0x14ad0"
!SciSocketManager class methodsFor: 'recovered'!
exiting
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Default.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := Default.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) exiting.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x20001aa4; bytecode file offset 0x14b48"
!SciSocketManager class methodsFor: 'recovered'!
blockingOS
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := BlockingOS.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) realBlockingSupported.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            BlockingOS := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := BlockingOS.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"sci.ic method 0x20002118; bytecode file offset 0x1519c"
!SciSocketManager class methodsFor: 'recovered'!
reset
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Default.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := Default.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) reset.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            Default := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x20002234; bytecode file offset 0x152c0"
!SciSocketManager class methodsFor: 'recovered'!
realBlockingSupported
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := Smalltalk.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 'EsAsynchronousCallout'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) classAt: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) supported.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"sci.ic method 0x20002288; bytecode file offset 0x15314"
!SciSocketManager class methodsFor: 'recovered'!
default
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Default.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := super new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            Default := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := Default.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"sci.ic method 0x200025e4; bytecode file offset 0x15670"
!SciSocketManager class methodsFor: 'recovered'!
preStartUp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) realBlockingSupported.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) blockingOS: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := Default.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := Default.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) preStartUp.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            Default := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x20002bd0; bytecode file offset 0x15c70"
!SciSocketManager class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) realBlockingSupported.
    (self) blockingOS: (recoveredValue0).
    recoveredValue1 := PlatformLibrary.
    recoveredValue2 := (self) libraryName.
    (recoveredValue1) mapLogicalName: ('SOCKET_PRIMS') toPhysicalName: (recoveredValue2).
    (self) initializeFunctionCalls.
    (self) getLastError.
    (self) reset.
    ^self
! !

"sci.ic method 0x200036e8; bytecode file offset 0x16788"
!SciSocketManager class methodsFor: 'recovered'!
startUp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := PlatformLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'SOCKET_PRIMS'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) libraryName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) mapLogicalName: (recoveredStack2) toPhysicalName: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := '1E7FE65'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) getLastError.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := Default.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := Default.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) startUp.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            Default := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x200071a0; bytecode file offset 0x1a2e4"
!SciSocketManager class methodsFor: 'recovered'!
initializeFunctionCalls
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 |
    recoveredValue0 := PlatformFunction.
    recoveredValue1 := (recoveredValue0) language: ('c') function: ('SciAccept') library: ('SOCKET_PRIMS') parameterTypes: (#('int32' 'pointer' 'pointer' 'struct')) returnType: ('int32').
    SCIACCEPT := recoveredValue1.
    recoveredValue2 := PlatformFunction.
    recoveredValue3 := (recoveredValue2) language: ('c') function: ('SciConnect') library: ('SOCKET_PRIMS') parameterTypes: (#('int32' 'pointer' 'int32' 'struct')) returnType: ('int32').
    SCICONNECT := recoveredValue3.
    recoveredValue4 := PlatformFunction.
    recoveredValue5 := (recoveredValue4) language: ('c') function: ('SciSoClose') library: ('SOCKET_PRIMS') parameterTypes: (#('int32' 'struct')) returnType: ('int32').
    SCICLOSE := recoveredValue5.
    recoveredValue6 := PlatformFunction.
    recoveredValue7 := (recoveredValue6) language: ('c') function: ('SciRecv') library: ('SOCKET_PRIMS') parameterTypes: (#('int32' 'pointer' 'int32' 'int32' 'struct')) returnType: ('int32').
    SCIRECV := recoveredValue7.
    recoveredValue8 := PlatformFunction.
    recoveredValue9 := (recoveredValue8) language: ('c') function: ('SciRecvFrom') library: ('SOCKET_PRIMS') parameterTypes: (#('int32' 'pointer' 'int32' 'int32' 'pointer' 'pointer' 'struct')) returnType: ('int32').
    SCIRECVFROM := recoveredValue9.
    recoveredValue10 := PlatformFunction.
    recoveredValue11 := (recoveredValue10) language: ('c') function: ('SciSend') library: ('SOCKET_PRIMS') parameterTypes: (#('int32' 'pointer' 'int32' 'int32' 'struct')) returnType: ('int32').
    SCISEND := recoveredValue11.
    recoveredValue12 := PlatformFunction.
    recoveredValue13 := (recoveredValue12) language: ('c') function: ('SciSendTo') library: ('SOCKET_PRIMS') parameterTypes: (#('int32' 'pointer' 'int32' 'int32' 'pointer' 'int32' 'struct')) returnType: ('int32').
    SCISENDTO := recoveredValue13.
    recoveredValue14 := PlatformFunction.
    recoveredValue15 := (recoveredValue14) language: ('c') function: ('SciGetProtoByName') library: ('SOCKET_PRIMS') parameterTypes: (#('pointer' 'pointer' 'pointer' 'pointer')) returnType: ('pointer').
    SCIGETPROTOBYNAME := recoveredValue15.
    recoveredValue16 := PlatformFunction.
    recoveredValue17 := (recoveredValue16) language: ('c') function: ('SciGetProtoByNumber') library: ('SOCKET_PRIMS') parameterTypes: (#('int32' 'pointer' 'pointer' 'pointer')) returnType: ('pointer').
    SCIGETPROTOBYNUMBER := recoveredValue17.
    recoveredValue18 := PlatformFunction.
    recoveredValue19 := (recoveredValue18) language: ('c') function: ('SciGetServByName') library: ('SOCKET_PRIMS') parameterTypes: (#('pointer' 'pointer' 'pointer' 'pointer' 'pointer')) returnType: ('pointer').
    SCIGETSERVBYNAME := recoveredValue19.
    recoveredValue20 := PlatformFunction.
    recoveredValue21 := (recoveredValue20) language: ('c') function: ('SciGetServByPort') library: ('SOCKET_PRIMS') parameterTypes: (#('int32' 'pointer' 'pointer' 'pointer' 'pointer')) returnType: ('pointer').
    SCIGETSERVBYPORT := recoveredValue21.
    recoveredValue22 := PlatformFunction.
    recoveredValue23 := (recoveredValue22) language: ('c') function: ('SciGetHostByAddr') library: ('SOCKET_PRIMS') parameterTypes: (#('pointer' 'int32' 'int32' 'pointer' 'pointer' 'pointer')) returnType: ('pointer').
    SCIGETHOSTBYADDR := recoveredValue23.
    recoveredValue24 := PlatformFunction.
    recoveredValue25 := (recoveredValue24) language: ('c') function: ('SciGetHostByName') library: ('SOCKET_PRIMS') parameterTypes: (#('pointer' 'pointer' 'pointer' 'pointer')) returnType: ('pointer').
    SCIGETHOSTBYNAME := recoveredValue25.
    recoveredValue26 := PlatformFunction.
    recoveredValue27 := (recoveredValue26) language: ('c') function: ('SciVersion') library: ('SOCKET_PRIMS') parameterTypes: (#()) returnType: ('int32').
    SCIVERSION := recoveredValue27.
    recoveredValue28 := PlatformFunction.
    recoveredValue29 := (recoveredValue28) language: ('c') function: ('SciGiveSocket') library: (nil) parameterTypes: (#()) returnType: ('void').
    SCIGIVESOCKET := recoveredValue29.
    (self) initializePlatformSpecificFunctionCalls.
    ^self
! !

"sci.ic method 0x200078c8; bytecode file offset 0x1aa94"
!SciSocketManager class methodsFor: 'recovered'!
initializePlatformSpecificFunctionCalls
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 |
    recoveredValue0 := PlatformFunction.
    recoveredValue1 := (recoveredValue0) language: ('c') function: ('accept') library: ('wsock32.dll') parameterTypes: (#('int32' 'pointer' 'pointer')) returnType: ('int32').
    SCINBACCEPT := recoveredValue1.
    recoveredValue2 := PlatformFunction.
    recoveredValue3 := (recoveredValue2) language: ('c') function: ('bind') library: ('wsock32.dll') parameterTypes: (#('int32' 'pointer' 'int32')) returnType: ('int32').
    SCIBIND := recoveredValue3.
    recoveredValue4 := PlatformFunction.
    recoveredValue5 := (recoveredValue4) language: ('c') function: ('closesocket') library: ('wsock32.dll') parameterTypes: (#('int32')) returnType: ('int32').
    SCINBCLOSE := recoveredValue5.
    recoveredValue6 := PlatformFunction.
    recoveredValue7 := (recoveredValue6) language: ('c') function: ('connect') library: ('wsock32.dll') parameterTypes: (#('int32' 'pointer' 'int32')) returnType: ('int32').
    SCINBCONNECT := recoveredValue7.
    recoveredValue8 := PlatformFunction.
    recoveredValue9 := (recoveredValue8) language: ('c') function: ('getpeername') library: ('wsock32.dll') parameterTypes: (#('int32' 'pointer' 'pointer')) returnType: ('int32').
    SCIGETPEERNAME := recoveredValue9.
    recoveredValue10 := PlatformFunction.
    recoveredValue11 := (recoveredValue10) language: ('c') function: ('getsockname') library: ('wsock32.dll') parameterTypes: (#('int32' 'pointer' 'pointer')) returnType: ('int32').
    SCIGETSOCKNAME := recoveredValue11.
    recoveredValue12 := PlatformFunction.
    recoveredValue13 := (recoveredValue12) language: ('c') function: ('getsockopt') library: ('wsock32.dll') parameterTypes: (#('int32' 'int32' 'int32' 'pointer' 'pointer')) returnType: ('int32').
    SCIGETSOCKOPT := recoveredValue13.
    recoveredValue14 := PlatformFunction.
    recoveredValue15 := (recoveredValue14) language: ('c') function: ('ioctlsocket') library: ('wsock32.dll') parameterTypes: (#('int32' 'int32' 'pointer')) returnType: ('int32').
    SCIIOCTL := recoveredValue15.
    recoveredValue16 := PlatformFunction.
    recoveredValue17 := (recoveredValue16) language: ('c') function: ('listen') library: ('wsock32.dll') parameterTypes: (#('int32' 'int32')) returnType: ('int32').
    SCILISTEN := recoveredValue17.
    recoveredValue18 := PlatformFunction.
    recoveredValue19 := (recoveredValue18) language: ('c') function: ('recv') library: ('wsock32.dll') parameterTypes: (#('int32' 'pointer' 'int32' 'int32')) returnType: ('int32').
    SCINBRECV := recoveredValue19.
    recoveredValue20 := PlatformFunction.
    recoveredValue21 := (recoveredValue20) language: ('c') function: ('recvfrom') library: ('wsock32.dll') parameterTypes: (#('int32' 'pointer' 'int32' 'int32' 'pointer' 'pointer')) returnType: ('int32').
    SCINBRECVFROM := recoveredValue21.
    recoveredValue22 := PlatformFunction.
    recoveredValue23 := (recoveredValue22) language: ('c') function: ('send') library: ('wsock32.dll') parameterTypes: (#('int32' 'pointer' 'int32' 'int32')) returnType: ('int32').
    SCINBSEND := recoveredValue23.
    recoveredValue24 := PlatformFunction.
    recoveredValue25 := (recoveredValue24) language: ('c') function: ('sendto') library: ('wsock32.dll') parameterTypes: (#('int32' 'pointer' 'int32' 'int32' 'pointer' 'int32')) returnType: ('int32').
    SCINBSENDTO := recoveredValue25.
    recoveredValue26 := PlatformFunction.
    recoveredValue27 := (recoveredValue26) language: ('c') function: ('setsockopt') library: ('wsock32.dll') parameterTypes: (#('int32' 'int32' 'int32' 'pointer' 'int32')) returnType: ('int32').
    SCISETSOCKOPT := recoveredValue27.
    recoveredValue28 := PlatformFunction.
    recoveredValue29 := (recoveredValue28) language: ('c') function: ('shutdown') library: ('wsock32.dll') parameterTypes: (#('int32' 'int32')) returnType: ('int32').
    SCISHUTDOWN := recoveredValue29.
    recoveredValue30 := PlatformFunction.
    recoveredValue31 := (recoveredValue30) language: ('c') function: ('gethostname') library: ('wsock32.dll') parameterTypes: (#('pointer' 'int32')) returnType: ('int32').
    SCIGETHOSTNAME := recoveredValue31.
    recoveredValue32 := PlatformFunction.
    recoveredValue33 := (recoveredValue32) language: ('c') function: ('socket') library: ('wsock32.dll') parameterTypes: (#('int32' 'int32' 'int32')) returnType: ('uint32').
    SCISOCKET := recoveredValue33.
    recoveredValue34 := PlatformFunction.
    recoveredValue35 := (recoveredValue34) language: ('c') function: ('WSAStartup') library: ('wsock32.dll') parameterTypes: (#('int32' 'struct')) returnType: ('int32').
    SCIINITIALIZE := recoveredValue35.
    recoveredValue36 := PlatformFunction.
    recoveredValue37 := (recoveredValue36) language: ('c') function: ('WSACleanup') library: ('wsock32.dll') parameterTypes: (#()) returnType: ('int32').
    SCICLOSEINTERFACE := recoveredValue37.
    recoveredValue38 := PlatformFunction.
    recoveredValue39 := (recoveredValue38) language: ('c') function: ('WSAGetLastError') library: ('wsock32.dll') parameterTypes: (#()) returnType: ('int32').
    SCIERROR := recoveredValue39.
    recoveredValue40 := PlatformFunction.
    recoveredValue41 := (recoveredValue40) language: ('c') function: ('getprotobyname') library: ('wsock32.dll') parameterTypes: (#('pointer')) returnType: ('pointer').
    SCINBGETPROTOBYNAME := recoveredValue41.
    recoveredValue42 := PlatformFunction.
    recoveredValue43 := (recoveredValue42) language: ('c') function: ('getprotobynumber') library: ('wsock32.dll') parameterTypes: (#('int32')) returnType: ('pointer').
    SCINBGETPROTOBYNUMBER := recoveredValue43.
    recoveredValue44 := PlatformFunction.
    recoveredValue45 := (recoveredValue44) language: ('c') function: ('getservbyname') library: ('wsock32.dll') parameterTypes: (#('pointer' 'pointer')) returnType: ('pointer').
    SCINBGETSERVBYNAME := recoveredValue45.
    recoveredValue46 := PlatformFunction.
    recoveredValue47 := (recoveredValue46) language: ('c') function: ('getservbyport') library: ('wsock32.dll') parameterTypes: (#('int32' 'pointer')) returnType: ('pointer').
    SCINBGETSERVBYPORT := recoveredValue47.
    recoveredValue48 := PlatformFunction.
    recoveredValue49 := (recoveredValue48) language: ('c') function: ('gethostbyaddr') library: ('wsock32.dll') parameterTypes: (#('pointer' 'int32' 'int32')) returnType: ('pointer').
    SCINBGETHOSTBYADDR := recoveredValue49.
    recoveredValue50 := PlatformFunction.
    recoveredValue51 := (recoveredValue50) language: ('c') function: ('gethostbyname') library: ('wsock32.dll') parameterTypes: (#('pointer')) returnType: ('pointer').
    SCINBGETHOSTBYNAME := recoveredValue51.
    recoveredValue52 := PlatformFunction.
    recoveredValue53 := (recoveredValue52) language: ('c') function: ('select') library: ('wsock32.dll') parameterTypes: (#('int32' 'pointer' 'pointer' 'pointer' 'pointer')) returnType: ('int32').
    SCINBSELECT := recoveredValue53.
    recoveredValue54 := PlatformFunction.
    recoveredValue55 := (recoveredValue54) language: ('c') function: ('SciSelect') library: ('SOCKET_PRIMS') parameterTypes: (#('int32' 'pointer' 'pointer' 'pointer' 'pointer' 'pointer')) returnType: ('int32').
    SCISELECT := recoveredValue55.
    ^self
! !

