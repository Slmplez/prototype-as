"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20028544; bytecode file offset 0x934580"
!EtasStream methodsFor: 'recovered'!
isCfsError
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := (recoveredValue0) isCfsError.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d7a4; bytecode file offset 0x934580"
!EtasStream methodsFor: 'recovered'!
contents
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := (recoveredValue0) contents.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002eb94; bytecode file offset 0x934580"
!EtasStream methodsFor: 'recovered'!
fileDescriptor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := (recoveredValue0) fileDescriptor.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030ab4; bytecode file offset 0x934580"
!EtasStream methodsFor: 'recovered'!
isEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := (recoveredValue0) isEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035154; bytecode file offset 0x934580"
!EtasStream methodsFor: 'recovered'!
cr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := (recoveredValue0) cr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036044; bytecode file offset 0x934580"
!EtasStream methodsFor: 'recovered'!
tab
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := (recoveredValue0) tab.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036894; bytecode file offset 0x934580"
!EtasStream methodsFor: 'recovered'!
isOpen
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := (recoveredValue0) isOpen.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200404a4; bytecode file offset 0x93d278"
!EtasStream methodsFor: 'recovered'!
position
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := stream.
    recoveredValue1 := (recoveredValue0) position.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066794; bytecode file offset 0x963428"
!EtasStream methodsFor: 'recovered'!
stream
    | recoveredValue0 |
    recoveredValue0 := stream.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20092658; bytecode file offset 0x98ef64"
!EtasStream methodsFor: 'recovered'!
position: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := stream.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) position: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20097f54; bytecode file offset 0x995850"
!EtasStream methodsFor: 'recovered'!
nextPutAll: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200be4ac; bytecode file offset 0x9bb178"
!EtasStream methodsFor: 'recovered'!
stream: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    stream := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2010c9bc; bytecode file offset 0xa092f8"
!EtasStream methodsFor: 'recovered'!
writeOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := stream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := stream.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) writeOn: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ea114; bytecode file offset 0xbe69f4"
!EtasStream methodsFor: 'recovered'!
close
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := (self) stream.
    recoveredBlock4Value1 := (recoveredBlock4Value0) close.
    recoveredBlock4Value1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := ExCFSError.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block280e7a98Arg1 | 
    | block280e7a98Stack0 block280e7a98Stack1 block280e7a98Stack2 block280e7a98Stack3 block280e7a98PC block280e7a98Step block280e7a98Done block280e7a98Result |
    block280e7a98Stack0 := self.
    block280e7a98PC := 4.
    block280e7a98Done := false.
    [block280e7a98Done not] whileTrue: [
        block280e7a98Step := block280e7a98PC.
        block280e7a98Step = 4 ifTrue: [
            block280e7a98Stack1 := block280e7a98Arg1.
            block280e7a98PC := 5.
        ].
        block280e7a98Step = 5 ifTrue: [
            block280e7a98Stack1 := (block280e7a98Stack1) arguments.
            block280e7a98PC := 7.
        ].
        block280e7a98Step = 7 ifTrue: [
            block280e7a98Stack1 := (block280e7a98Stack1) firstOrNil.
            block280e7a98PC := 9.
        ].
        block280e7a98Step = 9 ifTrue: [
            block280e7a98Stack1 := (block280e7a98Stack1) errorCode.
            block280e7a98PC := 11.
        ].
        block280e7a98Step = 11 ifTrue: [
            block280e7a98Stack2 := 9.
            block280e7a98PC := 13.
        ].
        block280e7a98Step = 13 ifTrue: [
            block280e7a98Stack1 := (block280e7a98Stack1) = (block280e7a98Stack2).
            block280e7a98PC := 14.
        ].
        block280e7a98Step = 14 ifTrue: [
            (block280e7a98Stack1) ifTrue: [block280e7a98PC := 18] ifFalse: [block280e7a98PC := 28].
        ].
        block280e7a98Step = 18 ifTrue: [
            block280e7a98Stack1 := block280e7a98Arg1.
            block280e7a98PC := 19.
        ].
        block280e7a98Step = 19 ifTrue: [
            block280e7a98Stack2 := CfsFileDescriptor.
            block280e7a98PC := 21.
        ].
        block280e7a98Step = 21 ifTrue: [
            block280e7a98Stack2 := (block280e7a98Stack2) closeDiscardedFileDescriptors.
            block280e7a98PC := 23.
        ].
        block280e7a98Step = 23 ifTrue: [
            block280e7a98Stack1 := (block280e7a98Stack1) exitWith: (block280e7a98Stack2).
            block280e7a98PC := 25.
        ].
        block280e7a98Step = 25 ifTrue: [
            block280e7a98PC := 32.
        ].
        block280e7a98Step = 28 ifTrue: [
            block280e7a98Stack1 := block280e7a98Arg1.
            block280e7a98PC := 29.
        ].
        block280e7a98Step = 29 ifTrue: [
            block280e7a98Stack2 := nil.
            block280e7a98PC := 30.
        ].
        block280e7a98Step = 30 ifTrue: [
            block280e7a98Stack1 := (block280e7a98Stack1) exitWith: (block280e7a98Stack2).
            block280e7a98PC := 32.
        ].
        block280e7a98Step = 32 ifTrue: [
            block280e7a98Result := block280e7a98Stack1.
            block280e7a98Done := true.
        ].
    ].
    block280e7a98Result
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

