"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200ad130; bytecode file offset 0x9a99e4"
!SGAccessMatrix methodsFor: 'recovered'!
storeYIndex: recoveredArg1 ySize: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    yIndex := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    ySize := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x202e5bb4; bytecode file offset 0xbe24c8"
!SGAccessMatrix methodsFor: 'recovered'!
read
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := CMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('getMatrix()').
    recoveredBlock5Value4 := (recoveredBlock5Value0) createLargePid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3).
    recoveredBlock5Local2 := recoveredBlock5Value4.
    recoveredBlock5Value5 := SGServer.
    recoveredBlock5Value6 := recoveredBlock5Local2.
    recoveredBlock5Value7 := (recoveredBlock5Value5) sendL1Message: (recoveredBlock5Value6).
    recoveredBlock5Local1 := recoveredBlock5Value7.
    recoveredBlock5Value8 := recoveredBlock5Local1.
    recoveredBlock5Value9 := (self) implType.
    recoveredBlock5Value10 := (recoveredBlock5Value8) removeMatrixOfImplType: (recoveredBlock5Value9).
    recoveredBlock5Value11 := recoveredBlock5Value10.
    recoveredLocal1 := recoveredBlock5Value11.
    recoveredBlock5Value10
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x202fde30; bytecode file offset 0xbfa74c"
!SGAccessMatrix methodsFor: 'recovered'!
write: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := CMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('setMatrix()').
    recoveredBlock5Value4 := (recoveredBlock5Value0) createLargePid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3).
    recoveredBlock5Local2 := recoveredBlock5Value4.
    recoveredBlock5Value5 := recoveredBlock5Local2.
    recoveredBlock5Value6 := recoveredArg1.
    recoveredBlock5Value7 := (self) implType.
    (recoveredBlock5Value5) addMatrix: (recoveredBlock5Value6) implType: (recoveredBlock5Value7).
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

"ASDBase.ic method 0x20373878; bytecode file offset 0xc70164"
!SGAccessMatrix methodsFor: 'recovered'!
readMaxSize
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 recoveredBlock5Value13 recoveredBlock5Value14 recoveredBlock5Value15 recoveredBlock5Value16 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := CMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('getMatrixMaxSize()').
    recoveredBlock5Value4 := charElement.
    recoveredBlock5Value5 := (recoveredBlock5Value4) name.
    recoveredBlock5Value6 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: (recoveredBlock5Value5) commandDesc: ('L1_readMaxSize').
    recoveredBlock5Local2 := recoveredBlock5Value6.
    recoveredBlock5Value7 := SGServer.
    recoveredBlock5Value8 := recoveredBlock5Local2.
    recoveredBlock5Value9 := (recoveredBlock5Value7) sendL1Message: (recoveredBlock5Value8).
    recoveredBlock5Local1 := recoveredBlock5Value9.
    recoveredBlock5Value10 := recoveredBlock5Local1.
    recoveredBlock5Value11 := RBInt32Unsigned.
    recoveredBlock5Value12 := (recoveredBlock5Value10) removeArgumentOfImplType: (recoveredBlock5Value11).
    recoveredLocal2 := recoveredBlock5Value12.
    recoveredBlock5Value13 := recoveredBlock5Local1.
    recoveredBlock5Value14 := RBInt32Unsigned.
    recoveredBlock5Value15 := (recoveredBlock5Value13) removeArgumentOfImplType: (recoveredBlock5Value14).
    recoveredBlock5Value16 := recoveredBlock5Value15.
    recoveredLocal1 := recoveredBlock5Value16.
    recoveredBlock5Value15
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue2) @ (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x203bc91c; bytecode file offset 0xcb9210"
!SGAccessMatrix methodsFor: 'recovered'!
getValuePointerAtXIndex: recoveredArg1 yIndex: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 recoveredBlock5Value13 recoveredBlock5Value14 recoveredBlock5Value15 recoveredBlock5Value16 recoveredBlock5Value17 recoveredBlock5Value18 recoveredBlock5Value19 recoveredBlock5Value20 recoveredBlock5Value21 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := CMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('getValuePtr()').
    recoveredBlock5Value4 := charElement.
    recoveredBlock5Value5 := (recoveredBlock5Value4) name.
    recoveredBlock5Value6 := recoveredArg1.
    recoveredBlock5Value7 := (recoveredBlock5Value6) asString.
    recoveredBlock5Value8 := recoveredArg2.
    recoveredBlock5Value9 := (recoveredBlock5Value8) asString.
    recoveredBlock5Value10 := ('%1 x=%2 y=%3') bindWith: (recoveredBlock5Value5) with: (recoveredBlock5Value7) with: (recoveredBlock5Value9).
    recoveredBlock5Value11 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: (recoveredBlock5Value10) commandDesc: ('L1_getValuePointerAtXIndex').
    recoveredBlock5Local2 := recoveredBlock5Value11.
    recoveredBlock5Value12 := recoveredBlock5Local2.
    recoveredBlock5Value13 := recoveredArg1.
    (recoveredBlock5Value12) addArgument: (recoveredBlock5Value13).
    recoveredBlock5Value14 := recoveredBlock5Local2.
    recoveredBlock5Value15 := recoveredArg2.
    (recoveredBlock5Value14) addArgument: (recoveredBlock5Value15).
    recoveredBlock5Value16 := SGServer.
    recoveredBlock5Value17 := recoveredBlock5Local2.
    recoveredBlock5Value18 := (recoveredBlock5Value16) sendL1Message: (recoveredBlock5Value17).
    recoveredBlock5Local1 := recoveredBlock5Value18.
    recoveredBlock5Value19 := recoveredBlock5Local1.
    recoveredBlock5Value20 := (recoveredBlock5Value19) removeUInt32Argument.
    recoveredBlock5Value21 := recoveredBlock5Value20.
    recoveredLocal1 := recoveredBlock5Value21.
    recoveredBlock5Value20
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x203d768c; bytecode file offset 0xcd3f84"
!SGAccessMatrix methodsFor: 'recovered'!
readAt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 recoveredBlock5Value13 recoveredBlock5Value14 recoveredBlock5Value15 recoveredBlock5Value16 recoveredBlock5Value17 recoveredBlock5Value18 recoveredBlock5Value19 recoveredBlock5Value20 recoveredBlock5Value21 recoveredBlock5Value22 recoveredBlock5Value23 recoveredBlock5Value24 recoveredBlock5Value25 recoveredBlock5Value26 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := CMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('readMatrixAtXYIndex()').
    recoveredBlock5Value4 := charElement.
    recoveredBlock5Value5 := (recoveredBlock5Value4) name.
    recoveredBlock5Value6 := recoveredArg1.
    recoveredBlock5Value7 := (recoveredBlock5Value6) + (-1).
    recoveredBlock5Value8 := (recoveredBlock5Value7) asString.
    recoveredBlock5Value9 := yIndex.
    recoveredBlock5Value10 := (recoveredBlock5Value9) + (-1).
    recoveredBlock5Value11 := (recoveredBlock5Value10) asString.
    recoveredBlock5Value12 := ('%1 x=%2 y=%3') bindWith: (recoveredBlock5Value5) with: (recoveredBlock5Value8) with: (recoveredBlock5Value11).
    recoveredBlock5Value13 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: (recoveredBlock5Value12) commandDesc: ('L1_readMatrixAtXYIndex').
    recoveredBlock5Local2 := recoveredBlock5Value13.
    recoveredBlock5Value14 := recoveredBlock5Local2.
    recoveredBlock5Value15 := recoveredArg1.
    recoveredBlock5Value16 := (recoveredBlock5Value15) + (-1).
    (recoveredBlock5Value14) addArgument: (recoveredBlock5Value16).
    recoveredBlock5Value17 := recoveredBlock5Local2.
    recoveredBlock5Value18 := yIndex.
    recoveredBlock5Value19 := (recoveredBlock5Value18) + (-1).
    (recoveredBlock5Value17) addArgument: (recoveredBlock5Value19).
    recoveredBlock5Value20 := SGServer.
    recoveredBlock5Value21 := recoveredBlock5Local2.
    recoveredBlock5Value22 := (recoveredBlock5Value20) sendL1Message: (recoveredBlock5Value21).
    recoveredBlock5Local1 := recoveredBlock5Value22.
    recoveredBlock5Value23 := recoveredBlock5Local1.
    recoveredBlock5Value24 := (self) implType.
    recoveredBlock5Value25 := (recoveredBlock5Value23) removeArgumentOfImplType: (recoveredBlock5Value24).
    recoveredBlock5Value26 := recoveredBlock5Value25.
    recoveredLocal1 := recoveredBlock5Value26.
    recoveredBlock5Value25
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2041f61c; bytecode file offset 0xd1bf10"
!SGAccessMatrix methodsFor: 'recovered'!
write: recoveredArg1 at: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 recoveredBlock5Value13 recoveredBlock5Value14 recoveredBlock5Value15 recoveredBlock5Value16 recoveredBlock5Value17 recoveredBlock5Value18 recoveredBlock5Value19 recoveredBlock5Value20 recoveredBlock5Value21 recoveredBlock5Value22 recoveredBlock5Value23 recoveredBlock5Value24 recoveredBlock5Value25 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := CMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('writeMatrixAtXYIndex()').
    recoveredBlock5Value4 := charElement.
    recoveredBlock5Value5 := (recoveredBlock5Value4) name.
    recoveredBlock5Value6 := recoveredArg2.
    recoveredBlock5Value7 := (recoveredBlock5Value6) asString.
    recoveredBlock5Value8 := yIndex.
    recoveredBlock5Value9 := (recoveredBlock5Value8) asString.
    recoveredBlock5Value10 := recoveredArg1.
    recoveredBlock5Value11 := (recoveredBlock5Value10) asString.
    recoveredBlock5Value12 := ('%1 x=%2 y=%3 value=%4') bindWith: (recoveredBlock5Value5) with: (recoveredBlock5Value7) with: (recoveredBlock5Value9) with: (recoveredBlock5Value11).
    recoveredBlock5Value13 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: (recoveredBlock5Value12) commandDesc: ('L1_writeMatrixAt').
    recoveredLocal2 := recoveredBlock5Value13.
    recoveredBlock5Value14 := recoveredLocal2.
    recoveredBlock5Value15 := recoveredArg1.
    (recoveredBlock5Value14) addArgument: (recoveredBlock5Value15).
    recoveredBlock5Value16 := recoveredLocal2.
    recoveredBlock5Value17 := recoveredArg2.
    recoveredBlock5Value18 := (recoveredBlock5Value17) + (-1).
    (recoveredBlock5Value16) addArgument: (recoveredBlock5Value18).
    recoveredBlock5Value19 := recoveredLocal2.
    recoveredBlock5Value20 := yIndex.
    recoveredBlock5Value21 := (recoveredBlock5Value20) + (-1).
    (recoveredBlock5Value19) addArgument: (recoveredBlock5Value21).
    recoveredBlock5Value22 := SGServer.
    recoveredBlock5Value23 := recoveredLocal2.
    recoveredBlock5Value24 := (recoveredBlock5Value22) sendL1Message: (recoveredBlock5Value23).
    recoveredBlock5Value25 := recoveredBlock5Value24.
    recoveredLocal1 := recoveredBlock5Value25.
    recoveredBlock5Value24
].
    (recoveredValue0) critical: (recoveredValue1).
    (self) updateDependentParameter.
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x204307e4; bytecode file offset 0xd2d0dc"
!SGAccessMatrix methodsFor: 'recovered'!
write: recoveredArg1 at: recoveredArg2 at: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 recoveredBlock5Value13 recoveredBlock5Value14 recoveredBlock5Value15 recoveredBlock5Value16 recoveredBlock5Value17 recoveredBlock5Value18 recoveredBlock5Value19 recoveredBlock5Value20 recoveredBlock5Value21 recoveredBlock5Value22 recoveredBlock5Value23 recoveredBlock5Value24 recoveredBlock5Value25 recoveredBlock5Value26 recoveredBlock5Value27 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := (self) class.
    recoveredBlock5Value3 := (recoveredBlock5Value2) getCMethods.
    recoveredBlock5Value4 := (recoveredBlock5Value3) at: ('writeMatrixAtXYIndex()').
    recoveredBlock5Value5 := charElement.
    recoveredBlock5Value6 := (recoveredBlock5Value5) name.
    recoveredBlock5Value7 := recoveredArg2.
    recoveredBlock5Value8 := (recoveredBlock5Value7) asString.
    recoveredBlock5Value9 := recoveredArg3.
    recoveredBlock5Value10 := (recoveredBlock5Value9) asString.
    recoveredBlock5Value11 := recoveredArg1.
    recoveredBlock5Value12 := (recoveredBlock5Value11) asString.
    recoveredBlock5Value13 := ('%1 x=%2 y=%3 value=%4') bindWith: (recoveredBlock5Value6) with: (recoveredBlock5Value8) with: (recoveredBlock5Value10) with: (recoveredBlock5Value12).
    recoveredBlock5Value14 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value4) contextDesc: (recoveredBlock5Value13) commandDesc: ('L1_writeMatrixAt').
    recoveredLocal2 := recoveredBlock5Value14.
    recoveredBlock5Value15 := recoveredLocal2.
    recoveredBlock5Value16 := recoveredArg1.
    (recoveredBlock5Value15) addArgument: (recoveredBlock5Value16).
    recoveredBlock5Value17 := recoveredLocal2.
    recoveredBlock5Value18 := recoveredArg2.
    recoveredBlock5Value19 := (recoveredBlock5Value18) + (-1).
    (recoveredBlock5Value17) addArgument: (recoveredBlock5Value19).
    recoveredBlock5Value20 := recoveredLocal2.
    recoveredBlock5Value21 := recoveredArg3.
    recoveredBlock5Value22 := (recoveredBlock5Value21) + (-1).
    (recoveredBlock5Value20) addArgument: (recoveredBlock5Value22).
    recoveredBlock5Value23 := (self) class.
    recoveredBlock5Value24 := (recoveredBlock5Value23) getSGServer.
    recoveredBlock5Value25 := recoveredLocal2.
    recoveredBlock5Value26 := (recoveredBlock5Value24) sendL1Message: (recoveredBlock5Value25).
    recoveredBlock5Value27 := recoveredBlock5Value26.
    recoveredLocal1 := recoveredBlock5Value27.
    recoveredBlock5Value26
].
    (recoveredValue0) critical: (recoveredValue1).
    (self) updateDependentParameter.
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

