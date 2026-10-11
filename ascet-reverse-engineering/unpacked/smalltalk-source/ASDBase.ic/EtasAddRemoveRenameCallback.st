"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20060938; bytecode file offset 0x95d388"
!EtasAddRemoveRenameCallback methodsFor: 'recovered'!
isActionDelete
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) action.
    recoveredValue1 := EtasActionDelete.
    recoveredValue2 := (recoveredValue0) equals: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200609ec; bytecode file offset 0x95d388"
!EtasAddRemoveRenameCallback methodsFor: 'recovered'!
isActionAdd
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) action.
    recoveredValue1 := EtasActionAdd.
    recoveredValue2 := (recoveredValue0) equals: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20060a78; bytecode file offset 0x95d388"
!EtasAddRemoveRenameCallback methodsFor: 'recovered'!
isActionRename
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) action.
    recoveredValue1 := EtasActionRename.
    recoveredValue2 := (recoveredValue0) equals: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20066804; bytecode file offset 0x963428"
!EtasAddRemoveRenameCallback methodsFor: 'recovered'!
action
    | recoveredValue0 |
    recoveredValue0 := action.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006722c; bytecode file offset 0x9646f8"
!EtasAddRemoveRenameCallback methodsFor: 'recovered'!
oldName
    | recoveredValue0 |
    recoveredValue0 := oldName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008904c; bytecode file offset 0x985bf8"
!EtasAddRemoveRenameCallback methodsFor: 'recovered'!
setActionAdd
    | recoveredValue0 |
    recoveredValue0 := EtasActionAdd.
    (self) action: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008920c; bytecode file offset 0x985bf8"
!EtasAddRemoveRenameCallback methodsFor: 'recovered'!
setActionDelete
    | recoveredValue0 |
    recoveredValue0 := EtasActionDelete.
    (self) action: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20096270; bytecode file offset 0x992bec"
!EtasAddRemoveRenameCallback methodsFor: 'recovered'!
takeOverActionFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) action.
    (self) action: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200be74c; bytecode file offset 0x9bb178"
!EtasAddRemoveRenameCallback methodsFor: 'recovered'!
action: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    action := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf118; bytecode file offset 0x9bc0b4"
!EtasAddRemoveRenameCallback methodsFor: 'recovered'!
oldName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    oldName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d66d0; bytecode file offset 0x9d3134"
!EtasAddRemoveRenameCallback methodsFor: 'recovered'!
initialize
    super initialize.
    (self) setActionAdd.
    ^self
! !

"ASDBase.ic method 0x200e6e64; bytecode file offset 0x9e3724"
!EtasAddRemoveRenameCallback methodsFor: 'recovered'!
setActionRename: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EtasActionRename.
    (self) action: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) oldName: (recoveredValue1).
    ^self
! !

