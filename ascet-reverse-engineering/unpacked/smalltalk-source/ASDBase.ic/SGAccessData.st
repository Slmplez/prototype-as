"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000926c; bytecode file offset 0x908be4"
!SGAccessData methodsFor: 'recovered'!
readOnlineData
    | recoveredValue0 |
    recoveredValue0 := (self) read.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000bccc; bytecode file offset 0x908be4"
!SGAccessData methodsFor: 'recovered'!
deviceDataId
    | recoveredValue0 |
    recoveredValue0 := (self) oidNumber.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20031094; bytecode file offset 0x934580"
!SGAccessData methodsFor: 'recovered'!
device
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) getSGMeasureDevice.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040828; bytecode file offset 0x93d278"
!SGAccessData methodsFor: 'recovered'!
typeSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := charElement.
    recoveredValue1 := (recoveredValue0) typeSize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004eba0; bytecode file offset 0x94d048"
!SGAccessData methodsFor: 'recovered'!
read
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005d408; bytecode file offset 0x959d74"
!SGAccessData methodsFor: 'recovered'!
dataType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := charElement.
    recoveredValue1 := (recoveredValue0) getPhysType.
    recoveredValue2 := (recoveredValue1) modelLabel.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20067c74; bytecode file offset 0x9646f8"
!SGAccessData methodsFor: 'recovered'!
logChannelGroup
    | recoveredValue0 |
    recoveredValue0 := oidNumber.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068844; bytecode file offset 0x965b90"
!SGAccessData methodsFor: 'recovered'!
getConfigurationObject
    | recoveredValue0 |
    recoveredValue0 := channelGroup.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006917c; bytecode file offset 0x965b90"
!SGAccessData methodsFor: 'recovered'!
channelGroup
    | recoveredValue0 |
    recoveredValue0 := channelGroup.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074bf4; bytecode file offset 0x9757c8"
!SGAccessData methodsFor: 'recovered'!
addMeasureData
    ^true
! !

"ASDBase.ic method 0x2007f1dc; bytecode file offset 0x97c330"
!SGAccessData methodsFor: 'recovered'!
isBitData
    ^false
! !

"ASDBase.ic method 0x20081290; bytecode file offset 0x97db54"
!SGAccessData methodsFor: 'recovered'!
measureRate
    ^250
! !

"ASDBase.ic method 0x200b42ac; bytecode file offset 0x9b0bd0"
!SGAccessData methodsFor: 'recovered'!
removeMeasureData
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) device.
    recoveredValue1 := (self) oidNumber.
    recoveredValue2 := (self) channelGroup.
    recoveredValue3 := (recoveredValue0) removeMeasureData: (recoveredValue1) groupID: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c003c; bytecode file offset 0x9bd228"
!SGAccessData methodsFor: 'recovered'!
channelGroup: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    channelGroup := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c13b8; bytecode file offset 0x9bdf14"
!SGAccessData methodsFor: 'recovered'!
dependent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dependent := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2034; bytecode file offset 0x9beac8"
!SGAccessData methodsFor: 'recovered'!
writeProtection: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    writeProtection := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f0b24; bytecode file offset 0x9ed3dc"
!SGAccessData methodsFor: 'recovered'!
updateDependentParameter
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dependent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := dependent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) updateDependentParameter.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f0b98; bytecode file offset 0x9ed454"
!SGAccessData methodsFor: 'recovered'!
writeProtection
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := writeProtection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := writeProtection.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20307dd4; bytecode file offset 0xc046bc"
!SGAccessData methodsFor: 'recovered'!
getSelfPointer
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 recoveredBlock5Value13 |
    recoveredBlock5Value0 := SGL1Message.
    recoveredBlock5Value1 := oidNumber.
    recoveredBlock5Value2 := (self) class.
    recoveredBlock5Value3 := (recoveredBlock5Value2) getCMethods.
    recoveredBlock5Value4 := (recoveredBlock5Value3) at: ('getSelfPtr()').
    recoveredBlock5Value5 := charElement.
    recoveredBlock5Value6 := (recoveredBlock5Value5) name.
    recoveredBlock5Value7 := (recoveredBlock5Value0) createSmallPid: (0) oid: (recoveredBlock5Value1) cmd: (recoveredBlock5Value4) contextDesc: (recoveredBlock5Value6) commandDesc: ('L1_getSelfPtr').
    recoveredBlock5Local2 := recoveredBlock5Value7.
    recoveredBlock5Value8 := SGServer.
    recoveredBlock5Value9 := recoveredBlock5Local2.
    recoveredBlock5Value10 := (recoveredBlock5Value8) sendL1Message: (recoveredBlock5Value9).
    recoveredBlock5Local1 := recoveredBlock5Value10.
    recoveredBlock5Value11 := recoveredBlock5Local1.
    recoveredBlock5Value12 := (recoveredBlock5Value11) removeUInt32Argument.
    recoveredBlock5Value13 := recoveredBlock5Value12.
    recoveredLocal1 := recoveredBlock5Value13.
    recoveredBlock5Value12
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

