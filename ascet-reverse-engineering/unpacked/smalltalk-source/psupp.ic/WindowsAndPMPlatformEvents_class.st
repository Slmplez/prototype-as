"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20009244; bytecode file offset 0x15cb60"
!WindowsAndPMPlatformEvents class methodsFor: 'recovered'!
postExiting
    | recoveredValue0 |
    recoveredValue0 := OSEventManager.
    (recoveredValue0) stopRun.
    ^self
! !

"psupp.ic method 0x20009264; bytecode file offset 0x15cb60"
!WindowsAndPMPlatformEvents class methodsFor: 'recovered'!
preStartUp
    | recoveredValue0 |
    recoveredValue0 := OSEventManager.
    (recoveredValue0) startRun.
    ^self
! !

"psupp.ic method 0x2001dfb8; bytecode file offset 0x171858"
!WindowsAndPMPlatformEvents class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeToNilClassVariable: ('HandleTable') inClassNamed: ('OSEventManager').
    ^self
! !

