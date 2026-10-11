"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007178; bytecode file offset 0x908be4"
!SGNavigationNode methodsFor: 'recovered'!
visualChildrenForSequenceCallSection
    | recoveredValue0 |
    recoveredValue0 := (self) children.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a70c; bytecode file offset 0x908be4"
!SGNavigationNode methodsFor: 'recovered'!
ownerGO
    | recoveredValue0 |
    recoveredValue0 := (self) parent.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000bc30; bytecode file offset 0x908be4"
!SGNavigationNode methodsFor: 'recovered'!
manager
    | recoveredValue0 |
    recoveredValue0 := (self) parent.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002d574; bytecode file offset 0x934580"
!SGNavigationNode methodsFor: 'recovered'!
getHierarchyWrapper
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) parent.
    recoveredValue1 := (recoveredValue0) getHierarchyWrapper.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003eca8; bytecode file offset 0x93bf94"
!SGNavigationNode methodsFor: 'recovered'!
visualChildrenForGraphicBlockSection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006eaa8; bytecode file offset 0x96b41c"
!SGNavigationNode methodsFor: 'recovered'!
parent
    | recoveredValue0 |
    recoveredValue0 := parent.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006eedc; bytecode file offset 0x96b8a0"
!SGNavigationNode methodsFor: 'recovered'!
children
    | recoveredValue0 |
    recoveredValue0 := children.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076c8c; bytecode file offset 0x9757c8"
!SGNavigationNode methodsFor: 'recovered'!
isNavigationNode
    ^true
! !

"ASDBase.ic method 0x200c4f10; bytecode file offset 0x9c1afc"
!SGNavigationNode methodsFor: 'recovered'!
parent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parent := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c52a8; bytecode file offset 0x9c1f64"
!SGNavigationNode methodsFor: 'recovered'!
children: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    children := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c91b0; bytecode file offset 0x9c5a6c"
!SGNavigationNode methodsFor: 'recovered'!
changeToActiveState: recoveredArg1 display: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) parent.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) parent.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue1) changeToActiveState: (recoveredValue3) display: (recoveredValue4).
    ^recoveredValue5
! !

