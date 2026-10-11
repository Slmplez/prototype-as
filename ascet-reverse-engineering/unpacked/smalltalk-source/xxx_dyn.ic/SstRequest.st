"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2000238c; bytecode file offset 0x63558"
!SstRequest methodsFor: 'recovered'!
isDeferred
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstDeferredRequestFlag.
    recoveredValue1 := (self) hasFlag: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200023ec; bytecode file offset 0x63558"
!SstRequest methodsFor: 'recovered'!
isAnswered
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstAnsweredRequestFlag.
    recoveredValue1 := (self) hasFlag: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000248c; bytecode file offset 0x63558"
!SstRequest methodsFor: 'recovered'!
isAsynchronous
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SstAsynchronousRequestFlag.
    recoveredValue1 := (self) hasFlag: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20002648; bytecode file offset 0x6370c"
!SstRequest methodsFor: 'recovered'!
isReplyRequired
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := replyReceiver.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20004188; bytecode file offset 0x65264"
!SstRequest methodsFor: 'recovered'!
replyReceiver
    | recoveredValue0 |
    recoveredValue0 := replyReceiver.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004790; bytecode file offset 0x6592c"
!SstRequest methodsFor: 'recovered'!
sstIsRequest
    ^true
! !

"xxx_dyn.ic method 0x20005120; bytecode file offset 0x6624c"
!SstRequest methodsFor: 'recovered'!
clearDeferredFlag
    | recoveredValue0 |
    recoveredValue0 := SstDeferredRequestFlag.
    (self) clearFlag: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x20005150; bytecode file offset 0x6624c"
!SstRequest methodsFor: 'recovered'!
deferReply
    | recoveredValue0 |
    recoveredValue0 := SstDeferredRequestFlag.
    (self) setFlag: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x20005170; bytecode file offset 0x6624c"
!SstRequest methodsFor: 'recovered'!
markAsAnswered
    | recoveredValue0 |
    recoveredValue0 := SstAnsweredRequestFlag.
    (self) setFlag: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x20008608; bytecode file offset 0x6978c"
!SstRequest methodsFor: 'recovered'!
replyReceiver: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    replyReceiver := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008c70; bytecode file offset 0x69d3c"
!SstRequest methodsFor: 'recovered'!
earlyReply: recoveredArg1 continuation: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) handler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) earlyReply: (recoveredValue1) inResponseTo: (self) continuation: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20009300; bytecode file offset 0x6a3d0"
!SstRequest methodsFor: 'recovered'!
lateReply: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) clearDeferredFlag.
    recoveredValue0 := (self) handler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) reply: (recoveredValue1) inResponseTo: (self).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20009814; bytecode file offset 0x6a8e4"
!SstRequest methodsFor: 'recovered'!
markAsAsynchronous
    | recoveredValue0 |
    (self) replyReceiver: (nil).
    recoveredValue0 := SstAsynchronousRequestFlag.
    (self) setFlag: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x200099dc; bytecode file offset 0x6aaa8"
!SstRequest methodsFor: 'recovered'!
initialize
    super initialize.
    replyReceiver := 0.
    ^self
! !

"xxx_dyn.ic method 0x2001178c; bytecode file offset 0x72860"
!SstRequest methodsFor: 'recovered'!
asSstRequest: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := super asSstRequest: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := replyReceiver.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) replyReceiver: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

