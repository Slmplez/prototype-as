"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20054f00; bytecode file offset 0x952a9c"
!SGMdAREventTiming methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlARTimingEvent: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006cef0; bytecode file offset 0x969c04"
!SGMdAREventTiming methodsFor: 'recovered'!
period
    | recoveredValue0 |
    recoveredValue0 := period.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d93c; bytecode file offset 0x96a390"
!SGMdAREventTiming methodsFor: 'recovered'!
offset
    | recoveredValue0 |
    recoveredValue0 := offset.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200780fc; bytecode file offset 0x9757c8"
!SGMdAREventTiming methodsFor: 'recovered'!
isMdlARTimingEvent
    ^true
! !

"ASDBase.ic method 0x200c3c90; bytecode file offset 0x9c058c"
!SGMdAREventTiming methodsFor: 'recovered'!
period: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    period := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3f74; bytecode file offset 0x9c0bf0"
!SGMdAREventTiming methodsFor: 'recovered'!
offset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    offset := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fa8ac; bytecode file offset 0x9f71d0"
!SGMdAREventTiming methodsFor: 'recovered'!
initialize
    super initialize.
    (self) period: (0).
    ^self
! !

