"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016514; bytecode file offset 0x92209c"
!ASAP2OverlayConfigTab class methodsFor: 'recovered'!
members
    ^#('version' 'startAddress' 'maxLength' 'autostartBehavior')
! !

"ASDBase.ic method 0x2002435c; bytecode file offset 0x92209c"
!ASAP2OverlayConfigTab class methodsFor: 'recovered'!
keyWord
    ^'OVERLAY_CONFIG_TABLE'
! !

"ASDBase.ic method 0x20072cf0; bytecode file offset 0x96f6d4"
!ASAP2OverlayConfigTab class methodsFor: 'recovered'!
fixedSize
    ^4
! !

"ASDBase.ic method 0x201f94ac; bytecode file offset 0xaf5d84"
!ASAP2OverlayConfigTab class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    (recoveredValue0) at: ('AUTOSTART_BEHAVIOR') put: ('getAutostartBehavior:').
    recoveredValue1 := options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('AUTOSTART_BEHAVIOR') value: ('putIn:autostartBehavior:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !

