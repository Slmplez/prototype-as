"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002b38; bytecode file offset 0x8ffcfc"
!SGBlockInterfaceGO methodsFor: 'recovered'!
repositionSequenceCall
    ^self
! !

"ASDBase.ic method 0x20004580; bytecode file offset 0x90206c"
!SGBlockInterfaceGO methodsFor: 'recovered'!
prepareForReplaceWith: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2002489c; bytecode file offset 0x92209c"
!SGBlockInterfaceGO methodsFor: 'recovered'!
connectionPoints
    ^#()
! !

"ASDBase.ic method 0x20036ab4; bytecode file offset 0x934580"
!SGBlockInterfaceGO methodsFor: 'recovered'!
hasEditableLayout
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) manager.
    recoveredValue1 := (recoveredValue0) hasEditableLayout.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005d830; bytecode file offset 0x95a15c"
!SGBlockInterfaceGO methodsFor: 'recovered'!
getBlock
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := manager.
    recoveredValue1 := (recoveredValue0) basicGraphObject.
    recoveredValue2 := (recoveredValue1) getBlock.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d850; bytecode file offset 0x95a15c"
!SGBlockInterfaceGO methodsFor: 'recovered'!
getBasicBlock
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := manager.
    recoveredValue1 := (recoveredValue0) basicGraphObject.
    recoveredValue2 := (recoveredValue1) getBasicBlock.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20073550; bytecode file offset 0x970b34"
!SGBlockInterfaceGO methodsFor: 'recovered'!
getSGCallGO
    ^nil
! !

"ASDBase.ic method 0x20073ad8; bytecode file offset 0x970b34"
!SGBlockInterfaceGO methodsFor: 'recovered'!
oppHierNode
    ^nil
! !

"ASDBase.ic method 0x20079504; bytecode file offset 0x97c330"
!SGBlockInterfaceGO methodsFor: 'recovered'!
isMissingPort
    ^false
! !

"ASDBase.ic method 0x20079a4c; bytecode file offset 0x97c330"
!SGBlockInterfaceGO methodsFor: 'recovered'!
isReturnPort
    ^false
! !

"ASDBase.ic method 0x20079db4; bytecode file offset 0x97c330"
!SGBlockInterfaceGO methodsFor: 'recovered'!
isDirectAccess
    ^false
! !

"ASDBase.ic method 0x2007ba34; bytecode file offset 0x97c330"
!SGBlockInterfaceGO methodsFor: 'recovered'!
isInternalBlockInterface
    ^false
! !

"ASDBase.ic method 0x2007f784; bytecode file offset 0x97c330"
!SGBlockInterfaceGO methodsFor: 'recovered'!
isHierarchyBlockInterface
    ^false
! !

"ASDBase.ic method 0x2020a0ac; bytecode file offset 0xb069c0"
!SGBlockInterfaceGO methodsFor: 'recovered'!
getReadOnlyMenu
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := CwMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) title: ('Block Interface').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) owner: (self).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (self) manager.
    recoveredValue7 := (recoveredValue6) isDisplayedSelected.
    (recoveredValue5) add: ('displaySelected') label: ('Select Complete ~Port') enable: (true) toggle: (recoveredValue7).
    ^recoveredValue2
! !

