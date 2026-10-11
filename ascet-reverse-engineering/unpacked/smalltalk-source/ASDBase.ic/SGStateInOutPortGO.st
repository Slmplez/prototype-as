"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200020c0; bytecode file offset 0x8ffcfc"
!SGStateInOutPortGO methodsFor: 'recovered'!
updatePin
    ^self
! !

"ASDBase.ic method 0x20002698; bytecode file offset 0x8ffcfc"
!SGStateInOutPortGO methodsFor: 'recovered'!
resetDynamic
    ^self
! !

"ASDBase.ic method 0x20013a4c; bytecode file offset 0x912098"
!SGStateInOutPortGO methodsFor: 'recovered'!
apiClass
    | recoveredValue0 |
    recoveredValue0 := EtasAPIStateMachinePin.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015204; bytecode file offset 0x912098"
!SGStateInOutPortGO methodsFor: 'recovered'!
inOutGODBClass
    | recoveredValue0 |
    recoveredValue0 := SGStateInOutPortGODB.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074da4; bytecode file offset 0x9757c8"
!SGStateInOutPortGO methodsFor: 'recovered'!
actionForTransitionPossible
    ^true
! !

"ASDBase.ic method 0x20076084; bytecode file offset 0x9757c8"
!SGStateInOutPortGO methodsFor: 'recovered'!
supportsAction2
    ^true
! !

"ASDBase.ic method 0x20076ccc; bytecode file offset 0x9757c8"
!SGStateInOutPortGO methodsFor: 'recovered'!
supportsAction3
    ^true
! !

"ASDBase.ic method 0x200770e4; bytecode file offset 0x9757c8"
!SGStateInOutPortGO methodsFor: 'recovered'!
supportsAction1
    ^true
! !

"ASDBase.ic method 0x20078514; bytecode file offset 0x9757c8"
!SGStateInOutPortGO methodsFor: 'recovered'!
defaultTriggerDesired
    ^true
! !

"ASDBase.ic method 0x200d64f0; bytecode file offset 0x9d3134"
!SGStateInOutPortGO methodsFor: 'recovered'!
connNameChanged
    super connNameChanged.
    (self) updateConnectorPosition.
    ^self
! !

"ASDBase.ic method 0x200ea1cc; bytecode file offset 0x9e6c94"
!SGStateInOutPortGO methodsFor: 'recovered'!
moveDelta: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super moveDelta: (recoveredValue0).
    (self) updateConnectorPosition.
    ^self
! !

"ASDBase.ic method 0x200ea1f4; bytecode file offset 0x9e6c94"
!SGStateInOutPortGO methodsFor: 'recovered'!
fitToRaster: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super fitToRaster: (recoveredValue0).
    (self) updateConnectorPosition.
    ^self
! !

"ASDBase.ic method 0x200ea348; bytecode file offset 0x9e6c94"
!SGStateInOutPortGO methodsFor: 'recovered'!
moveTo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super moveTo: (recoveredValue0).
    (self) updateConnectorPosition.
    ^self
! !

"ASDBase.ic method 0x201498f8; bytecode file offset 0xa461cc"
!SGStateInOutPortGO methodsFor: 'recovered'!
endConnectionAllowed
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := interfaceElementGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) externalConnectorGO.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isConnected.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isStartConnector.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014990c; bytecode file offset 0xa461cc"
!SGStateInOutPortGO methodsFor: 'recovered'!
startConnectionAllowed
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := interfaceElementGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) externalConnectorGO.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isConnected.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEndConnector.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014eadc; bytecode file offset 0xa4b3a0"
!SGStateInOutPortGO methodsFor: 'recovered'!
initExtent
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) interfaceElementGO.
    recoveredValue1 := (recoveredValue0) connNameExtent.
    recoveredValue2 := (recoveredValue1) // (2).
    recoveredValue3 := (3) @ (2).
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    (self) extent: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20274908; bytecode file offset 0xb71214"
!SGStateInOutPortGO methodsFor: 'recovered'!
updateConnectorPosition
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) externalConnectorGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isConnected.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) externalConnectorGO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) connectedGOs.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) connectionPoint.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) position.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDynamicStateConnectorDirectionPointFor: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) specialFrame.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) nearestPointOnRect: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) externalConnectorGO.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) moveTo: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2027ca80; bytecode file offset 0xb79358"
!SGStateInOutPortGO methodsFor: 'recovered'!
displayColl
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) specialFrame.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) topRight.
    (recoveredValue4) add: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) topLeft.
    (recoveredValue7) add: (recoveredValue9).
    recoveredValue10 := recoveredValue3.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue11) bottomLeft.
    (recoveredValue10) add: (recoveredValue12).
    recoveredValue13 := recoveredValue3.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (recoveredValue14) bottomRight.
    (recoveredValue13) add: (recoveredValue15).
    recoveredValue16 := recoveredLocal2.
    recoveredValue17 := (recoveredValue16) first.
    (recoveredValue3) add: (recoveredValue17).
    recoveredValue18 := recoveredLocal2.
    ^recoveredValue18
! !

"ASDBase.ic method 0x20301024; bytecode file offset 0xbfd910"
!SGStateInOutPortGO methodsFor: 'recovered'!
initAt: recoveredArg1 interfaceElementGO: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg2.
    interfaceElementGO := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    (self) setPosition: (recoveredValue1).
    selectFlag := false.
    (self) initExtent.
    recoveredValue2 := SGBlockInterfaceElementGO.
    recoveredValue3 := (self) lineStyle.
    recoveredValue4 := (recoveredValue2) createWithLineStyle: (recoveredValue3) manager: (self).
    recoveredValue5 := recoveredValue4.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredValue4.
    (recoveredValue6) setConnectorNameGO: ('get').
    recoveredValue7 := SGStateConnectorGO.
    recoveredValue8 := (recoveredValue7) new.
    recoveredValue9 := (self) getPosition.
    recoveredValue10 := PinLength.
    recoveredValue11 := lineStyle.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue8) initAt: (recoveredValue9) direction: ('down') length: (recoveredValue10) lineStyle: (recoveredValue11) manager: (recoveredValue12).
    (recoveredValue4) setExternalConnectorGO: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    connectorGO := recoveredValue14.
    ^self
! !

