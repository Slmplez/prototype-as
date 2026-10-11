"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20054200; bytecode file offset 0x951190"
!SGAccessSmalltalkData class methodsFor: 'recovered'!
initDummyDevice: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    SGDummyDevice := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200893c4; bytecode file offset 0x985cfc"
!SGAccessSmalltalkData class methodsFor: 'recovered'!
reinitializeDeviceToPreventWalkback
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGSimDummyDevice.
    recoveredValue1 := (recoveredValue0) create.
    SGDummyDevice := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200978e4; bytecode file offset 0x995850"
!SGAccessSmalltalkData class methodsFor: 'recovered'!
newSimTimeStamp: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getDummyDevice.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) newSimTimeStamp: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200aac54; bytecode file offset 0x9a753c"
!SGAccessSmalltalkData class methodsFor: 'recovered'!
createForSimKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) oidNumber: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20230210; bytecode file offset 0xb2cadc"
!SGAccessSmalltalkData class methodsFor: 'recovered'!
getDummyDevice
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | block280dce9cValue0 block280dce9cValue1 |
    block280dce9cValue0 := SGDummyDevice.
    block280dce9cValue1 := (block280dce9cValue0) notNil.
    block280dce9cValue1
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := SGDummyDevice.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock18Value0 |
    (self) etasDevHalt.
    recoveredBlock18Value0 := (self) reinitializeDeviceToPreventWalkback.
    recoveredBlock18Value0
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := SGDummyDevice.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

