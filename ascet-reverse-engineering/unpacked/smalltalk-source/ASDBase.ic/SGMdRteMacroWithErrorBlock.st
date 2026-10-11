"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20054e7c; bytecode file offset 0x952a9c"
!SGMdRteMacroWithErrorBlock methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) autosarRTECallWithErrorBlock: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006f1c8; bytecode file offset 0x96bc1c"
!SGMdRteMacroWithErrorBlock methodsFor: 'recovered'!
errorBlock
    | recoveredValue0 |
    recoveredValue0 := errorBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f540; bytecode file offset 0x96bf7c"
!SGMdRteMacroWithErrorBlock methodsFor: 'recovered'!
rteOk
    | recoveredValue0 |
    recoveredValue0 := rteOk.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200761f4; bytecode file offset 0x9757c8"
!SGMdRteMacroWithErrorBlock methodsFor: 'recovered'!
isMdlRteMacroWithErrorBlock
    ^true
! !

"ASDBase.ic method 0x20076f4c; bytecode file offset 0x9757c8"
!SGMdRteMacroWithErrorBlock methodsFor: 'recovered'!
isMdlSideEffectExpr
    ^true
! !

"ASDBase.ic method 0x200c59e4; bytecode file offset 0x9c22c8"
!SGMdRteMacroWithErrorBlock methodsFor: 'recovered'!
errorBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    errorBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5a58; bytecode file offset 0x9c25bc"
!SGMdRteMacroWithErrorBlock methodsFor: 'recovered'!
rteOk: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    rteOk := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20171498; bytecode file offset 0xa6dd5c"
!SGMdRteMacroWithErrorBlock methodsFor: 'recovered'!
isRteDRead
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlRteMacroWithErrorBlock.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorBlock.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := super isRteDRead.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20232e14; bytecode file offset 0xb2f6e8"
!SGMdRteMacroWithErrorBlock methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('([').
    recoveredValue1 := recoveredArg1.
    super printOn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) nextPutAll: ('] onErrorDo: ').
    recoveredValue3 := (self) errorBlock.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) printOn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) nextPutAll: (')').
    (recoveredValue5) cr.
    ^self
! !

