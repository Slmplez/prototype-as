"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x202e5be8; bytecode file offset 0xbe24c8"
!SGAccessVector methodsFor: 'recovered'!
read
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := CMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('getVector()').
    recoveredBlock5Value4 := (recoveredBlock5Value0) createLargePid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3).
    recoveredBlock5Local2 := recoveredBlock5Value4.
    recoveredBlock5Value5 := SGServer.
    recoveredBlock5Value6 := recoveredBlock5Local2.
    recoveredBlock5Value7 := (recoveredBlock5Value5) sendL1Message: (recoveredBlock5Value6).
    recoveredBlock5Local1 := recoveredBlock5Value7.
    recoveredBlock5Value8 := recoveredBlock5Local1.
    recoveredBlock5Value9 := (self) implType.
    recoveredBlock5Value10 := (recoveredBlock5Value8) removeVectorOfImplType: (recoveredBlock5Value9).
    recoveredBlock5Value11 := recoveredBlock5Value10.
    recoveredLocal1 := recoveredBlock5Value11.
    recoveredBlock5Value10
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x202fde68; bytecode file offset 0xbfa74c"
!SGAccessVector methodsFor: 'recovered'!
write: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := CMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('setVector()').
    recoveredBlock5Value4 := (recoveredBlock5Value0) createLargePid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3).
    recoveredBlock5Local2 := recoveredBlock5Value4.
    recoveredBlock5Value5 := recoveredBlock5Local2.
    recoveredBlock5Value6 := recoveredArg1.
    recoveredBlock5Value7 := (self) implType.
    (recoveredBlock5Value5) addVector: (recoveredBlock5Value6) implType: (recoveredBlock5Value7).
    recoveredBlock5Value8 := SGServer.
    recoveredBlock5Value9 := recoveredBlock5Local2.
    recoveredBlock5Value10 := (recoveredBlock5Value8) sendL1Message: (recoveredBlock5Value9).
    recoveredBlock5Value11 := recoveredBlock5Value10.
    recoveredBlock5Local1 := recoveredBlock5Value11.
    recoveredBlock5Value10
].
    (recoveredValue0) critical: (recoveredValue1).
    (self) updateDependentParameter.
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2030f2f0; bytecode file offset 0xc0bc14"
!SGAccessVector methodsFor: 'recovered'!
readMaxSize
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 recoveredBlock5Value13 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := CMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('getVectorMaxSize()').
    recoveredBlock5Value4 := charElement.
    recoveredBlock5Value5 := (recoveredBlock5Value4) name.
    recoveredBlock5Value6 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: (recoveredBlock5Value5) commandDesc: ('L1_getVectorMaxSize').
    recoveredBlock5Local2 := recoveredBlock5Value6.
    recoveredBlock5Value7 := SGServer.
    recoveredBlock5Value8 := recoveredBlock5Local2.
    recoveredBlock5Value9 := (recoveredBlock5Value7) sendL1Message: (recoveredBlock5Value8).
    recoveredBlock5Local1 := recoveredBlock5Value9.
    recoveredBlock5Value10 := recoveredBlock5Local1.
    recoveredBlock5Value11 := RBInt32Unsigned.
    recoveredBlock5Value12 := (recoveredBlock5Value10) removeArgumentOfImplType: (recoveredBlock5Value11).
    recoveredBlock5Value13 := recoveredBlock5Value12.
    recoveredLocal1 := recoveredBlock5Value13.
    recoveredBlock5Value12
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2030f32c; bytecode file offset 0xc0bc14"
!SGAccessVector methodsFor: 'recovered'!
readWorkingPoint
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 recoveredBlock5Value13 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := CMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('getWorkingPoint()').
    recoveredBlock5Value4 := charElement.
    recoveredBlock5Value5 := (recoveredBlock5Value4) source.
    recoveredBlock5Value6 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: (recoveredBlock5Value5) commandDesc: ('L1_getWorkingPoint').
    recoveredBlock5Local2 := recoveredBlock5Value6.
    recoveredBlock5Value7 := SGServer.
    recoveredBlock5Value8 := recoveredBlock5Local2.
    recoveredBlock5Value9 := (recoveredBlock5Value7) sendL1Message: (recoveredBlock5Value8).
    recoveredBlock5Local1 := recoveredBlock5Value9.
    recoveredBlock5Value10 := recoveredBlock5Local1.
    recoveredBlock5Value11 := RBFloat.
    recoveredBlock5Value12 := (recoveredBlock5Value10) removeArgumentOfImplType: (recoveredBlock5Value11).
    recoveredBlock5Value13 := recoveredBlock5Value12.
    recoveredLocal1 := recoveredBlock5Value13.
    recoveredBlock5Value12
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20372e28; bytecode file offset 0xc6f71c"
!SGAccessVector methodsFor: 'recovered'!
getValuePointerAtIndex: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 recoveredBlock5Value13 recoveredBlock5Value14 recoveredBlock5Value15 recoveredBlock5Value16 recoveredBlock5Value17 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := CMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('getValuePtr()').
    recoveredBlock5Value4 := charElement.
    recoveredBlock5Value5 := (recoveredBlock5Value4) name.
    recoveredBlock5Value6 := recoveredArg1.
    recoveredBlock5Value7 := (recoveredBlock5Value6) asString.
    recoveredBlock5Value8 := ('%1 index %2') bindWith: (recoveredBlock5Value5) with: (recoveredBlock5Value7).
    recoveredBlock5Value9 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: (recoveredBlock5Value8) commandDesc: ('L1_vector_getValuePtr').
    recoveredBlock5Local2 := recoveredBlock5Value9.
    recoveredBlock5Value10 := recoveredBlock5Local2.
    recoveredBlock5Value11 := recoveredArg1.
    (recoveredBlock5Value10) addArgument: (recoveredBlock5Value11).
    recoveredBlock5Value12 := SGServer.
    recoveredBlock5Value13 := recoveredBlock5Local2.
    recoveredBlock5Value14 := (recoveredBlock5Value12) sendL1Message: (recoveredBlock5Value13).
    recoveredBlock5Local1 := recoveredBlock5Value14.
    recoveredBlock5Value15 := recoveredBlock5Local1.
    recoveredBlock5Value16 := (recoveredBlock5Value15) removeUInt32Argument.
    recoveredBlock5Value17 := recoveredBlock5Value16.
    recoveredLocal1 := recoveredBlock5Value17.
    recoveredBlock5Value16
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2038b8f4; bytecode file offset 0xc881ec"
!SGAccessVector methodsFor: 'recovered'!
readAt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 recoveredBlock5Value13 recoveredBlock5Value14 recoveredBlock5Value15 recoveredBlock5Value16 recoveredBlock5Value17 recoveredBlock5Value18 recoveredBlock5Value19 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := CMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('readVectorAtIndex()').
    recoveredBlock5Value4 := charElement.
    recoveredBlock5Value5 := (recoveredBlock5Value4) name.
    recoveredBlock5Value6 := recoveredArg1.
    recoveredBlock5Value7 := (recoveredBlock5Value6) asString.
    recoveredBlock5Value8 := ('%1 index %2') bindWith: (recoveredBlock5Value5) with: (recoveredBlock5Value7).
    recoveredBlock5Value9 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: (recoveredBlock5Value8) commandDesc: ('L1_readVectorAtIndex').
    recoveredBlock5Local2 := recoveredBlock5Value9.
    recoveredBlock5Value10 := recoveredBlock5Local2.
    recoveredBlock5Value11 := recoveredArg1.
    recoveredBlock5Value12 := (recoveredBlock5Value11) + (-1).
    (recoveredBlock5Value10) addArgument: (recoveredBlock5Value12).
    recoveredBlock5Value13 := SGServer.
    recoveredBlock5Value14 := recoveredBlock5Local2.
    recoveredBlock5Value15 := (recoveredBlock5Value13) sendL1Message: (recoveredBlock5Value14).
    recoveredBlock5Local1 := recoveredBlock5Value15.
    recoveredBlock5Value16 := recoveredBlock5Local1.
    recoveredBlock5Value17 := (self) implType.
    recoveredBlock5Value18 := (recoveredBlock5Value16) removeArgumentOfImplType: (recoveredBlock5Value17).
    recoveredBlock5Value19 := recoveredBlock5Value18.
    recoveredLocal1 := recoveredBlock5Value19.
    recoveredBlock5Value18
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2039be98; bytecode file offset 0xc98794"
!SGAccessVector methodsFor: 'recovered'!
write: recoveredArg1 at: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 recoveredBlock5Value13 recoveredBlock5Value14 recoveredBlock5Value15 recoveredBlock5Value16 recoveredBlock5Value17 recoveredBlock5Value18 recoveredBlock5Value19 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := CMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('writeVectorAtIndex()').
    recoveredBlock5Value4 := charElement.
    recoveredBlock5Value5 := (recoveredBlock5Value4) name.
    recoveredBlock5Value6 := recoveredArg2.
    recoveredBlock5Value7 := (recoveredBlock5Value6) asString.
    recoveredBlock5Value8 := ('%1 index %2') bindWith: (recoveredBlock5Value5) with: (recoveredBlock5Value7).
    recoveredBlock5Value9 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: (recoveredBlock5Value8) commandDesc: ('L1_writeVectorAtIndex').
    recoveredBlock5Local2 := recoveredBlock5Value9.
    recoveredBlock5Value10 := recoveredBlock5Local2.
    recoveredBlock5Value11 := recoveredArg1.
    recoveredBlock5Value12 := (self) implType.
    (recoveredBlock5Value10) addArgument: (recoveredBlock5Value11) implType: (recoveredBlock5Value12).
    recoveredBlock5Value13 := recoveredBlock5Local2.
    recoveredBlock5Value14 := recoveredArg2.
    recoveredBlock5Value15 := (recoveredBlock5Value14) + (-1).
    (recoveredBlock5Value13) addArgument: (recoveredBlock5Value15).
    recoveredBlock5Value16 := SGServer.
    recoveredBlock5Value17 := recoveredBlock5Local2.
    recoveredBlock5Value18 := (recoveredBlock5Value16) sendL1Message: (recoveredBlock5Value17).
    recoveredBlock5Value19 := recoveredBlock5Value18.
    recoveredBlock5Local1 := recoveredBlock5Value19.
    recoveredBlock5Value18
].
    (recoveredValue0) critical: (recoveredValue1).
    (self) updateDependentParameter.
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

