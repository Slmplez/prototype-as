"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20071ed0; bytecode file offset 0x96e784"
!SGAccessOperatingSystem methodsFor: 'recovered'!
clockPID
    ^2048
! !

"ASDBase.ic method 0x20072008; bytecode file offset 0x96ee04"
!SGAccessOperatingSystem methodsFor: 'recovered'!
clockOID
    ^1
! !

"ASDBase.ic method 0x20079214; bytecode file offset 0x975b38"
!SGAccessOperatingSystem methodsFor: 'recovered'!
clockCMDStart
    ^20
! !

"ASDBase.ic method 0x200792ec; bytecode file offset 0x975bb8"
!SGAccessOperatingSystem methodsFor: 'recovered'!
clockCMDStop
    ^22
! !

"ASDBase.ic method 0x2007fa90; bytecode file offset 0x97c354"
!SGAccessOperatingSystem methodsFor: 'recovered'!
clockCMDSetScaling
    ^23
! !

"ASDBase.ic method 0x200835d0; bytecode file offset 0x97ff54"
!SGAccessOperatingSystem methodsFor: 'recovered'!
getSubModelPseudoAddress: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getSubModelPseudoAddress: (recoveredValue0) silent: (false).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c0414; bytecode file offset 0x9bd228"
!SGAccessOperatingSystem methodsFor: 'recovered'!
generatedCMethods: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    generatedCMethods := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2014b898; bytecode file offset 0xa48154"
!SGAccessOperatingSystem methodsFor: 'recovered'!
performASG: recoveredArg1 withArguments: recoveredArg2 return: recoveredArg3 time: recoveredArg4 dt: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := generatedCMethods.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (self) activateTaskWithId: (recoveredValue3) time: (recoveredValue4) dt: (recoveredValue5) name: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20312828; bytecode file offset 0xc0f100"
!SGAccessOperatingSystem methodsFor: 'recovered'!
suspendSimulation
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (9) contextDesc: ('suspendSimulation') commandDesc: ('L1_OS').
    recoveredLocal3 := recoveredBlock5Value2.
    recoveredBlock5Value3 := SGServer.
    recoveredBlock5Value4 := recoveredLocal3.
    recoveredBlock5Value5 := (recoveredBlock5Value3) sendL1Message: (recoveredBlock5Value4).
    recoveredLocal2 := recoveredBlock5Value5.
    recoveredBlock5Value6 := recoveredLocal2.
    recoveredBlock5Value7 := (recoveredBlock5Value6) removeInt32Argument.
    recoveredBlock5Value8 := recoveredBlock5Value7.
    recoveredLocal1 := recoveredBlock5Value8.
    recoveredBlock5Value7
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2031288c; bytecode file offset 0xc0f164"
!SGAccessOperatingSystem methodsFor: 'recovered'!
resumeSimulation
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (10) contextDesc: ('resumeSimulation') commandDesc: ('L1_OS').
    recoveredLocal3 := recoveredBlock5Value2.
    recoveredBlock5Value3 := SGServer.
    recoveredBlock5Value4 := recoveredLocal3.
    recoveredBlock5Value5 := (recoveredBlock5Value3) sendL1Message: (recoveredBlock5Value4).
    recoveredLocal2 := recoveredBlock5Value5.
    recoveredBlock5Value6 := recoveredLocal2.
    recoveredBlock5Value7 := (recoveredBlock5Value6) removeInt32Argument.
    recoveredBlock5Value8 := recoveredBlock5Value7.
    recoveredLocal1 := recoveredBlock5Value8.
    recoveredBlock5Value7
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20329ec8; bytecode file offset 0xc267b0"
!SGAccessOperatingSystem methodsFor: 'recovered'!
stopClockDevice
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := (self) clockPID.
    recoveredBlock5Value2 := (self) clockOID.
    recoveredBlock5Value3 := (self) clockCMDStop.
    recoveredBlock5Value4 := (recoveredBlock5Value0) createSmallPid: (recoveredBlock5Value1) oid: (recoveredBlock5Value2) cmd: (recoveredBlock5Value3) contextDesc: ('Stop Clock') commandDesc: ('L1_OS').
    recoveredLocal3 := recoveredBlock5Value4.
    recoveredBlock5Value5 := (self) class.
    recoveredBlock5Value6 := (recoveredBlock5Value5) getSGServer.
    recoveredBlock5Value7 := recoveredLocal3.
    recoveredBlock5Value8 := (recoveredBlock5Value6) sendL1Message: (recoveredBlock5Value7).
    recoveredLocal2 := recoveredBlock5Value8.
    recoveredBlock5Value9 := recoveredLocal2.
    recoveredBlock5Value10 := (recoveredBlock5Value9) removeInt32Argument.
    recoveredBlock5Value11 := recoveredBlock5Value10.
    recoveredLocal1 := recoveredBlock5Value11.
    recoveredBlock5Value10
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x203325c4; bytecode file offset 0xc2ef88"
!SGAccessOperatingSystem methodsFor: 'recovered'!
setToOnlineMode
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := CMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('setToOnlineMode()').
    recoveredBlock5Value4 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: ('setToOnlineMode') commandDesc: ('L1_OS').
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

"ASDBase.ic method 0x203325fc; bytecode file offset 0xc2ef88"
!SGAccessOperatingSystem methodsFor: 'recovered'!
stopERCOS
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := CMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('stopERCOS()').
    recoveredBlock5Value4 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: ('stopERCOS') commandDesc: ('L1_OS').
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

"ASDBase.ic method 0x20332634; bytecode file offset 0xc2ef88"
!SGAccessOperatingSystem methodsFor: 'recovered'!
initERCOS
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := CMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('initERCOS()').
    recoveredBlock5Value4 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: ('initERCOS') commandDesc: ('L1_OS').
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

"ASDBase.ic method 0x2033266c; bytecode file offset 0xc2ef88"
!SGAccessOperatingSystem methodsFor: 'recovered'!
startERCOS
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := CMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('startERCOS()').
    recoveredBlock5Value4 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: ('startERCOS') commandDesc: ('L1_OS').
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

"ASDBase.ic method 0x203326a4; bytecode file offset 0xc2ef88"
!SGAccessOperatingSystem methodsFor: 'recovered'!
getOperatingMode
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := CMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('getOperatingMode()').
    recoveredBlock5Value4 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: ('getOperatingMode') commandDesc: ('L1_OS').
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

"ASDBase.ic method 0x2036e6ec; bytecode file offset 0xc6afdc"
!SGAccessOperatingSystem methodsFor: 'recovered'!
startClockDevice
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 recoveredBlock5Value13 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := (self) clockPID.
    recoveredBlock5Value2 := (self) clockOID.
    recoveredBlock5Value3 := (self) clockCMDStart.
    recoveredBlock5Value4 := (recoveredBlock5Value0) createSmallPid: (recoveredBlock5Value1) oid: (recoveredBlock5Value2) cmd: (recoveredBlock5Value3) contextDesc: ('Start Clock') commandDesc: ('L1_OS').
    recoveredLocal3 := recoveredBlock5Value4.
    recoveredBlock5Value5 := recoveredLocal3.
    recoveredBlock5Value6 := RBInt32Unsigned.
    (recoveredBlock5Value5) addArgument: (0) implType: (recoveredBlock5Value6).
    recoveredBlock5Value7 := (self) class.
    recoveredBlock5Value8 := (recoveredBlock5Value7) getSGServer.
    recoveredBlock5Value9 := recoveredLocal3.
    recoveredBlock5Value10 := (recoveredBlock5Value8) sendL1Message: (recoveredBlock5Value9).
    recoveredLocal2 := recoveredBlock5Value10.
    recoveredBlock5Value11 := recoveredLocal2.
    recoveredBlock5Value12 := (recoveredBlock5Value11) removeInt32Argument.
    recoveredBlock5Value13 := recoveredBlock5Value12.
    recoveredLocal1 := recoveredBlock5Value13.
    recoveredBlock5Value12
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x203813b4; bytecode file offset 0xc7dca8"
!SGAccessOperatingSystem methodsFor: 'recovered'!
setToOfflineMode
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 recoveredBlock5Value13 recoveredBlock5Value14 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := CMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('setToOfflineMode()').
    recoveredBlock5Value4 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: ('setToOfflineMode') commandDesc: ('L1_OS').
    recoveredLocal3 := recoveredBlock5Value4.
    recoveredBlock5Value5 := recoveredLocal3.
    recoveredBlock5Value6 := SGSimEnvironment.
    recoveredBlock5Value7 := (recoveredBlock5Value6) offlinePCMicroSecondsPerSimulationTick.
    recoveredBlock5Value8 := RBInt32Unsigned.
    (recoveredBlock5Value5) addArgument: (recoveredBlock5Value7) implType: (recoveredBlock5Value8).
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

"ASDBase.ic method 0x203a6a18; bytecode file offset 0xca330c"
!SGAccessOperatingSystem methodsFor: 'recovered'!
setOperatingMode: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 recoveredBlock5Value13 recoveredBlock5Value14 recoveredBlock5Value15 recoveredBlock5Value16 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := CMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('setOperatingMode()').
    recoveredBlock5Value4 := recoveredArg1.
    recoveredBlock5Value5 := (recoveredBlock5Value4) asString.
    recoveredBlock5Value6 := ('setOperatingMode(%1)') bindWith: (recoveredBlock5Value5).
    recoveredBlock5Value7 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: (recoveredBlock5Value6) commandDesc: ('L1_OS').
    recoveredLocal3 := recoveredBlock5Value7.
    recoveredBlock5Value8 := recoveredLocal3.
    recoveredBlock5Value9 := recoveredArg1.
    recoveredBlock5Value10 := (recoveredBlock5Value9) asInteger.
    (recoveredBlock5Value8) addArgument: (recoveredBlock5Value10).
    recoveredBlock5Value11 := SGServer.
    recoveredBlock5Value12 := recoveredLocal3.
    recoveredBlock5Value13 := (recoveredBlock5Value11) sendL1Message: (recoveredBlock5Value12).
    recoveredLocal2 := recoveredBlock5Value13.
    recoveredBlock5Value14 := recoveredLocal2.
    recoveredBlock5Value15 := (recoveredBlock5Value14) removeInt32Argument.
    recoveredBlock5Value16 := recoveredBlock5Value15.
    recoveredLocal1 := recoveredBlock5Value16.
    recoveredBlock5Value15
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x203c930c; bytecode file offset 0xcc5c08"
!SGAccessOperatingSystem methodsFor: 'recovered'!
setClockDeviceScalingFactor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 recoveredBlock5Value13 recoveredBlock5Value14 recoveredBlock5Value15 recoveredBlock5Value16 recoveredBlock5Value17 recoveredBlock5Value18 recoveredBlock5Value19 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := (self) clockPID.
    recoveredBlock5Value2 := (self) clockOID.
    recoveredBlock5Value3 := (self) clockCMDSetScaling.
    recoveredBlock5Value4 := recoveredArg1.
    recoveredBlock5Value5 := (recoveredBlock5Value4) asString.
    recoveredBlock5Value6 := ('Set clock scaling (value: %1)') bindWith: (recoveredBlock5Value5).
    recoveredBlock5Value7 := (recoveredBlock5Value0) createSmallPid: (recoveredBlock5Value1) oid: (recoveredBlock5Value2) cmd: (recoveredBlock5Value3) contextDesc: (recoveredBlock5Value6) commandDesc: ('L1_OS').
    recoveredLocal3 := recoveredBlock5Value7.
    recoveredBlock5Value8 := recoveredLocal3.
    recoveredBlock5Value9 := recoveredBlock5Value8.
    recoveredBlock5Value10 := recoveredArg1.
    recoveredBlock5Value11 := RBFloat.
    (recoveredBlock5Value9) addArgument: (recoveredBlock5Value10) implType: (recoveredBlock5Value11).
    recoveredBlock5Value12 := RBInt8Unsigned.
    (recoveredBlock5Value8) addArgument: (1) implType: (recoveredBlock5Value12).
    recoveredBlock5Value13 := (self) class.
    recoveredBlock5Value14 := (recoveredBlock5Value13) getSGServer.
    recoveredBlock5Value15 := recoveredLocal3.
    recoveredBlock5Value16 := (recoveredBlock5Value14) sendL1Message: (recoveredBlock5Value15).
    recoveredLocal2 := recoveredBlock5Value16.
    recoveredBlock5Value17 := recoveredLocal2.
    recoveredBlock5Value18 := (recoveredBlock5Value17) removeInt32Argument.
    recoveredBlock5Value19 := recoveredBlock5Value18.
    recoveredLocal1 := recoveredBlock5Value19.
    recoveredBlock5Value18
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x203e8780; bytecode file offset 0xce5068"
!SGAccessOperatingSystem methodsFor: 'recovered'!
activateTaskWithId: recoveredArg1 time: recoveredArg2 dt: recoveredArg3 name: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 recoveredBlock5Value13 recoveredBlock5Value14 recoveredBlock5Value15 recoveredBlock5Value16 recoveredBlock5Value17 recoveredBlock5Value18 recoveredBlock5Value19 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := CMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('activateTaskWithId()').
    recoveredBlock5Value4 := recoveredArg4.
    recoveredBlock5Value5 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: (recoveredBlock5Value4) commandDesc: ('L1_activateTaskWithId').
    recoveredLocal3 := recoveredBlock5Value5.
    recoveredBlock5Value6 := recoveredLocal3.
    recoveredBlock5Value7 := recoveredArg1.
    recoveredBlock5Value8 := (recoveredBlock5Value7) asInteger.
    (recoveredBlock5Value6) addArgument: (recoveredBlock5Value8).
    recoveredBlock5Value9 := recoveredLocal3.
    recoveredBlock5Value10 := recoveredArg2.
    recoveredBlock5Value11 := (recoveredBlock5Value10) asInteger.
    (recoveredBlock5Value9) addArgument: (recoveredBlock5Value11).
    recoveredBlock5Value12 := recoveredLocal3.
    recoveredBlock5Value13 := recoveredArg3.
    (recoveredBlock5Value12) addArgument: (recoveredBlock5Value13).
    recoveredBlock5Value14 := SGServer.
    recoveredBlock5Value15 := recoveredLocal3.
    recoveredBlock5Value16 := (recoveredBlock5Value14) sendL1Message: (recoveredBlock5Value15).
    recoveredLocal2 := recoveredBlock5Value16.
    recoveredBlock5Value17 := recoveredLocal2.
    recoveredBlock5Value18 := (recoveredBlock5Value17) removeInt32Argument.
    recoveredBlock5Value19 := recoveredBlock5Value18.
    recoveredLocal1 := recoveredBlock5Value19.
    recoveredBlock5Value18
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x204cfadc; bytecode file offset 0xdcc3d4"
!SGAccessOperatingSystem methodsFor: 'recovered'!
getSubModelPseudoAddress: recoveredArg1 silent: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Local3 recoveredBlock5Local4 recoveredBlock5Local5 recoveredBlock5Local6 recoveredBlock5Local7 recoveredBlock5Local8 recoveredBlock5Local9 recoveredBlock5Local10 recoveredBlock5Local11 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5Stack6 recoveredBlock5Stack7 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := SGL1Message.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := 0.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack3 := 1.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack4 := 13.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack5 := 'getSubModelPseudoAddress(%1)'.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack6 := recoveredArg1.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack6 := (recoveredBlock5Stack6) asString.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack5 := (recoveredBlock5Stack5) bindWith: (recoveredBlock5Stack6).
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack6 := 'L1_OS'.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) createSmallPid: (recoveredBlock5Stack2) oid: (recoveredBlock5Stack3) cmd: (recoveredBlock5Stack4) contextDesc: (recoveredBlock5Stack5) commandDesc: (recoveredBlock5Stack6).
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Local11 := recoveredBlock5Stack1.
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local11.
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            (recoveredBlock5Stack1) addArgument: (recoveredBlock5Stack2).
            recoveredBlock5PC := 42.
        ].
        recoveredBlock5Step = 42 ifTrue: [
            recoveredBlock5Stack1 := SGServer.
            recoveredBlock5PC := 44.
        ].
        recoveredBlock5Step = 44 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local11.
            recoveredBlock5PC := 46.
        ].
        recoveredBlock5Step = 46 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) sendL1Message: (recoveredBlock5Stack2).
            recoveredBlock5PC := 48.
        ].
        recoveredBlock5Step = 48 ifTrue: [
            recoveredBlock5Local10 := recoveredBlock5Stack1.
            recoveredBlock5PC := 50.
        ].
        recoveredBlock5Step = 50 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 51.
        ].
        recoveredBlock5Step = 51 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local10.
            recoveredBlock5PC := 53.
        ].
        recoveredBlock5Step = 53 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) removeUInt32Argument.
            recoveredBlock5PC := 55.
        ].
        recoveredBlock5Step = 55 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 56.
        ].
        recoveredBlock5Step = 56 ifTrue: [
            recoveredBlock5Local9 := recoveredBlock5Stack3.
            recoveredBlock5PC := 58.
        ].
        recoveredBlock5Step = 58 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 145] ifFalse: [recoveredBlock5PC := 62].
        ].
        recoveredBlock5Step = 62 ifTrue: [
            recoveredBlock5PC := 63.
        ].
        recoveredBlock5Step = 63 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local9.
            recoveredBlock5PC := 65.
        ].
        recoveredBlock5Step = 65 ifTrue: [
            recoveredBlock5Stack2 := 0.
            recoveredBlock5PC := 67.
        ].
        recoveredBlock5Step = 67 ifTrue: [
            (recoveredBlock5Stack1 ~~ recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 78] ifFalse: [recoveredBlock5PC := 70].
        ].
        recoveredBlock5Step = 70 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 71.
        ].
        recoveredBlock5Step = 71 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 72.
        ].
        recoveredBlock5Step = 72 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack2.
            recoveredBlock5PC := 75.
        ].
        recoveredBlock5Step = 75 ifTrue: [
            recoveredBlock5PC := 145.
        ].
        recoveredBlock5Step = 78 ifTrue: [
            recoveredBlock5Stack1 := EtasETPseudoAddress.
            recoveredBlock5PC := 80.
        ].
        recoveredBlock5Step = 80 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local9.
            recoveredBlock5PC := 82.
        ].
        recoveredBlock5Step = 82 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) create: (recoveredBlock5Stack2).
            recoveredBlock5PC := 84.
        ].
        recoveredBlock5Step = 84 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 87.
        ].
        recoveredBlock5Step = 87 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local10.
            recoveredBlock5PC := 89.
        ].
        recoveredBlock5Step = 89 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) removeUInt16Argument.
            recoveredBlock5PC := 91.
        ].
        recoveredBlock5Step = 91 ifTrue: [
            recoveredBlock5Local4 := recoveredBlock5Stack1.
            recoveredBlock5PC := 92.
        ].
        recoveredBlock5Step = 92 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local10.
            recoveredBlock5PC := 94.
        ].
        recoveredBlock5Step = 94 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) removeUInt16Argument.
            recoveredBlock5PC := 96.
        ].
        recoveredBlock5Step = 96 ifTrue: [
            recoveredBlock5Local3 := recoveredBlock5Stack1.
            recoveredBlock5PC := 97.
        ].
        recoveredBlock5Step = 97 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local10.
            recoveredBlock5PC := 99.
        ].
        recoveredBlock5Step = 99 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) removeUInt16Argument.
            recoveredBlock5PC := 101.
        ].
        recoveredBlock5Step = 101 ifTrue: [
            recoveredBlock5Local2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 102.
        ].
        recoveredBlock5Step = 102 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local10.
            recoveredBlock5PC := 104.
        ].
        recoveredBlock5Step = 104 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) removeUInt16Argument.
            recoveredBlock5PC := 106.
        ].
        recoveredBlock5Step = 106 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 107.
        ].
        recoveredBlock5Step = 107 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal1.
            recoveredBlock5PC := 110.
        ].
        recoveredBlock5Step = 110 ifTrue: [
            recoveredBlock5Stack2 := 1.
            recoveredBlock5PC := 112.
        ].
        recoveredBlock5Step = 112 ifTrue: [
            (recoveredBlock5Stack1) setClassVariable: (recoveredBlock5Stack2).
            recoveredBlock5PC := 114.
        ].
        recoveredBlock5Step = 114 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal1.
            recoveredBlock5PC := 117.
        ].
        recoveredBlock5Step = 117 ifTrue: [
            recoveredBlock5Stack2 := 1.
            recoveredBlock5PC := 119.
        ].
        recoveredBlock5Step = 119 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Local1.
            recoveredBlock5PC := 120.
        ].
        recoveredBlock5Step = 120 ifTrue: [
            (recoveredBlock5Stack1) setVariableOffset: (recoveredBlock5Stack2) value: (recoveredBlock5Stack3).
            recoveredBlock5PC := 122.
        ].
        recoveredBlock5Step = 122 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal1.
            recoveredBlock5PC := 125.
        ].
        recoveredBlock5Step = 125 ifTrue: [
            recoveredBlock5Stack2 := 0.
            recoveredBlock5PC := 127.
        ].
        recoveredBlock5Step = 127 ifTrue: [
            (recoveredBlock5Stack1) setClassVariable: (recoveredBlock5Stack2).
            recoveredBlock5PC := 129.
        ].
        recoveredBlock5Step = 129 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal1.
            recoveredBlock5PC := 132.
        ].
        recoveredBlock5Step = 132 ifTrue: [
            recoveredBlock5Stack2 := 0.
            recoveredBlock5PC := 134.
        ].
        recoveredBlock5Step = 134 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Local3.
            recoveredBlock5PC := 135.
        ].
        recoveredBlock5Step = 135 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) setVariableOffset: (recoveredBlock5Stack2) value: (recoveredBlock5Stack3).
            recoveredBlock5PC := 137.
        ].
        recoveredBlock5Step = 137 ifTrue: [
            recoveredBlock5Stack2 := nil.
            recoveredBlock5PC := 138.
        ].
        recoveredBlock5Step = 138 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 139.
        ].
        recoveredBlock5Step = 139 ifTrue: [
            recoveredBlock5Local4 := recoveredBlock5Stack3.
            recoveredBlock5PC := 140.
        ].
        recoveredBlock5Step = 140 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 141.
        ].
        recoveredBlock5Step = 141 ifTrue: [
            recoveredBlock5Local3 := recoveredBlock5Stack3.
            recoveredBlock5PC := 142.
        ].
        recoveredBlock5Step = 142 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 143.
        ].
        recoveredBlock5Step = 143 ifTrue: [
            recoveredBlock5Local2 := recoveredBlock5Stack3.
            recoveredBlock5PC := 144.
        ].
        recoveredBlock5Step = 144 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack2.
            recoveredBlock5PC := 145.
        ].
        recoveredBlock5Step = 145 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) critical: (recoveredValue1) silent: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

