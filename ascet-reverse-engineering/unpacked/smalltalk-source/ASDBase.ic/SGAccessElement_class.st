"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200135fc; bytecode file offset 0x912098"
!SGAccessElement class methodsFor: 'recovered'!
getSGServer
    | recoveredValue0 |
    recoveredValue0 := SGServer.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003eda8; bytecode file offset 0x93bf94"
!SGAccessElement class methodsFor: 'recovered'!
getSemaphore
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGServer.
    recoveredValue1 := (recoveredValue0) getSemaphore.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20054368; bytecode file offset 0x951190"
!SGAccessElement class methodsFor: 'recovered'!
initSGServer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    SGServer := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20072538; bytecode file offset 0x96ee04"
!SGAccessElement class methodsFor: 'recovered'!
getSimulationManagerOID
    ^1
! !

"ASDBase.ic method 0x202b0ea0; bytecode file offset 0xbad778"
!SGAccessElement class methodsFor: 'recovered'!
prepareLoading
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := (self) getSimulationManagerOID.
    recoveredBlock5Value2 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (10) contextDesc: ('prepareLoading') commandDesc: ('L1_prepareLoading').
    recoveredLocal2 := recoveredBlock5Value2.
    recoveredBlock5Value3 := SGServer.
    recoveredBlock5Value4 := recoveredLocal2.
    recoveredBlock5Value5 := (recoveredBlock5Value3) sendL1Message: (recoveredBlock5Value4).
    recoveredBlock5Value6 := recoveredBlock5Value5.
    recoveredLocal1 := recoveredBlock5Value6.
    recoveredBlock5Value5
].
    (recoveredValue0) critical: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202b0efc; bytecode file offset 0xbad7d4"
!SGAccessElement class methodsFor: 'recovered'!
finishLoading
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := (self) getSimulationManagerOID.
    recoveredBlock5Value2 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (11) contextDesc: ('finishLoading') commandDesc: ('L1_finishLoading').
    recoveredLocal2 := recoveredBlock5Value2.
    recoveredBlock5Value3 := SGServer.
    recoveredBlock5Value4 := recoveredLocal2.
    recoveredBlock5Value5 := (recoveredBlock5Value3) sendL1Message: (recoveredBlock5Value4).
    recoveredBlock5Value6 := recoveredBlock5Value5.
    recoveredLocal1 := recoveredBlock5Value6.
    recoveredBlock5Value5
].
    (recoveredValue0) critical: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202cbdb0; bytecode file offset 0xbc8688"
!SGAccessElement class methodsFor: 'recovered'!
uploadTargetData
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := (self) getSimulationManagerOID.
    recoveredBlock5Value2 := (recoveredBlock5Value0) createLargePid: (0) oid: (recoveredBlock5Value1) cmd: (8) contextDesc: ('uploadTargetData') commandDesc: ('uploadTargetData').
    recoveredLocal2 := recoveredBlock5Value2.
    recoveredBlock5Value3 := SGServer.
    recoveredBlock5Value4 := recoveredLocal2.
    recoveredBlock5Value5 := (recoveredBlock5Value3) sendAndReceiveNoCheckForErrors: (recoveredBlock5Value4).
    recoveredBlock5Value6 := recoveredBlock5Value5.
    recoveredLocal1 := recoveredBlock5Value6.
    recoveredBlock5Value5
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x202df2e4; bytecode file offset 0xbdbc00"
!SGAccessElement class methodsFor: 'recovered'!
initModel
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := (self) getSimulationManagerOID.
    recoveredBlock5Value2 := ManagerCMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('initModel()').
    recoveredBlock5Value4 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: ('initModel') commandDesc: ('L1_AccessElement').
    recoveredLocal2 := recoveredBlock5Value4.
    recoveredBlock5Value5 := SGServer.
    recoveredBlock5Value6 := recoveredLocal2.
    recoveredBlock5Value7 := (recoveredBlock5Value5) sendL1Message: (recoveredBlock5Value6).
    recoveredBlock5Value8 := recoveredBlock5Value7.
    recoveredLocal1 := recoveredBlock5Value8.
    recoveredBlock5Value7
].
    (recoveredValue0) critical: (recoveredValue1).
    ^true
! !

"ASDBase.ic method 0x202df31c; bytecode file offset 0xbdbc00"
!SGAccessElement class methodsFor: 'recovered'!
freeMemory
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := (self) getSimulationManagerOID.
    recoveredBlock5Value2 := ManagerCMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('freeMemory()').
    recoveredBlock5Value4 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: ('freeMemory') commandDesc: ('L1_AccessElement').
    recoveredLocal2 := recoveredBlock5Value4.
    recoveredBlock5Value5 := SGServer.
    recoveredBlock5Value6 := recoveredLocal2.
    recoveredBlock5Value7 := (recoveredBlock5Value5) sendL1Message: (recoveredBlock5Value6).
    recoveredBlock5Value8 := recoveredBlock5Value7.
    recoveredLocal1 := recoveredBlock5Value8.
    recoveredBlock5Value7
].
    (recoveredValue0) critical: (recoveredValue1).
    ^true
! !

"ASDBase.ic method 0x202eea40; bytecode file offset 0xbeb328"
!SGAccessElement class methodsFor: 'recovered'!
getProgramIdentifier
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := (self) getSimulationManagerOID.
    recoveredBlock5Value2 := ManagerCMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('getProgramIdentifier()').
    recoveredBlock5Value4 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: ('getProgramIdentifier') commandDesc: ('L1_AccessElement').
    recoveredBlock5Local2 := recoveredBlock5Value4.
    recoveredBlock5Value5 := SGServer.
    recoveredBlock5Value6 := recoveredBlock5Local2.
    recoveredBlock5Value7 := (recoveredBlock5Value5) sendL1Message: (recoveredBlock5Value6).
    recoveredBlock5Local1 := recoveredBlock5Value7.
    recoveredBlock5Value8 := recoveredBlock5Local1.
    recoveredBlock5Value9 := (recoveredBlock5Value8) removeUInt32Argument.
    recoveredBlock5Value10 := recoveredBlock5Value9.
    recoveredLocal1 := recoveredBlock5Value10.
    recoveredBlock5Value9
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x202ffac4; bytecode file offset 0xbfc3b0"
!SGAccessElement class methodsFor: 'recovered'!
getAvailableMemory
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := (self) getSimulationManagerOID.
    recoveredBlock5Value2 := ManagerCMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('getAvailableMemory()').
    recoveredBlock5Value4 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: ('getAvailableMemory') commandDesc: ('L1_AccessElement').
    recoveredBlock5Local2 := recoveredBlock5Value4.
    recoveredBlock5Value5 := SGServer.
    recoveredBlock5Value6 := recoveredBlock5Local2.
    recoveredBlock5Value7 := (recoveredBlock5Value5) sendL1Message: (recoveredBlock5Value6).
    recoveredBlock5Local1 := recoveredBlock5Value7.
    recoveredBlock5Value8 := recoveredBlock5Local1.
    recoveredBlock5Value9 := RBInt32Unsigned.
    recoveredBlock5Value10 := (recoveredBlock5Value8) removeArgumentOfImplType: (recoveredBlock5Value9).
    recoveredBlock5Value11 := recoveredBlock5Value10.
    recoveredLocal1 := recoveredBlock5Value11.
    recoveredBlock5Value10
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20332718; bytecode file offset 0xc2f03c"
!SGAccessElement class methodsFor: 'recovered'!
startedWithoutHost
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := (self) getSimulationManagerOID.
    recoveredBlock5Value2 := ManagerCMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('startedWithoutHost()').
    recoveredBlock5Value4 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: ('startedWithoutHost') commandDesc: ('L1_AccessElement').
    recoveredLocal3 := recoveredBlock5Value4.
    recoveredBlock5Value5 := SGServer.
    recoveredBlock5Value6 := recoveredLocal3.
    recoveredBlock5Value7 := (recoveredBlock5Value5) sendL1Message: (recoveredBlock5Value6).
    recoveredLocal2 := recoveredBlock5Value7.
    recoveredBlock5Value8 := recoveredLocal2.
    recoveredBlock5Value9 := (recoveredBlock5Value8) removeInt32Argument.
    recoveredBlock5Value10 := recoveredBlock5Value9.
    recoveredLocal1 := recoveredBlock5Value10.
    recoveredBlock5Value9
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20332754; bytecode file offset 0xc2f03c"
!SGAccessElement class methodsFor: 'recovered'!
getUsedMemory
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := (self) getSimulationManagerOID.
    recoveredBlock5Value2 := ManagerCMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('getUsedMemory()').
    recoveredBlock5Value4 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: ('getUsedMemory') commandDesc: ('L1_AccessElement').
    recoveredLocal3 := recoveredBlock5Value4.
    recoveredBlock5Value5 := SGServer.
    recoveredBlock5Value6 := recoveredLocal3.
    recoveredBlock5Value7 := (recoveredBlock5Value5) sendL1Message: (recoveredBlock5Value6).
    recoveredLocal2 := recoveredBlock5Value7.
    recoveredBlock5Value8 := recoveredLocal2.
    recoveredBlock5Value9 := (recoveredBlock5Value8) removeInt32Argument.
    recoveredBlock5Value10 := recoveredBlock5Value9.
    recoveredLocal1 := recoveredBlock5Value10.
    recoveredBlock5Value9
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20339f4c; bytecode file offset 0xc3682c"
!SGAccessElement class methodsFor: 'recovered'!
initializeManagerCMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    ManagerCMethods := recoveredValue1.
    recoveredValue2 := ManagerCMethods.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('getUsedMemory()') put: (0).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('getSimOIDForKey()') put: (1).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: ('initModel()') put: (2).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: ('freeMemory()') put: (3).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: ('startedWithoutHost()') put: (4).
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: ('getProgramIdentifier()') put: (5).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: ('getAvailableMemory()') put: (6).
    ^self
! !

"ASDBase.ic method 0x2036bea0; bytecode file offset 0xc68788"
!SGAccessElement class methodsFor: 'recovered'!
createForSimKey: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSGServer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSGServer.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isActive.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'Bugfix'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'Target Server not active'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) addWarningText: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSimOIDForKey: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 'Could not access element on target'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) addWarningText: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) initialize.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) oidNumber: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20381850; bytecode file offset 0xc7e13c"
!SGAccessElement class methodsFor: 'recovered'!
getSimOIDForKey: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 recoveredBlock5Value13 recoveredBlock5Value14 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := (self) getSimulationManagerOID.
    recoveredBlock5Value2 := ManagerCMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('getSimOIDForKey()').
    recoveredBlock5Value4 := recoveredArg1.
    recoveredBlock5Value5 := (recoveredBlock5Value4) asDescriptiveL1ErrorString.
    recoveredBlock5Value6 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: (recoveredBlock5Value5) commandDesc: ('L1_SimOIDForKey').
    recoveredLocal3 := recoveredBlock5Value6.
    recoveredBlock5Value7 := recoveredArg1.
    recoveredBlock5Value8 := recoveredLocal3.
    (recoveredBlock5Value7) writeOnL1Message: (recoveredBlock5Value8).
    recoveredBlock5Value9 := SGServer.
    recoveredBlock5Value10 := recoveredLocal3.
    recoveredBlock5Value11 := (recoveredBlock5Value9) sendL1Message: (recoveredBlock5Value10).
    recoveredLocal2 := recoveredBlock5Value11.
    recoveredBlock5Value12 := recoveredLocal2.
    recoveredBlock5Value13 := (recoveredBlock5Value12) removeInt32Argument.
    recoveredBlock5Value14 := recoveredBlock5Value13.
    recoveredLocal1 := recoveredBlock5Value14.
    recoveredBlock5Value13
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

