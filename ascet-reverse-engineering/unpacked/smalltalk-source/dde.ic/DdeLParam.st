"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"dde.ic method 0x20000104; bytecode file offset 0x63cc"
!DdeLParam methodsFor: 'recovered'!
msg
    | recoveredValue0 |
    recoveredValue0 := msg.
    ^recoveredValue0
! !

"dde.ic method 0x20000128; bytecode file offset 0x6408"
!DdeLParam methodsFor: 'recovered'!
asInteger
    | recoveredValue0 |
    recoveredValue0 := param.
    ^recoveredValue0
! !

"dde.ic method 0x200002b8; bytecode file offset 0x6584"
!DdeLParam methodsFor: 'recovered'!
atom
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSAtom.
    recoveredValue1 := (self) hiWord.
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"dde.ic method 0x200003f0; bytecode file offset 0x66c0"
!DdeLParam methodsFor: 'recovered'!
loWord
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := msg.
    recoveredValue1 := param.
    recoveredValue2 := (self) unpackLoWord: (recoveredValue0) lParam: (recoveredValue1).
    ^recoveredValue2
! !

"dde.ic method 0x200003fc; bytecode file offset 0x66c0"
!DdeLParam methodsFor: 'recovered'!
hiWord
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := msg.
    recoveredValue1 := param.
    recoveredValue2 := (self) unpackHiWord: (recoveredValue0) lParam: (recoveredValue1).
    ^recoveredValue2
! !

"dde.ic method 0x20000524; bytecode file offset 0x67fc"
!DdeLParam methodsFor: 'recovered'!
msg: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    msg := recoveredValue0.
    ^self
! !

"dde.ic method 0x20000550; bytecode file offset 0x6830"
!DdeLParam methodsFor: 'recovered'!
param: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    param := recoveredValue0.
    ^self
! !

"dde.ic method 0x200006e4; bytecode file offset 0x69ac"
!DdeLParam methodsFor: 'recovered'!
free
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OS.
    recoveredValue1 := msg.
    recoveredValue2 := param.
    (recoveredValue0) freeDDElParam: (recoveredValue1) lParam: (recoveredValue2).
    ^self
! !

"dde.ic method 0x20000974; bytecode file offset 0x6c44"
!DdeLParam methodsFor: 'recovered'!
lo: recoveredArg1 hi: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OS.
    recoveredValue1 := (self) msg.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) packDDElParam: (recoveredValue1) uLow: (recoveredValue2) uHigh: (recoveredValue3).
    (self) param: (recoveredValue4).
    ^self
! !

"dde.ic method 0x20000e4c; bytecode file offset 0x7118"
!DdeLParam methodsFor: 'recovered'!
handle
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) loWord.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := OSHglobal.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) loWord.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) immediate: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"dde.ic method 0x20000f7c; bytecode file offset 0x7250"
!DdeLParam methodsFor: 'recovered'!
unpackHiWord: recoveredArg1 lParam: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (4).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := OS.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue2) unpackDDElParam: (recoveredValue3) lParam: (recoveredValue4) puLow: (nil) puHigh: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) uint32At: (0).
    ^recoveredValue7
! !

"dde.ic method 0x20000fb4; bytecode file offset 0x7288"
!DdeLParam methodsFor: 'recovered'!
unpackLoWord: recoveredArg1 lParam: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (4).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := OS.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue2) unpackDDElParam: (recoveredValue3) lParam: (recoveredValue4) puLow: (recoveredValue5) puHigh: (nil).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) uint32At: (0).
    ^recoveredValue7
! !

