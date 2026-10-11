"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016940; bytecode file offset 0x92209c"
!EtasRemoteIncaProjectItem methodsFor: 'recovered'!
iconName
    ^'IN32_PROJECT'
! !

"ASDBase.ic method 0x200b27c0; bytecode file offset 0x9af084"
!EtasRemoteIncaProjectItem methodsFor: 'recovered'!
icon
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) iconName.
    recoveredValue1 := ('GeneralOverlayCode') asString.
    recoveredValue2 := (self) returnIcon16: (recoveredValue0) overlayedWith: (recoveredValue1).
    ^recoveredValue2
! !

