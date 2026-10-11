"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004bdbc; bytecode file offset 0x94877c"
!ASAP2ByPassTPBlob methodsFor: 'recovered'!
byPassVersion
    | recoveredValue0 |
    recoveredValue0 := (self) at: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c13c; bytecode file offset 0x948b80"
!ASAP2ByPassTPBlob methodsFor: 'recovered'!
tpBlobVersion
    | recoveredValue0 |
    recoveredValue0 := (self) at: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c444; bytecode file offset 0x948e28"
!ASAP2ByPassTPBlob methodsFor: 'recovered'!
byPassConfiguration
    | recoveredValue0 |
    recoveredValue0 := (self) at: (7).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c758; bytecode file offset 0x949118"
!ASAP2ByPassTPBlob methodsFor: 'recovered'!
farAddress
    | recoveredValue0 |
    recoveredValue0 := (self) at: (8).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c97c; bytecode file offset 0x9492dc"
!ASAP2ByPassTPBlob methodsFor: 'recovered'!
addressMapping
    | recoveredValue0 |
    recoveredValue0 := (self) at: (9).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a44a8; bytecode file offset 0x9a1ad4"
!ASAP2ByPassTPBlob methodsFor: 'recovered'!
getTPBlobVersion: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getInteger: (recoveredValue0).
    (self) tpBlobVersion: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a49f8; bytecode file offset 0x9a1ad4"
!ASAP2ByPassTPBlob methodsFor: 'recovered'!
getByPassVersion: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getInteger: (recoveredValue0).
    (self) byPassVersion: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a4b48; bytecode file offset 0x9a1ad4"
!ASAP2ByPassTPBlob methodsFor: 'recovered'!
getByPassConfiguration: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getInteger: (recoveredValue0).
    (self) byPassConfiguration: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a4ed8; bytecode file offset 0x9a1ad4"
!ASAP2ByPassTPBlob methodsFor: 'recovered'!
getAddressMapping: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getString: (recoveredValue0).
    (self) addressMapping: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a68b4; bytecode file offset 0x9a32e0"
!ASAP2ByPassTPBlob methodsFor: 'recovered'!
byPassVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (5) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6d04; bytecode file offset 0x9a3694"
!ASAP2ByPassTPBlob methodsFor: 'recovered'!
tpBlobVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (6) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6e3c; bytecode file offset 0x9a391c"
!ASAP2ByPassTPBlob methodsFor: 'recovered'!
byPassConfiguration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (7) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a719c; bytecode file offset 0x9a3b44"
!ASAP2ByPassTPBlob methodsFor: 'recovered'!
farAddress: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (8) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a73b8; bytecode file offset 0x9a3d0c"
!ASAP2ByPassTPBlob methodsFor: 'recovered'!
addressMapping: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (9) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d6b64; bytecode file offset 0x9d3600"
!ASAP2ByPassTPBlob methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) putByPassVersionIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putTPBlobVersionIn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200fb2a0; bytecode file offset 0x9f7ee4"
!ASAP2ByPassTPBlob methodsFor: 'recovered'!
putTPBlobVersionIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) tpBlobVersion.
    (self) putIn: (recoveredValue1) integer: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fb610; bytecode file offset 0x9f7ee4"
!ASAP2ByPassTPBlob methodsFor: 'recovered'!
putByPassVersionIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) byPassVersion.
    (self) putIn: (recoveredValue1) integer: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2011d9d4; bytecode file offset 0xa1a2f8"
!ASAP2ByPassTPBlob methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) getByPassVersion: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getTPBlobVersion: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) parse: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20130374; bytecode file offset 0xa2cc50"
!ASAP2ByPassTPBlob methodsFor: 'recovered'!
getFarAddress: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Association.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getInteger: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) getInteger: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) key: (recoveredValue2) value: (recoveredValue4).
    (self) farAddress: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201e979c; bytecode file offset 0xae60d8"
!ASAP2ByPassTPBlob methodsFor: 'recovered'!
putIn: recoveredArg1 addressMapping: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) addressMapping.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) string: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) putSeparatorIn: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) addressMapping.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e97e4; bytecode file offset 0xae60d8"
!ASAP2ByPassTPBlob methodsFor: 'recovered'!
putIn: recoveredArg1 byPassConfiguration: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) byPassConfiguration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) string: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) putSeparatorIn: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) byPassConfiguration.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028ff78; bytecode file offset 0xb8c848"
!ASAP2ByPassTPBlob methodsFor: 'recovered'!
putIn: recoveredArg1 farAddress: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) farAddress.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) string: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) putSeparatorIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) farAddress.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) key.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) integer: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) putSeparatorIn: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) farAddress.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) integer: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

