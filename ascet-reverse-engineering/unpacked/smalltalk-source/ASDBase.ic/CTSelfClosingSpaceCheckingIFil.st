"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20074d4c; bytecode file offset 0x9757c8"
!CTSelfClosingSpaceCheckingIFil methodsFor: 'recovered'!
isSpaceChecking
    ^true
! !

"ASDBase.ic method 0x200b5aa0; bytecode file offset 0x9b235c"
!CTSelfClosingSpaceCheckingIFil methodsFor: 'recovered'!
setDriveRoot
    | recoveredValue0 |
    recoveredValue0 := super driveRoot.
    driveRoot := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20105e18; bytecode file offset 0xa026d0"
!CTSelfClosingSpaceCheckingIFil methodsFor: 'recovered'!
driveRoot
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := driveRoot.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) setDriveRoot.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := driveRoot.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010f16c; bytecode file offset 0xa0ba48"
!CTSelfClosingSpaceCheckingIFil methodsFor: 'recovered'!
printFileStateOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super printFileStateOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) nextPutAll: ('.spaceChecking').
    ^self
! !

"ASDBase.ic method 0x2014ea5c; bytecode file offset 0xa4b338"
!CTSelfClosingSpaceCheckingIFil methodsFor: 'recovered'!
compactIFIL
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) fileSize.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := super compactIFIL.
    recoveredBlock6Value0
].
    recoveredValue2 := (self) spaceCheck: (recoveredValue0) ifFree: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20204dd8; bytecode file offset 0xb01744"
!CTSelfClosingSpaceCheckingIFil methodsFor: 'recovered'!
add: recoveredArg1 target: recoveredArg2 vRecord: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := recoveredArg2.
    recoveredBlock8Value2 := recoveredArg3.
    recoveredBlock8Value3 := super add: (recoveredBlock8Value0) target: (recoveredBlock8Value1) vRecord: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue3 := (self) spaceCheck: (recoveredValue1) ifFree: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20204e08; bytecode file offset 0xb01744"
!CTSelfClosingSpaceCheckingIFil methodsFor: 'recovered'!
update: recoveredArg1 target: recoveredArg2 vRecord: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := recoveredArg2.
    recoveredBlock8Value2 := recoveredArg3.
    recoveredBlock8Value3 := super update: (recoveredBlock8Value0) target: (recoveredBlock8Value1) vRecord: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue3 := (self) spaceCheck: (recoveredValue1) ifFree: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20204e50; bytecode file offset 0xb01744"
!CTSelfClosingSpaceCheckingIFil methodsFor: 'recovered'!
update: recoveredArg1 target: recoveredArg2 record: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := recoveredArg2.
    recoveredBlock8Value2 := recoveredArg3.
    recoveredBlock8Value3 := super update: (recoveredBlock8Value0) target: (recoveredBlock8Value1) record: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue3 := (self) spaceCheck: (recoveredValue1) ifFree: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20204e80; bytecode file offset 0xb01744"
!CTSelfClosingSpaceCheckingIFil methodsFor: 'recovered'!
add: recoveredArg1 target: recoveredArg2 record: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := recoveredArg2.
    recoveredBlock8Value2 := recoveredArg3.
    recoveredBlock8Value3 := super add: (recoveredBlock8Value0) target: (recoveredBlock8Value1) record: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue3 := (self) spaceCheck: (recoveredValue1) ifFree: (recoveredValue2).
    ^recoveredValue3
! !

