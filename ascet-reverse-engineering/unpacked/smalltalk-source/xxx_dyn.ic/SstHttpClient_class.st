"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20005748; bytecode file offset 0x66a34"
!SstHttpClient class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20005fb0; bytecode file offset 0x6710c"
!SstHttpClient class methodsFor: 'recovered'!
forTransportScheme: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) transportScheme: (recoveredValue2).
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200242b4; bytecode file offset 0x853ec"
!SstHttpClient class methodsFor: 'recovered'!
initializeTransportScheme: recoveredArg1 forHttpsTunnelThrough: recoveredArg2 proxyAuth: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 |
    recoveredValue0 := SstHttpsCommunications.
    recoveredValue1 := (recoveredValue0) lightTransportConfiguration.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) transportIdentifier: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) defaultPort: (443).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := SciSocket.
    (recoveredValue5) socketClass: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := ('http://%1') bindWith: (recoveredValue8).
    recoveredValue10 := (recoveredValue9) sstAsUrl.
    (recoveredValue7) proxyUrl: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := recoveredArg3.
    (recoveredValue11) proxyCredentials: (recoveredValue12).
    recoveredValue13 := recoveredValue1.
    recoveredValue14 := SstHttpsTunnelConnection.
    (recoveredValue13) connectionClass: (recoveredValue14).
    recoveredValue15 := SciSslSocketConfiguration.
    recoveredValue16 := (recoveredValue15) new.
    recoveredValue17 := recoveredValue16.
    recoveredValue18 := SSLv3.
    (recoveredValue17) sslVersion: (recoveredValue18).
    recoveredValue19 := recoveredValue16.
    (recoveredValue19) certificateFilename: (nil).
    recoveredValue20 := recoveredValue16.
    (recoveredValue20) privateKeyFilename: (nil).
    recoveredValue21 := (recoveredValue1) securityConfiguration: (recoveredValue16).
    recoveredLocal1 := recoveredValue21.
    recoveredValue22 := SstUrl.
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := (recoveredValue23) transportIdentifier.
    recoveredValue25 := SstHttpUrl.
    (recoveredValue22) register: (recoveredValue24) as: (recoveredValue25).
    recoveredValue26 := SstTransport.
    recoveredValue27 := recoveredLocal1.
    recoveredValue28 := Array.
    recoveredValue29 := (recoveredValue28) with: ('http').
    (recoveredValue26) register: (recoveredValue27) mutuallyReachableBy: (recoveredValue29).
    ^self
! !

"xxx_dyn.ic method 0x20029118; bytecode file offset 0x8a23c"
!SstHttpClient class methodsFor: 'recovered'!
fetch: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Local1 recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 |
    recoveredBlock4Value0 := SstHttpClient.
    recoveredBlock4Value1 := (recoveredBlock4Value0) forTransportScheme: ('httpl').
    recoveredBlock4Value2 := recoveredBlock4Value1.
    recoveredBlock4Local1 := recoveredBlock4Value2.
    (recoveredBlock4Value1) startUp.
    recoveredBlock4Value3 := [
    | recoveredBlock4Block21Value0 recoveredBlock4Block21Value1 recoveredBlock4Block21Value2 |
    recoveredBlock4Block21Value0 := recoveredBlock4Local1.
    recoveredBlock4Block21Value1 := recoveredArg1.
    recoveredBlock4Block21Value2 := (recoveredBlock4Block21Value0) get: (recoveredBlock4Block21Value1).
    recoveredBlock4Block21Value2
].
    recoveredBlock4Value4 := [
    | recoveredBlock4Block37Value0 recoveredBlock4Block37Value1 |
    recoveredBlock4Block37Value0 := recoveredBlock4Local1.
    recoveredBlock4Block37Value1 := (recoveredBlock4Block37Value0) shutDown.
    recoveredBlock4Block37Value1
].
    recoveredBlock4Value5 := (recoveredBlock4Value3) ensure: (recoveredBlock4Value4).
    recoveredLocal2 := recoveredBlock4Value5.
    recoveredBlock4Value6 := recoveredLocal1.
    recoveredBlock4Value7 := (recoveredBlock4Value6) signal.
    recoveredBlock4Value7
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := Semaphore.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) activeProcess.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := UIProcess.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentUI.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := Processor.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) userSchedulingPriority.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := '%1 [%2]'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack5 := Time.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack5 := (recoveredStack5) now.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack5 := (recoveredStack5) printString.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := (recoveredStack3) bindWith: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) forkAt: (recoveredStack2) named: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) wait.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 117.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) value.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x20029724; bytecode file offset 0x8a850"
!SstHttpClient class methodsFor: 'recovered'!
fetchForPeerIdViolation: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Local1 recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 |
    recoveredBlock4Value0 := SstHttpClient.
    recoveredBlock4Value1 := (recoveredBlock4Value0) forTransportScheme: ('httpsl').
    recoveredBlock4Value2 := recoveredBlock4Value1.
    recoveredBlock4Local1 := recoveredBlock4Value2.
    (recoveredBlock4Value1) startUp.
    recoveredBlock4Value3 := recoveredBlock4Local1.
    (recoveredBlock4Value3) requiredPeerName: ('whodo').
    recoveredBlock4Value4 := [
    | recoveredBlock4Block28Value0 recoveredBlock4Block28Value1 recoveredBlock4Block28Value2 |
    recoveredBlock4Block28Value0 := recoveredBlock4Local1.
    recoveredBlock4Block28Value1 := recoveredArg1.
    recoveredBlock4Block28Value2 := (recoveredBlock4Block28Value0) get: (recoveredBlock4Block28Value1).
    recoveredBlock4Block28Value2
].
    recoveredBlock4Value5 := [
    | recoveredBlock4Block43Value0 recoveredBlock4Block43Value1 |
    recoveredBlock4Block43Value0 := recoveredBlock4Local1.
    recoveredBlock4Block43Value1 := (recoveredBlock4Block43Value0) shutDown.
    recoveredBlock4Block43Value1
].
    recoveredBlock4Value6 := (recoveredBlock4Value4) ensure: (recoveredBlock4Value5).
    recoveredLocal2 := recoveredBlock4Value6.
    recoveredBlock4Value7 := recoveredLocal1.
    recoveredBlock4Value8 := (recoveredBlock4Value7) signal.
    recoveredBlock4Value8
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := Semaphore.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) activeProcess.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := UIProcess.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentUI.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := Processor.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) userSchedulingPriority.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := '%1 [%2]'.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack5 := Time.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack5 := (recoveredStack5) now.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack5 := (recoveredStack5) printString.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := (recoveredStack3) bindWith: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) forkAt: (recoveredStack2) named: (recoveredStack3).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) wait.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 123.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) value.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

