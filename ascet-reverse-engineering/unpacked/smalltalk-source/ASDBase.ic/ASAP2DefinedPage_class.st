"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200025e8; bytecode file offset 0x8ffcfc"
!ASAP2DefinedPage class methodsFor: 'recovered'!
genConstants
    ^self
! !

"ASDBase.ic method 0x2001af78; bytecode file offset 0x92209c"
!ASAP2DefinedPage class methodsFor: 'recovered'!
keyWord
    ^'DEFINED_PAGES'
! !

"ASDBase.ic method 0x2001c904; bytecode file offset 0x92209c"
!ASAP2DefinedPage class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'logicalNumber:' 'address:' 'addressExtension:' 'length:' 'state:')
! !

"ASDBase.ic method 0x200b60f8; bytecode file offset 0x9b39ac"
!ASAP2DefinedPage class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('logicalNumber' 'address' 'addressExtension' 'length' 'state')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b764c; bytecode file offset 0x9b3f08"
!ASAP2DefinedPage class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (6).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2051d2a0; bytecode file offset 0xe19be4"
!ASAP2DefinedPage class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('RAM') put: ('getRam:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('ROM') put: ('getRom:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('FLASH') put: ('getFlash:').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('EEPROM') put: ('getEEprom:').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) at: ('RAM_INIT_BY_ECU') put: ('getRamInitByEcu:').
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) at: ('RAM_INIT_BY_TOOL') put: ('getRamInitByTool:').
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) at: ('AUTO_FLASH_BACK') put: ('getAutoFlashBack:').
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) at: ('FLASH_BACK') put: ('getFlashBack:').
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) at: ('DEFAULT') put: ('getDefault:').
    (recoveredValue0) at: ('NO_FLASH_BACK') put: ('getNoFlashBack:').
    recoveredValue10 := options.
    recoveredValue11 := recoveredValue10.
    recoveredValue12 := Association.
    recoveredValue13 := (recoveredValue12) key: ('RAM') value: ('putIn:ram:').
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := recoveredValue10.
    recoveredValue15 := Association.
    recoveredValue16 := (recoveredValue15) key: ('ROM') value: ('putIn:rom:').
    (recoveredValue14) add: (recoveredValue16).
    recoveredValue17 := recoveredValue10.
    recoveredValue18 := Association.
    recoveredValue19 := (recoveredValue18) key: ('FLASH') value: ('putIn:flash:').
    (recoveredValue17) add: (recoveredValue19).
    recoveredValue20 := recoveredValue10.
    recoveredValue21 := Association.
    recoveredValue22 := (recoveredValue21) key: ('EEPROM') value: ('putIn:eEprom:').
    (recoveredValue20) add: (recoveredValue22).
    recoveredValue23 := recoveredValue10.
    recoveredValue24 := Association.
    recoveredValue25 := (recoveredValue24) key: ('RAM_INIT_BY_ECU') value: ('putIn:ramInitByEcu:').
    (recoveredValue23) add: (recoveredValue25).
    recoveredValue26 := recoveredValue10.
    recoveredValue27 := Association.
    recoveredValue28 := (recoveredValue27) key: ('RAM_INIT_BY_TOOL') value: ('putIn:ramInitByTool:').
    (recoveredValue26) add: (recoveredValue28).
    recoveredValue29 := recoveredValue10.
    recoveredValue30 := Association.
    recoveredValue31 := (recoveredValue30) key: ('AUTO_FLASH_BACK') value: ('putIn:autoFlashBack:').
    (recoveredValue29) add: (recoveredValue31).
    recoveredValue32 := recoveredValue10.
    recoveredValue33 := Association.
    recoveredValue34 := (recoveredValue33) key: ('FLASH_BACK') value: ('putIn:flashBack:').
    (recoveredValue32) add: (recoveredValue34).
    recoveredValue35 := recoveredValue10.
    recoveredValue36 := Association.
    recoveredValue37 := (recoveredValue36) key: ('DEFAULT') value: ('putIn:default:').
    (recoveredValue35) add: (recoveredValue37).
    recoveredValue38 := Association.
    recoveredValue39 := (recoveredValue38) key: ('NO_FLASH_BACK') value: ('putIn:noFlashBack:').
    (recoveredValue10) add: (recoveredValue39).
    ^self
! !

