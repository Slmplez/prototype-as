"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004a938; bytecode file offset 0x9471ec"
!SGMdOSEKInfo methodsFor: 'recovered'!
enableRTA
    osekRTA := true.
    ^self
! !

"ASDBase.ic method 0x20065f54; bytecode file offset 0x963428"
!SGMdOSEKInfo methodsFor: 'recovered'!
enableTicks
    | recoveredValue0 |
    recoveredValue0 := enableTicks.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066ec4; bytecode file offset 0x9646f8"
!SGMdOSEKInfo methodsFor: 'recovered'!
tickDuration
    | recoveredValue0 |
    recoveredValue0 := tickDuration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006812c; bytecode file offset 0x965b90"
!SGMdOSEKInfo methodsFor: 'recovered'!
isOsekRTAEnabled
    | recoveredValue0 |
    recoveredValue0 := osekRTA.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068544; bytecode file offset 0x965b90"
!SGMdOSEKInfo methodsFor: 'recovered'!
osekRTA
    | recoveredValue0 |
    recoveredValue0 := osekRTA.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be88c; bytecode file offset 0x9bb178"
!SGMdOSEKInfo methodsFor: 'recovered'!
enableTicks: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    enableTicks := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf508; bytecode file offset 0x9bc0b4"
!SGMdOSEKInfo methodsFor: 'recovered'!
tickDuration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tickDuration := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20151dd8; bytecode file offset 0xa4e694"
!SGMdOSEKInfo methodsFor: 'recovered'!
initialize
    super initialize.
    enableTicks := false.
    osekRTA := false.
    tickDuration := 0.
    ^self
! !

