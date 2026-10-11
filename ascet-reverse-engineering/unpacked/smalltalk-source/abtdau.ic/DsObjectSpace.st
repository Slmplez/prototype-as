"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdau.ic method 0x2000034c; bytecode file offset 0xf6c0"
!DsObjectSpace methodsFor: 'recovered'!
globalNamespace
    | recoveredValue0 |
    recoveredValue0 := (self) globalAt: ('Smalltalk').
    ^recoveredValue0
! !

"abtdau.ic method 0x2000075c; bytecode file offset 0xfae0"
!DsObjectSpace methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"abtdau.ic method 0x20000790; bytecode file offset 0xfb0c"
!DsObjectSpace methodsFor: 'recovered'!
nickName
    | recoveredValue0 |
    recoveredValue0 := nickName.
    ^recoveredValue0
! !

"abtdau.ic method 0x20000804; bytecode file offset 0xfb78"
!DsObjectSpace methodsFor: 'recovered'!
localSpace
    | recoveredValue0 |
    recoveredValue0 := localSpace.
    ^recoveredValue0
! !

"abtdau.ic method 0x200009c0; bytecode file offset 0xfd2c"
!DsObjectSpace methodsFor: 'recovered'!
connected
    ^true
! !

"abtdau.ic method 0x200009dc; bytecode file offset 0xfd48"
!DsObjectSpace methodsFor: 'recovered'!
collecting
    ^false
! !

"abtdau.ic method 0x20000a44; bytecode file offset 0xfdb4"
!DsObjectSpace methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asSymbol.
    name := recoveredValue1.
    ^self
! !

"abtdau.ic method 0x20000bcc; bytecode file offset 0xff44"
!DsObjectSpace methodsFor: 'recovered'!
subsystemType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) globalAt: ('System').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) subsystemType: (recoveredValue1).
    ^recoveredValue2
! !

"abtdau.ic method 0x20000ef4; bytecode file offset 0x10290"
!DsObjectSpace methodsFor: 'recovered'!
nickName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nickName := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20000f80; bytecode file offset 0x102ec"
!DsObjectSpace methodsFor: 'recovered'!
localSpace: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    localSpace := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20002084; bytecode file offset 0x11404"
!DsObjectSpace methodsFor: 'recovered'!
globalAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := MsgBaseDsAbsentGlobal.
    recoveredBlock5Value1 := (self) getMsg: (recoveredBlock5Value0) group: ('AbtMsgBase').
    recoveredBlock5Value2 := (self) error: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    recoveredValue2 := (self) globalAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"abtdau.ic method 0x20002994; bytecode file offset 0x11d1c"
!DsObjectSpace methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := AbtDsNLSStringObjectSpacePrintStringTemplate.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := localSpace.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack4 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := AbtDsNLSStringOrphanObjectSpace.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := localSpace.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := (recoveredStack4) nickName.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := nickName.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

