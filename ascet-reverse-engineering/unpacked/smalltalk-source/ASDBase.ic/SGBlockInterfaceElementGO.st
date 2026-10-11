"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014d0c; bytecode file offset 0x912098"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
apiClass
    | recoveredValue0 |
    recoveredValue0 := EtasAPIBlockDiagramElementPin.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200224b4; bytecode file offset 0x92209c"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
methodName
    ^''
! !

"ASDBase.ic method 0x2002be84; bytecode file offset 0x934580"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
getMenu
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) manager.
    recoveredValue1 := (recoveredValue0) getMenu.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031a84; bytecode file offset 0x934580"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
updateConnectorPosition
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) manager.
    recoveredValue1 := (recoveredValue0) updateConnectorPosition.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033ee4; bytecode file offset 0x934580"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
startConnectionAllowed
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) manager.
    recoveredValue1 := (recoveredValue0) startConnectionAllowed.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035fb4; bytecode file offset 0x934580"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
endConnectionAllowed
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) manager.
    recoveredValue1 := (recoveredValue0) endConnectionAllowed.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036b44; bytecode file offset 0x934580"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
logicID
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getBlock.
    recoveredValue1 := (recoveredValue0) identifier.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041438; bytecode file offset 0x93dd2c"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
nameEditable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := manager.
    recoveredValue1 := (recoveredValue0) nameEditable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200425b8; bytecode file offset 0x93eeb8"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
isConnected
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := externalConnectorGO.
    recoveredValue1 := (recoveredValue0) isConnected.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200425c4; bytecode file offset 0x93eeb8"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
getPosition
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := externalConnectorGO.
    recoveredValue1 := (recoveredValue0) getPosition.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200425d0; bytecode file offset 0x93eeb8"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
identifier
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := externalConnectorGO.
    recoveredValue1 := (recoveredValue0) identifier.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200425dc; bytecode file offset 0x93eeb8"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
removeConnections
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := externalConnectorGO.
    recoveredValue1 := (recoveredValue0) removeConnections.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200425e8; bytecode file offset 0x93eeb8"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
connectedGOs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := externalConnectorGO.
    recoveredValue1 := (recoveredValue0) connectedGOs.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050af0; bytecode file offset 0x94d4ec"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
isMoveable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) manager.
    recoveredValue1 := (recoveredValue0) couldRepositionablePin: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20057cb8; bytecode file offset 0x956284"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
hasUnusedSeqCallVisitedConns: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) manager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) hasUnusedSeqCallVisitedConns: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005b8dc; bytecode file offset 0x958548"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
interfaceGOs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005d778; bytecode file offset 0x95a06c"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
isDisplaySelected
    | recoveredValue0 |
    recoveredValue0 := manager.
    (recoveredValue0) isDisplaySelected.
    ^self
! !

"ASDBase.ic method 0x2005d79c; bytecode file offset 0x95a06c"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
displaySelected
    | recoveredValue0 |
    recoveredValue0 := manager.
    (recoveredValue0) displaySelected.
    ^self
! !

"ASDBase.ic method 0x2005e1dc; bytecode file offset 0x95ab18"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
hasArgumentPin
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := externalConnectorGO.
    recoveredValue1 := (recoveredValue0) basicGraphObject.
    recoveredValue2 := (recoveredValue1) isArgumentPin.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005e1ec; bytecode file offset 0x95ab18"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
getCopyForChangeDisplayGOs
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := externalConnectorGO.
    recoveredValue1 := (recoveredValue0) basicGraphObject.
    recoveredValue2 := (recoveredValue1) getCopyForChangeDisplayGOs.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005e1fc; bytecode file offset 0x95ab18"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
isVisible
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := externalConnectorGO.
    recoveredValue1 := (recoveredValue0) basicGraphObject.
    recoveredValue2 := (recoveredValue1) isVisible.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005e20c; bytecode file offset 0x95ab18"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
isModelVisible
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := externalConnectorGO.
    recoveredValue1 := (recoveredValue0) basicGraphObject.
    recoveredValue2 := (recoveredValue1) isModelVisible.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005e21c; bytecode file offset 0x95ab18"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
getDirection
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := externalConnectorGO.
    recoveredValue1 := (recoveredValue0) basicGraphObject.
    recoveredValue2 := (recoveredValue1) getDirection.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005e22c; bytecode file offset 0x95ab18"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
hasResultPin
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := externalConnectorGO.
    recoveredValue1 := (recoveredValue0) basicGraphObject.
    recoveredValue2 := (recoveredValue1) isResultPin.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005e23c; bytecode file offset 0x95ab18"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
isUserVisible
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := externalConnectorGO.
    recoveredValue1 := (recoveredValue0) basicGraphObject.
    recoveredValue2 := (recoveredValue1) isUserVisible.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005e24c; bytecode file offset 0x95ab18"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
externalIsSelectorPin
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := externalConnectorGO.
    recoveredValue1 := (recoveredValue0) basicGraphObject.
    recoveredValue2 := (recoveredValue1) isSelectorPin.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005e25c; bytecode file offset 0x95ab18"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
modelVisibility
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := externalConnectorGO.
    recoveredValue1 := (recoveredValue0) basicGraphObject.
    recoveredValue2 := (recoveredValue1) modelVisibility.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005ee6c; bytecode file offset 0x95b7f0"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
resetAllIdentifiers
    (self) identifier: (nil).
    ^self
! !

"ASDBase.ic method 0x2006f048; bytecode file offset 0x96bc1c"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
connectorAliasName
    | recoveredValue0 |
    recoveredValue0 := connectorAliasName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f508; bytecode file offset 0x96bf7c"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
getSelectFlag
    | recoveredValue0 |
    recoveredValue0 := selectFlag.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f878; bytecode file offset 0x96c1f4"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
getConnectorNameGO
    | recoveredValue0 |
    recoveredValue0 := connectorNameGO.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f988; bytecode file offset 0x96c42c"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
externalConnectorGO
    | recoveredValue0 |
    recoveredValue0 := externalConnectorGO.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f998; bytecode file offset 0x96c42c"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
getExternalConnectorGO
    | recoveredValue0 |
    recoveredValue0 := externalConnectorGO.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073658; bytecode file offset 0x970b34"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
getExtConnNameGO
    ^nil
! !

"ASDBase.ic method 0x200741a0; bytecode file offset 0x970b34"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
getInternalConnectorGO
    ^nil
! !

"ASDBase.ic method 0x20076cfc; bytecode file offset 0x9757c8"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
isInterfaceElement
    ^true
! !

"ASDBase.ic method 0x2007cc2c; bytecode file offset 0x97c330"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
isSelectorPort
    ^false
! !

"ASDBase.ic method 0x2007f12c; bytecode file offset 0x97c330"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
isHierarchyStateBIE
    ^false
! !

"ASDBase.ic method 0x200826a4; bytecode file offset 0x97ef5c"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
includesWrappedGO: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := externalConnectorGO.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includesWrappedGO: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008d768; bytecode file offset 0x98a0a4"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
setTypeIDBoolData
    (self) typeID: (1).
    ^self
! !

"ASDBase.ic method 0x2008d864; bytecode file offset 0x98a128"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
setTypeIDScalar
    (self) typeID: (2).
    ^self
! !

"ASDBase.ic method 0x20090dbc; bytecode file offset 0x98d690"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
updateFontActualNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) externalConnectorGO.
    recoveredValue1 := (recoveredValue0) basicGraphObject.
    (recoveredValue1) updateFontActualNames.
    ^self
! !

"ASDBase.ic method 0x200931c0; bytecode file offset 0x98fa9c"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
wrappedInComposedGO: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := externalConnectorGO.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) wrappedInComposedGO: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200931cc; bytecode file offset 0x98fa9c"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
identifier: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := externalConnectorGO.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) identifier: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200931d8; bytecode file offset 0x98fa9c"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
unwrappedFromComposedGO: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := externalConnectorGO.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) unwrappedFromComposedGO: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009a118; bytecode file offset 0x997194"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
checkBlockForElement: recoveredArg1 datamodelManager: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) manager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) checkBlockForElement: (recoveredValue1) datamodelManager: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a3004; bytecode file offset 0x99f8e0"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
visible: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := externalConnectorGO.
    recoveredValue1 := (recoveredValue0) basicGraphObject.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) visible: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200a3014; bytecode file offset 0x99f8e0"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
modelVisibility: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := externalConnectorGO.
    recoveredValue1 := (recoveredValue0) basicGraphObject.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) modelVisibility: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200a3024; bytecode file offset 0x99f8e0"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
userVisibility: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := externalConnectorGO.
    recoveredValue1 := (recoveredValue0) basicGraphObject.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) userVisibility: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ab1ac; bytecode file offset 0x9a7a98"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
moveTo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getBlock.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) moveInterfaceElement: (self) to: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b3144; bytecode file offset 0x9af9fc"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
setTypeIDBoolControl
    (self) typeID: (256).
    ^self
! !

"ASDBase.ic method 0x200b4e58; bytecode file offset 0x9b1714"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
isEnumData
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) typeID.
    recoveredValue1 := (recoveredValue0) bitAnd: (4).
    recoveredValue2 := (recoveredValue1) > (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b4fac; bytecode file offset 0x9b1868"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
isComplex
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) typeID.
    recoveredValue1 := (recoveredValue0) bitAnd: (8).
    recoveredValue2 := (recoveredValue1) = (8).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b50d4; bytecode file offset 0x9b1990"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
isComplexData
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) typeID.
    recoveredValue1 := (recoveredValue0) bitAnd: (16).
    recoveredValue2 := (recoveredValue1) = (16).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b9778; bytecode file offset 0x9b6064"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
moveDeltaByKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getPosition.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    (self) moveTo: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c4e78; bytecode file offset 0x9c1afc"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
dynamicTypeID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dynamicTypeID := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5620; bytecode file offset 0x9c1f64"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
typeID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    typeID := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c59fc; bytecode file offset 0x9c22c8"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
connectorAliasName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    connectorAliasName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5b80; bytecode file offset 0x9c25bc"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
setSelectFlag: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectFlag := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5ee0; bytecode file offset 0x9c2804"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
setConnectorNameGO: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    connectorNameGO := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c610c; bytecode file offset 0x9c29e8"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
setExternalConnectorGO: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    externalConnectorGO := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d065c; bytecode file offset 0x9cd3a0"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
isLiteralStringData
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Shikhar') == ('Call_65770').
    recoveredValue1 := (self) manager.
    recoveredValue2 := (recoveredValue1) isLiteralStringData.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d4a14; bytecode file offset 0x9d12d0"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
isBoolData
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) typeID.
    recoveredValue1 := (recoveredValue0) bitAnd: (511).
    recoveredValue2 := (recoveredValue1) == (1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d5508; bytecode file offset 0x9d1dc8"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
giveRedisplayRects
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super giveRedisplayRects.
    recoveredValue1 := externalConnectorGO.
    recoveredValue2 := (recoveredValue1) giveRedisplayRects.
    recoveredValue3 := (recoveredValue0) , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d78a0; bytecode file offset 0x9d415c"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
moveBasicTo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := externalConnectorGO.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) moveTo: (recoveredValue1).
    (self) updatePositionAndAlignForConnectorNameGO.
    ^self
! !

"ASDBase.ic method 0x200da6b4; bytecode file offset 0x9d7154"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
fitToRectangle: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) externalConnectorGO.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) fitToRectangle: (recoveredValue1).
    (self) updatePositionAndAlignForConnectorNameGO.
    ^self
! !

"ASDBase.ic method 0x200e4ce8; bytecode file offset 0x9e15a4"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
isBoolControl
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) typeID.
    recoveredValue1 := (recoveredValue0) bitAnd: (511).
    recoveredValue2 := (recoveredValue1) == (256).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e5ea0; bytecode file offset 0x9e275c"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
changeStarted
    | recoveredValue0 |
    super changeStarted.
    recoveredValue0 := externalConnectorGO.
    (recoveredValue0) changeStarted.
    ^self
! !

"ASDBase.ic method 0x200eaf64; bytecode file offset 0x9e7828"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
setDirectionToPrim: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) externalConnectorGO.
    recoveredValue1 := (recoveredValue0) basicGraphObject.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) setDirection: (recoveredValue2).
    (self) repositionConnectorNameGO.
    ^self
! !

"ASDBase.ic method 0x200ec540; bytecode file offset 0x9e8e14"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
fitToRaster: recoveredArg1 rectangle: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) externalConnectorGO.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) fitToRaster: (recoveredValue1) rectangle: (recoveredValue2).
    (self) updatePositionAndAlignForConnectorNameGO.
    ^self
! !

"ASDBase.ic method 0x20104644; bytecode file offset 0xa00fd0"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
nilVariables
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) with: ('manager') with: ('representedObject') with: ('internalConnectorGO').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20106478; bytecode file offset 0xa02d2c"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
typeID
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dynamicTypeID.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := dynamicTypeID.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := typeID.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20106810; bytecode file offset 0xa030cc"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
connNameVisible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := connectorNameGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := connectorNameGO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVisible.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201068e4; bytecode file offset 0xa031a0"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
externalIsArgument
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := externalConnectorGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isResultPin.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010cd4c; bytecode file offset 0xa09608"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
connNameVisible: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := connectorNameGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := connectorNameGO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) visible: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201168d8; bytecode file offset 0xa13198"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
updatePositionAndAlignForConnectorNameGO
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := connectorNameGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) externalConnectorGO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := connectorNameGO.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) updatePositionAndAlignForConnectorNameGO: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011e358; bytecode file offset 0xa1ac18"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
buildConnectorNameGO: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := externalConnectorGO.
    recoveredValue1 := (recoveredValue0) basicGraphObject.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) buildConnectorNameGO: (recoveredValue2).
    connectorNameGO := recoveredValue3.
    recoveredValue4 := connectorNameGO.
    (recoveredValue4) setManager: (self).
    ^self
! !

"ASDBase.ic method 0x2012a9b4; bytecode file offset 0xa27280"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
connectorName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := connectorNameGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := connectorNameGO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := connectorNameGO.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) getText.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012a9c4; bytecode file offset 0xa27280"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
getConnectorName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := connectorNameGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := connectorNameGO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := connectorNameGO.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) getText.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012a9e8; bytecode file offset 0xa272a8"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
repositionConnectorNameGO
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := connectorNameGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := externalConnectorGO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := connectorNameGO.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) repositionConnectorNameGO: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012f87c; bytecode file offset 0xa2c13c"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
initialize
    super initialize.
    selectFlag := false.
    (self) typeID: (0).
    ^self
! !

"ASDBase.ic method 0x2013ffc0; bytecode file offset 0xa3c888"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
updateFontFormalNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getConnectorNameGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) getConnectorNameGO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := FontNames.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) font.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) setFont: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014b460; bytecode file offset 0xa47d20"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
scale: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) getPosition.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) - (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue4) * (recoveredValue5).
    recoveredValue7 := (recoveredValue6) rounded.
    recoveredValue8 := (recoveredValue3) + (recoveredValue7).
    (self) moveBasicTo: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x2015ad44; bytecode file offset 0xa57608"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
setDirectionTo: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) externalConnectorGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDirection.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) setDirectionToPrim: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015ae04; bytecode file offset 0xa576bc"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
connectionPointFor: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := externalConnectorGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) connectionPointFor: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201647f8; bytecode file offset 0xa610b4"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
moveDelta: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := connectorNameGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := connectorNameGO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) moveDelta: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := externalConnectorGO.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) moveDelta: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20164820; bytecode file offset 0xa610e4"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
hideNames: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := connectorNameGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) connNameVisible: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := connectorNameGO.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) frame.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20166a50; bytecode file offset 0xa63360"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
mixingRule: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super mixingRule: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) externalConnectorGO.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) externalConnectorGO.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) mixingRule: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201707e4; bytecode file offset 0xa6d0a8"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
isGetSetMethod
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := SGReservedNames.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) getMethod.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) connectorName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) setMethod.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) connectorName.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20173874; bytecode file offset 0xa70168"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
getNameInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) connectorName.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    ^recoveredBlock5Value0
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := super getNameInfo.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2017444c; bytecode file offset 0xa70d08"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
connectorName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := connectorNameGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            connectorNameGO := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := connectorNameGO.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) setText: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20192448; bytecode file offset 0xa8ed10"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
showNames: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := connectorNameGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) connNameVisible: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := connectorNameGO.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) frame.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) repositionConnectorNameGO.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a56f8; bytecode file offset 0xaa2004"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
setExternalConnectorGoIsInStatementBlock: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) externalConnectorGO.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) asStatementBlockCallArgumentCollector.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) setExternalConnectorGO: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) externalConnectorGO.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) asCallArgumentCollector.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) setExternalConnectorGO: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cdaf4; bytecode file offset 0xaca3f0"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
unHighlightGODisplay: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) externalConnectorGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) unHighlightGODisplay: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) manager.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) frame.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) displayRects: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cdb1c; bytecode file offset 0xaca3f0"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
highlightGODisplay: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) externalConnectorGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) highlightGODisplay: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) manager.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) frame.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) displayRects: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d5b58; bytecode file offset 0xad2420"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
logicFrame
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := connectorNameGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := externalConnectorGO.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) logicFrame.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := connectorNameGO.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := (recoveredStack4) logicFrame.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) enclosingRectOf: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := externalConnectorGO.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) logicFrame.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d8a5c; bytecode file offset 0xad5320"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
displayOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := connectorNameGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := externalConnectorGO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVisible.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := connectorNameGO.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) displayOn: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := externalConnectorGO.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) displayOn: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020e9d0; bytecode file offset 0xb0b298"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
isBoolDataDatamodelManager: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeID.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBlock.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) externalConnectorGO.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBoolData: (recoveredStack1) datamodelManager: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeID.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20226fac; bytecode file offset 0xb23878"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
isConsistentForSGClass: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := SGReservedNames.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) getMethod.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) connectorName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := SGReservedNames.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) setMethod.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) connectorName.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) externalConnectorGO.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasNameIsConsistentForSGClass: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20236c04; bytecode file offset 0xb334d8"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
toggleConnNameVisibility
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) connNameVisible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) connNameVisible.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) connNameVisible: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := connectorNameGO.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) frame.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) displayOneRectSetModified: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) repositionConnectorNameGO.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := connectorNameGO.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) displayOn: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202cbbb8; bytecode file offset 0xbc8488"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
getOtherConnectedBlockInterfaceElement
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) externalConnectorGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) externalConnectorGO.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) connectionPoint.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) externalConnectorGO.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) connectionPoint.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) connectionWrappers.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) externalConnectorGO.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) opposedNode: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f623c; bytecode file offset 0xbf2b14"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
dynamicTypeID: recoveredArg1 datamodelManager: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (self) dynamicTypeID: (recoveredValue0).
    recoveredValue1 := (self) getBlock.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) propagateDynamicTypeID: (recoveredBlock11Value1) forInterfaceElement: (self).
    recoveredBlock11Value2
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    recoveredValue3 := (self) externalConnectorGO.
    recoveredValue4 := (recoveredValue3) connectedGOs.
    recoveredValue5 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 |
    recoveredBlock33Value0 := recoveredBlock33Arg1.
    recoveredBlock33Value1 := (recoveredBlock33Value0) basicGraphObject.
    recoveredBlock33Value2 := recoveredArg2.
    recoveredBlock33Value3 := (recoveredBlock33Value1) updateLineStyleDatamodelManager: (recoveredBlock33Value2).
    recoveredBlock33Value3
].
    (recoveredValue4) do: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20311edc; bytecode file offset 0xc0e7a4"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
getPointedGOFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBlock.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGHierarchyGO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := connectorNameGO.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := connectorNameGO.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPointedGOFor: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := externalConnectorGO.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPointedGOFor: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := externalConnectorGO.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204326d4; bytecode file offset 0xd2efc4"
!SGBlockInterfaceElementGO methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super printOn: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := externalConnectorGO.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'identifier: '.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := externalConnectorGO.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) identifier.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 'mod-visibility: '.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := externalConnectorGO.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) modelVisibility.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 'user-visibility: '.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := externalConnectorGO.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) userVisibility.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := connectorNameGO.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 101] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 'Connectorname: '.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := connectorNameGO.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := connectorNameGO.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 101.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := connectorNameGO.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

