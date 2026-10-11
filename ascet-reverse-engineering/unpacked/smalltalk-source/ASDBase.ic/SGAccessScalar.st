"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000b27c; bytecode file offset 0x908be4"
!SGAccessScalar methodsFor: 'recovered'!
loggingChannelGroup
    | recoveredValue0 |
    recoveredValue0 := (self) logChannelGroup.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200af6d8; bytecode file offset 0x9abf98"
!SGAccessScalar methodsFor: 'recovered'!
removeLogChannel
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) device.
    recoveredValue1 := (self) oidNumber.
    recoveredValue2 := (recoveredValue0) deleteLogChannel: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20160a24; bytecode file offset 0xa5d318"
!SGAccessScalar methodsFor: 'recovered'!
addMeasureData
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) device.
    recoveredValue1 := (self) oidNumber.
    recoveredValue2 := (self) channelGroup.
    recoveredValue3 := (self) getSelfPointer.
    recoveredValue4 := (self) getValuePointer.
    recoveredValue5 := (self) typeSize.
    recoveredValue6 := (recoveredValue0) addMeasureData: (recoveredValue1) groupID: (recoveredValue2) dataPointer: (recoveredValue3) valuePointer: (recoveredValue4) typeSize: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x202ffa54; bytecode file offset 0xbfc338"
!SGAccessScalar methodsFor: 'recovered'!
getValuePointer
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := CMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('getValuePtr()').
    recoveredBlock5Value4 := charElement.
    recoveredBlock5Value5 := (recoveredBlock5Value4) name.
    recoveredBlock5Value6 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: (recoveredBlock5Value5) commandDesc: ('L1_getValuePtr').
    recoveredBlock5Local2 := recoveredBlock5Value6.
    recoveredBlock5Value7 := SGServer.
    recoveredBlock5Value8 := recoveredBlock5Local2.
    recoveredBlock5Value9 := (recoveredBlock5Value7) sendL1Message: (recoveredBlock5Value8).
    recoveredBlock5Local1 := recoveredBlock5Value9.
    recoveredBlock5Value10 := recoveredBlock5Local1.
    recoveredBlock5Value11 := (recoveredBlock5Value10) removeUInt32Argument.
    recoveredBlock5Value12 := recoveredBlock5Value11.
    recoveredLocal1 := recoveredBlock5Value12.
    recoveredBlock5Value11
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2031751c; bytecode file offset 0xc13e04"
!SGAccessScalar methodsFor: 'recovered'!
read
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 recoveredBlock5Value13 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := CMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('getScalar()').
    recoveredBlock5Value4 := charElement.
    recoveredBlock5Value5 := (recoveredBlock5Value4) name.
    recoveredBlock5Value6 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: (recoveredBlock5Value5) commandDesc: ('L1_getScalar').
    recoveredBlock5Local2 := recoveredBlock5Value6.
    recoveredBlock5Value7 := SGServer.
    recoveredBlock5Value8 := recoveredBlock5Local2.
    recoveredBlock5Value9 := (recoveredBlock5Value7) sendL1Message: (recoveredBlock5Value8).
    recoveredBlock5Local1 := recoveredBlock5Value9.
    recoveredBlock5Value10 := recoveredBlock5Local1.
    recoveredBlock5Value11 := (self) implType.
    recoveredBlock5Value12 := (recoveredBlock5Value10) removeArgumentOfImplType: (recoveredBlock5Value11).
    recoveredBlock5Value13 := recoveredBlock5Value12.
    recoveredLocal1 := recoveredBlock5Value13.
    recoveredBlock5Value12
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2032c968; bytecode file offset 0xc29254"
!SGAccessScalar methodsFor: 'recovered'!
write: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 recoveredBlock5Value13 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := CMethods.
    recoveredBlock5Value3 := (recoveredBlock5Value2) at: ('setScalar()').
    recoveredBlock5Value4 := charElement.
    recoveredBlock5Value5 := (recoveredBlock5Value4) name.
    recoveredBlock5Value6 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value3) contextDesc: (recoveredBlock5Value5) commandDesc: ('L1_setScalar').
    recoveredBlock5Local2 := recoveredBlock5Value6.
    recoveredBlock5Value7 := recoveredBlock5Local2.
    recoveredBlock5Value8 := recoveredArg1.
    recoveredBlock5Value9 := (self) implType.
    (recoveredBlock5Value7) addArgument: (recoveredBlock5Value8) implType: (recoveredBlock5Value9).
    recoveredBlock5Value10 := SGServer.
    recoveredBlock5Value11 := recoveredBlock5Local2.
    recoveredBlock5Value12 := (recoveredBlock5Value10) sendL1Message: (recoveredBlock5Value11).
    recoveredBlock5Value13 := recoveredBlock5Value12.
    recoveredBlock5Local1 := recoveredBlock5Value13.
    recoveredBlock5Value12
].
    (recoveredValue0) critical: (recoveredValue1).
    (self) updateDependentParameter.
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x203fe2dc; bytecode file offset 0xcfabd4"
!SGAccessScalar methodsFor: 'recovered'!
getMinMaxQuant
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 recoveredBlock5Value13 recoveredBlock5Value14 recoveredBlock5Value15 recoveredBlock5Value16 recoveredBlock5Value17 recoveredBlock5Value18 recoveredBlock5Value19 recoveredBlock5Value20 recoveredBlock5Value21 recoveredBlock5Value22 recoveredBlock5Value23 recoveredBlock5Value24 recoveredBlock5Value25 |
    recoveredBlock5Value0 := Array.
    recoveredBlock5Value1 := (recoveredBlock5Value0) new: (3).
    recoveredLocal1 := recoveredBlock5Value1.
    recoveredBlock5Value2 := SGL1Message.
    recoveredBlock5Value3 := oidNumber.
    recoveredBlock5Value4 := (self) class.
    recoveredBlock5Value5 := (recoveredBlock5Value4) getCMethods.
    recoveredBlock5Value6 := (recoveredBlock5Value5) at: ('getMinMaxQuant()').
    recoveredBlock5Value7 := charElement.
    recoveredBlock5Value8 := (recoveredBlock5Value7) name.
    recoveredBlock5Value9 := (recoveredBlock5Value2) createSmallPid: (0) oid: (recoveredBlock5Value3) cmd: (recoveredBlock5Value6) contextDesc: (recoveredBlock5Value8) commandDesc: ('L1_getMinMaxQuant').
    recoveredBlock5Local2 := recoveredBlock5Value9.
    recoveredBlock5Value10 := SGServer.
    recoveredBlock5Value11 := recoveredBlock5Local2.
    recoveredBlock5Value12 := (recoveredBlock5Value10) sendL1Message: (recoveredBlock5Value11).
    recoveredBlock5Local1 := recoveredBlock5Value12.
    recoveredBlock5Value13 := recoveredLocal1.
    recoveredBlock5Value14 := recoveredBlock5Local1.
    recoveredBlock5Value15 := RBFloat.
    recoveredBlock5Value16 := (recoveredBlock5Value14) removeArgumentOfImplType: (recoveredBlock5Value15).
    (recoveredBlock5Value13) at: (1) put: (recoveredBlock5Value16).
    recoveredBlock5Value17 := recoveredLocal1.
    recoveredBlock5Value18 := recoveredBlock5Local1.
    recoveredBlock5Value19 := RBFloat.
    recoveredBlock5Value20 := (recoveredBlock5Value18) removeArgumentOfImplType: (recoveredBlock5Value19).
    (recoveredBlock5Value17) at: (2) put: (recoveredBlock5Value20).
    recoveredBlock5Value21 := recoveredLocal1.
    recoveredBlock5Value22 := recoveredBlock5Local1.
    recoveredBlock5Value23 := RBFloat.
    recoveredBlock5Value24 := (recoveredBlock5Value22) removeArgumentOfImplType: (recoveredBlock5Value23).
    recoveredBlock5Value25 := (recoveredBlock5Value21) at: (3) put: (recoveredBlock5Value24).
    recoveredBlock5Value25
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20404a44; bytecode file offset 0xd01330"
!SGAccessScalar methodsFor: 'recovered'!
setMinMaxQuant: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 recoveredBlock5Value13 recoveredBlock5Value14 recoveredBlock5Value15 recoveredBlock5Value16 recoveredBlock5Value17 recoveredBlock5Value18 recoveredBlock5Value19 recoveredBlock5Value20 recoveredBlock5Value21 recoveredBlock5Value22 recoveredBlock5Value23 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := (self) class.
    recoveredBlock5Value3 := (recoveredBlock5Value2) getCMethods.
    recoveredBlock5Value4 := (recoveredBlock5Value3) at: ('setMinMaxQuant()').
    recoveredBlock5Value5 := charElement.
    recoveredBlock5Value6 := (recoveredBlock5Value5) name.
    recoveredBlock5Value7 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value4) contextDesc: (recoveredBlock5Value6) commandDesc: ('L1_setMinMaxQuant').
    recoveredLocal2 := recoveredBlock5Value7.
    recoveredBlock5Value8 := recoveredLocal2.
    recoveredBlock5Value9 := recoveredArg1.
    recoveredBlock5Value10 := (recoveredBlock5Value9) at: (3).
    recoveredBlock5Value11 := (recoveredBlock5Value10) asFloat.
    (recoveredBlock5Value8) addArgument: (recoveredBlock5Value11).
    recoveredBlock5Value12 := recoveredLocal2.
    recoveredBlock5Value13 := recoveredArg1.
    recoveredBlock5Value14 := (recoveredBlock5Value13) at: (2).
    recoveredBlock5Value15 := (recoveredBlock5Value14) asFloat.
    (recoveredBlock5Value12) addArgument: (recoveredBlock5Value15).
    recoveredBlock5Value16 := recoveredLocal2.
    recoveredBlock5Value17 := recoveredArg1.
    recoveredBlock5Value18 := (recoveredBlock5Value17) at: (1).
    recoveredBlock5Value19 := (recoveredBlock5Value18) asFloat.
    (recoveredBlock5Value16) addArgument: (recoveredBlock5Value19).
    recoveredBlock5Value20 := SGServer.
    recoveredBlock5Value21 := recoveredLocal2.
    recoveredBlock5Value22 := (recoveredBlock5Value20) sendL1Message: (recoveredBlock5Value21).
    recoveredBlock5Value23 := recoveredBlock5Value22.
    recoveredLocal1 := recoveredBlock5Value23.
    recoveredBlock5Value22
].
    (recoveredValue0) critical: (recoveredValue1).
    ^true
! !

"ASDBase.ic method 0x20465664; bytecode file offset 0xd61f6c"
!SGAccessScalar methodsFor: 'recovered'!
createLogChannel
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_50102'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := charElement.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isLinearAndInvertible.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) offset.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) scale.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) negated.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) scale.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := charElement.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) unit.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 67] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := charElement.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) description.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) text.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 81] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) device.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := charElement.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) wName.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := (recoveredStack4) typeSize.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack5 := charElement.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack5 := (recoveredStack5) getBasicLogType.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack6 := recoveredLocal3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack6 := (recoveredStack6) asFloat.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack7 := recoveredLocal4.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack7 := (recoveredStack7) asFloat.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack8 := (recoveredStack8) oidNumber.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack9 := (recoveredStack9) getSelfPointer.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack10 := (recoveredStack10) getValuePointer.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLogChannel: (recoveredStack1) unit: (recoveredStack2) comment: (recoveredStack3) typeSize: (recoveredStack4) basicType: (recoveredStack5) factor: (recoveredStack6) offset: (recoveredStack7) dataOID: (recoveredStack8) dataPtr: (recoveredStack9) valuePtr: (recoveredStack10).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

