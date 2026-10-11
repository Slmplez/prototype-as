"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20026680; bytecode file offset 0x923928"
!ASAP2EtkTPBlob class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'bytes:' 'version:' 'projectBaseAddress:' 'resetCfgParameter:' 'displayTableConfig:' 'codeCheck:' 'etkConfig:' 'emuData:' 'emuCode:' 'emuRam:' 'reserved:' 'etkMailbox:' 'reservedDistabMemory:' 'etkPresenceCheck:')
! !

"ASDBase.ic method 0x200b6410; bytecode file offset 0x9b39ac"
!ASAP2EtkTPBlob class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('version' 'projectBaseAddress' 'resetCfgParameter' 'displayTableConfig' 'codeCheck' 'etkConfig' 'emuData' 'emuCode' 'emuRam' 'reserved' 'etkMailbox' 'reservedDistabMemory' 'etkPresenceCheck' 'interfaceSpeed' 'coldstartHandshake' 'overlayConfigTable' 'calWakeup' 'pageSwitchMethod')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b77a0; bytecode file offset 0x9b408c"
!ASAP2EtkTPBlob class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (18).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2058f8fc; bytecode file offset 0xe8c280"
!ASAP2EtkTPBlob class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('DISTAB_CFG') put: ('getDisplayTableConfig:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('CODE_CHK') put: ('getCodeCheck:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('ETK_CFG') put: ('getEtkConfig:').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('EMU_DATA') put: ('getEmuData:').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) at: ('EMU_CODE') put: ('getEmuCode:').
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) at: ('EMU_RAM') put: ('getEmuRam:').
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) at: ('ETK_MAILBOX') put: ('getEtkMailbox:').
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) at: ('RESERVED') put: ('getReserved:').
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) at: ('RESERVED_DISTAB_MEMORY') put: ('getReservedDistabMemory:').
    recoveredValue10 := recoveredValue0.
    (recoveredValue10) at: ('ETK_PRESENCE_CHECK') put: ('getEtkPresenceCheck:').
    recoveredValue11 := recoveredValue0.
    (recoveredValue11) at: ('COLDSTART_HANDSHAKE') put: ('getColdstartHandshake:').
    recoveredValue12 := recoveredValue0.
    (recoveredValue12) at: ('OVERLAY_CONFIG_TABLE') put: ('getOverlayConfigTable:').
    recoveredValue13 := recoveredValue0.
    (recoveredValue13) at: ('EXRAM') put: ('getExRam:').
    recoveredValue14 := recoveredValue0.
    (recoveredValue14) at: ('CAL_WAKEUP') put: ('getCalWakeup:').
    recoveredValue15 := recoveredValue0.
    (recoveredValue15) at: ('PAGE_SWITCH_METHOD') put: ('getPageSwitchMethod:').
    recoveredValue16 := (self) options.
    recoveredValue17 := recoveredValue16.
    recoveredValue18 := Association.
    recoveredValue19 := (recoveredValue18) key: ('DISTAB_CFG') value: ('putIn:displayTableConfig:').
    (recoveredValue17) add: (recoveredValue19).
    recoveredValue20 := recoveredValue16.
    recoveredValue21 := Association.
    recoveredValue22 := (recoveredValue21) key: ('CODE_CHK') value: ('putIn:codeCheck:').
    (recoveredValue20) add: (recoveredValue22).
    recoveredValue23 := recoveredValue16.
    recoveredValue24 := Association.
    recoveredValue25 := (recoveredValue24) key: ('ETK_CFG') value: ('putIn:etkConfig:').
    (recoveredValue23) add: (recoveredValue25).
    recoveredValue26 := recoveredValue16.
    recoveredValue27 := Association.
    recoveredValue28 := (recoveredValue27) key: ('EMU_DATA') value: ('putIn:emuData:').
    (recoveredValue26) add: (recoveredValue28).
    recoveredValue29 := recoveredValue16.
    recoveredValue30 := Association.
    recoveredValue31 := (recoveredValue30) key: ('EMU_CODE') value: ('putIn:emuCode:').
    (recoveredValue29) add: (recoveredValue31).
    recoveredValue32 := recoveredValue16.
    recoveredValue33 := Association.
    recoveredValue34 := (recoveredValue33) key: ('EMU_RAM') value: ('putIn:emuRam:').
    (recoveredValue32) add: (recoveredValue34).
    recoveredValue35 := recoveredValue16.
    recoveredValue36 := Association.
    recoveredValue37 := (recoveredValue36) key: ('ETK_MAILBOX') value: ('putIn:etkMailbox:').
    (recoveredValue35) add: (recoveredValue37).
    recoveredValue38 := recoveredValue16.
    recoveredValue39 := Association.
    recoveredValue40 := (recoveredValue39) key: ('RESERVED') value: ('putIn:reserved:').
    (recoveredValue38) add: (recoveredValue40).
    recoveredValue41 := recoveredValue16.
    recoveredValue42 := Association.
    recoveredValue43 := (recoveredValue42) key: ('RESERVED_DISTAB_MEMORY') value: ('putIn:reservedDistabMemory:').
    (recoveredValue41) add: (recoveredValue43).
    recoveredValue44 := recoveredValue16.
    recoveredValue45 := Association.
    recoveredValue46 := (recoveredValue45) key: ('ETK_PRESENCE_CHECK') value: ('putIn:etkPresenceCheck:').
    (recoveredValue44) add: (recoveredValue46).
    recoveredValue47 := recoveredValue16.
    recoveredValue48 := Association.
    recoveredValue49 := (recoveredValue48) key: ('OVERLAY_CONFIG_TABLE') value: ('putIn:overlayConfigTable:').
    (recoveredValue47) add: (recoveredValue49).
    recoveredValue50 := recoveredValue16.
    recoveredValue51 := Association.
    recoveredValue52 := (recoveredValue51) key: ('COLDSTART_HANDSHAKE') value: ('putIn:coldstartHandshake:').
    (recoveredValue50) add: (recoveredValue52).
    recoveredValue53 := recoveredValue16.
    recoveredValue54 := Association.
    recoveredValue55 := (recoveredValue54) key: ('CAL_WAKEUP') value: ('putIn:calWakeup:').
    (recoveredValue53) add: (recoveredValue55).
    recoveredValue56 := recoveredValue16.
    recoveredValue57 := Association.
    recoveredValue58 := (recoveredValue57) key: ('PAGE_SWITCH_METHOD') value: ('putIn:pageSwitchMethod:').
    (recoveredValue56) add: (recoveredValue58).
    ^self
! !

