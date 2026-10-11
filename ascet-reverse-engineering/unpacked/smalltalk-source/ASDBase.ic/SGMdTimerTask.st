"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20054b64; bytecode file offset 0x952a9c"
!SGMdTimerTask methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlTimerTask: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006f330; bytecode file offset 0x96bc1c"
!SGMdTimerTask methodsFor: 'recovered'!
delay
    | recoveredValue0 |
    recoveredValue0 := delay.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f488; bytecode file offset 0x96bf7c"
!SGMdTimerTask methodsFor: 'recovered'!
period
    | recoveredValue0 |
    recoveredValue0 := period.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f828; bytecode file offset 0x96c1f4"
!SGMdTimerTask methodsFor: 'recovered'!
specDelay
    | recoveredValue0 |
    recoveredValue0 := specDelay.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f980; bytecode file offset 0x96c42c"
!SGMdTimerTask methodsFor: 'recovered'!
specPeriod
    | recoveredValue0 |
    recoveredValue0 := specPeriod.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200788bc; bytecode file offset 0x9757c8"
!SGMdTimerTask methodsFor: 'recovered'!
isMdlTimerTask
    ^true
! !

"ASDBase.ic method 0x200c58b4; bytecode file offset 0x9c22c8"
!SGMdTimerTask methodsFor: 'recovered'!
delay: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    delay := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5ce0; bytecode file offset 0x9c25bc"
!SGMdTimerTask methodsFor: 'recovered'!
period: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    period := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5de8; bytecode file offset 0x9c2804"
!SGMdTimerTask methodsFor: 'recovered'!
specDelay: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    specDelay := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c607c; bytecode file offset 0x9c29e8"
!SGMdTimerTask methodsFor: 'recovered'!
specPeriod: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    specPeriod := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201cd4a4; bytecode file offset 0xac9d78"
!SGMdTimerTask methodsFor: 'recovered'!
ileActivateTimer: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) attributes.
    (recoveredValue1) taskAttributes: (recoveredValue2).
    recoveredValue3 := (self) ileName.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) id.
    recoveredValue6 := (self) delay.
    recoveredValue7 := (self) period.
    (recoveredValue0) timer: (recoveredValue3) number: (recoveredValue4) taskId: (recoveredValue5) delay: (recoveredValue6) period: (recoveredValue7).
    ^self
! !

