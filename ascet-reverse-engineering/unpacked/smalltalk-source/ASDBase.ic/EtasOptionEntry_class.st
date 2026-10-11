"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002240; bytecode file offset 0x8ffcfc"
!EtasOptionEntry class methodsFor: 'recovered'!
initialize
    ^self
! !

"ASDBase.ic method 0x20036af4; bytecode file offset 0x934580"
!EtasOptionEntry class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x201491ac; bytecode file offset 0xa45a64"
!EtasOptionEntry class methodsFor: 'recovered'!
createOptionName: recoveredArg1 optionComment: recoveredArg2 optionEntryClass: recoveredArg3 iniFileEntry: recoveredArg4 sectionName: recoveredArg5 value: recoveredArg6 defaultValue: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := recoveredArg6.
    recoveredValue6 := recoveredArg7.
    recoveredValue7 := (self) createOptionName: (recoveredValue0) optionComment: (recoveredValue1) optionEntryClass: (recoveredValue2) iniFileEntry: (recoveredValue3) sectionName: (recoveredValue4) value: (recoveredValue5) defaultValue: (recoveredValue6) setToDefaultPossible: (true).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20236144; bytecode file offset 0xb32a18"
!EtasOptionEntry class methodsFor: 'recovered'!
createOptionName: recoveredArg1 optionComment: recoveredArg2 optionEntryClass: recoveredArg3 iniFileEntry: recoveredArg4 sectionName: recoveredArg5 value: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) optionName: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) optionComment: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) optionEntryClass: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg5.
    (recoveredValue7) optionGroup: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := recoveredArg4.
    (recoveredValue9) iniFileEntry: (recoveredValue10).
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := recoveredArg5.
    (recoveredValue11) iniFileSection: (recoveredValue12).
    recoveredValue13 := recoveredArg6.
    recoveredValue14 := (recoveredValue0) value: (recoveredValue13).
    ^recoveredValue14
! !

"ASDBase.ic method 0x202419f0; bytecode file offset 0xb3e2c4"
!EtasOptionEntry class methodsFor: 'recovered'!
createOptionName: recoveredArg1 optionComment: recoveredArg2 optionEntryClass: recoveredArg3 optionGroup: recoveredArg4 iniFileEntry: recoveredArg5 iniFileSection: recoveredArg6 value: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) optionName: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) optionComment: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) optionEntryClass: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg4.
    (recoveredValue7) optionGroup: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := recoveredArg5.
    (recoveredValue9) iniFileEntry: (recoveredValue10).
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := recoveredArg6.
    (recoveredValue11) iniFileSection: (recoveredValue12).
    recoveredValue13 := recoveredArg7.
    recoveredValue14 := (recoveredValue0) value: (recoveredValue13).
    ^recoveredValue14
! !

"ASDBase.ic method 0x202ac148; bytecode file offset 0xba8a24"
!EtasOptionEntry class methodsFor: 'recovered'!
createOptionName: recoveredArg1 optionComment: recoveredArg2 optionEntryClass: recoveredArg3 iniFileEntry: recoveredArg4 sectionName: recoveredArg5 value: recoveredArg6 defaultValue: recoveredArg7 setToDefaultPossible: recoveredArg8
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) optionName: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) optionComment: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) optionEntryClass: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg5.
    (recoveredValue7) optionGroup: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := recoveredArg4.
    (recoveredValue9) iniFileEntry: (recoveredValue10).
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := recoveredArg5.
    (recoveredValue11) iniFileSection: (recoveredValue12).
    recoveredValue13 := recoveredValue0.
    recoveredValue14 := recoveredArg6.
    (recoveredValue13) value: (recoveredValue14).
    recoveredValue15 := recoveredValue0.
    recoveredValue16 := recoveredArg7.
    (recoveredValue15) defaultValue: (recoveredValue16).
    recoveredValue17 := recoveredValue0.
    recoveredValue18 := recoveredArg8.
    (recoveredValue17) setToDefaultPossible: (recoveredValue18).
    ^recoveredValue0
! !

"ASDBase.ic method 0x202b6304; bytecode file offset 0xbb2be0"
!EtasOptionEntry class methodsFor: 'recovered'!
createOptionName: recoveredArg1 optionComment: recoveredArg2 optionEntryClass: recoveredArg3 optionGroup: recoveredArg4 iniFileEntry: recoveredArg5 iniFileSection: recoveredArg6 value: recoveredArg7 defaultValue: recoveredArg8 setToDefaultPossible: recoveredArg9
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) optionName: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) optionComment: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) optionEntryClass: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg4.
    (recoveredValue7) optionGroup: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := recoveredArg5.
    (recoveredValue9) iniFileEntry: (recoveredValue10).
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := recoveredArg6.
    (recoveredValue11) iniFileSection: (recoveredValue12).
    recoveredValue13 := recoveredValue0.
    recoveredValue14 := recoveredArg7.
    (recoveredValue13) value: (recoveredValue14).
    recoveredValue15 := recoveredValue0.
    recoveredValue16 := recoveredArg8.
    (recoveredValue15) defaultValue: (recoveredValue16).
    recoveredValue17 := recoveredValue0.
    recoveredValue18 := recoveredArg9.
    (recoveredValue17) setToDefaultPossible: (recoveredValue18).
    ^recoveredValue0
! !

