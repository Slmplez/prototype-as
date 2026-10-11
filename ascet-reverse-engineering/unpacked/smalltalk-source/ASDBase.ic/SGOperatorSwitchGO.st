"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200075ec; bytecode file offset 0x908be4"
!SGOperatorSwitchGO methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := (self) type.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20007994; bytecode file offset 0x908be4"
!SGOperatorSwitchGO methodsFor: 'recovered'!
menuInputAdd
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20007a00; bytecode file offset 0x908be4"
!SGOperatorSwitchGO methodsFor: 'recovered'!
isRemoveableFromLine
    | recoveredValue0 |
    recoveredValue0 := (self) isConnectedTwice.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008f00; bytecode file offset 0x908be4"
!SGOperatorSwitchGO methodsFor: 'recovered'!
bigFrame
    | recoveredValue0 |
    recoveredValue0 := (self) basicFrame.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000914c; bytecode file offset 0x908be4"
!SGOperatorSwitchGO methodsFor: 'recovered'!
returnPortGO
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a298; bytecode file offset 0x908be4"
!SGOperatorSwitchGO methodsFor: 'recovered'!
type
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a5ec; bytecode file offset 0x908be4"
!SGOperatorSwitchGO methodsFor: 'recovered'!
menuInputRemove
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000c278; bytecode file offset 0x908be4"
!SGOperatorSwitchGO methodsFor: 'recovered'!
visualCallBackString
    | recoveredValue0 |
    recoveredValue0 := (self) getPositionString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000c2e4; bytecode file offset 0x908be4"
!SGOperatorSwitchGO methodsFor: 'recovered'!
isInsertableInLine
    | recoveredValue0 |
    recoveredValue0 := (self) isUnconnected.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200130ec; bytecode file offset 0x912098"
!SGOperatorSwitchGO methodsFor: 'recovered'!
apiClass
    | recoveredValue0 |
    recoveredValue0 := EtasAPIBlockDiagramControl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001820c; bytecode file offset 0x92209c"
!SGOperatorSwitchGO methodsFor: 'recovered'!
nameForImplCast
    ^'impl_cast'
! !

"ASDBase.ic method 0x20018b00; bytecode file offset 0x92209c"
!SGOperatorSwitchGO methodsFor: 'recovered'!
menuLabelInputAdd
    ^'~Add Input'
! !

"ASDBase.ic method 0x2001e224; bytecode file offset 0x92209c"
!SGOperatorSwitchGO methodsFor: 'recovered'!
menuLabelInputRemove
    ^'~Remove Input'
! !

"ASDBase.ic method 0x20029d14; bytecode file offset 0x934580"
!SGOperatorSwitchGO methodsFor: 'recovered'!
getPosition
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) frameGO.
    recoveredValue1 := (recoveredValue0) getPosition.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20029e74; bytecode file offset 0x934580"
!SGOperatorSwitchGO methodsFor: 'recovered'!
hasTempVar
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) returnPortGO.
    recoveredValue1 := (recoveredValue0) hasTempVar.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030cd4; bytecode file offset 0x934580"
!SGOperatorSwitchGO methodsFor: 'recovered'!
toggleTempVar
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) returnPortGO.
    recoveredValue1 := (recoveredValue0) toggleTempVar.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037f20; bytecode file offset 0x9347d8"
!SGOperatorSwitchGO methodsFor: 'recovered'!
xAxisFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := PinDistance.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20057858; bytecode file offset 0x956284"
!SGOperatorSwitchGO methodsFor: 'recovered'!
tempVar: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) returnPortGO.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) tempVar: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d880; bytecode file offset 0x95a15c"
!SGOperatorSwitchGO methodsFor: 'recovered'!
userInterface
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := manager.
    recoveredValue1 := (recoveredValue0) owner.
    recoveredValue2 := (recoveredValue1) userInterface.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20065288; bytecode file offset 0x961b48"
!SGOperatorSwitchGO methodsFor: 'recovered'!
inputSize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) returnPortGO.
    recoveredValue1 := (recoveredValue0) interfaceGOs.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue2) + (-1).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200656c8; bytecode file offset 0x962104"
!SGOperatorSwitchGO methodsFor: 'recovered'!
getMenuGraphicalProg
    | recoveredValue0 |
    recoveredValue0 := super getMenu.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006feac; bytecode file offset 0x96c850"
!SGOperatorSwitchGO methodsFor: 'recovered'!
xAxis
    | recoveredValue0 |
    recoveredValue0 := xAxis.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070118; bytecode file offset 0x96cb7c"
!SGOperatorSwitchGO methodsFor: 'recovered'!
yAxis
    | recoveredValue0 |
    recoveredValue0 := yAxis.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070514; bytecode file offset 0x96ce40"
!SGOperatorSwitchGO methodsFor: 'recovered'!
opAliasName
    | recoveredValue0 |
    recoveredValue0 := opAliasName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200779ac; bytecode file offset 0x9757c8"
!SGOperatorSwitchGO methodsFor: 'recovered'!
isSGOperatorSwitchGO
    ^true
! !

"ASDBase.ic method 0x2007ad14; bytecode file offset 0x97c330"
!SGOperatorSwitchGO methodsFor: 'recovered'!
addImplementationCastPossible
    ^false
! !

"ASDBase.ic method 0x2007cc6c; bytecode file offset 0x97c330"
!SGOperatorSwitchGO methodsFor: 'recovered'!
sortPortSelectionList
    ^false
! !

"ASDBase.ic method 0x2007d634; bytecode file offset 0x97c330"
!SGOperatorSwitchGO methodsFor: 'recovered'!
isInputAddPossible
    ^false
! !

"ASDBase.ic method 0x2007e36c; bytecode file offset 0x97c330"
!SGOperatorSwitchGO methodsFor: 'recovered'!
isInputRemovePossible
    ^false
! !

"ASDBase.ic method 0x20087a34; bytecode file offset 0x9842f0"
!SGOperatorSwitchGO methodsFor: 'recovered'!
defaultSize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := PinDistance.
    recoveredValue1 := PinDistance.
    recoveredValue2 := (recoveredValue0) @ (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008bd14; bytecode file offset 0x9885cc"
!SGOperatorSwitchGO methodsFor: 'recovered'!
axis
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := xAxis.
    recoveredValue1 := yAxis.
    recoveredValue2 := (recoveredValue0) @ (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008bfd8; bytecode file offset 0x988b68"
!SGOperatorSwitchGO methodsFor: 'recovered'!
preShiftAvailable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) type.
    recoveredValue1 := (#('*' '/')) includes: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008c078; bytecode file offset 0x988b68"
!SGOperatorSwitchGO methodsFor: 'recovered'!
selectQuantizationAvailable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) type.
    recoveredValue1 := (#('+' '-' 'min' 'max' 'Else If' 'Case' 'Min' 'Max')) includes: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008c168; bytecode file offset 0x988b68"
!SGOperatorSwitchGO methodsFor: 'recovered'!
overflowHandlingAvailable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) type.
    recoveredValue1 := (#('+' '-' '*' '/')) includes: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008c2a8; bytecode file offset 0x988b68"
!SGOperatorSwitchGO methodsFor: 'recovered'!
allowZeroAvailable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) type.
    recoveredValue1 := (#('/')) includes: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008d720; bytecode file offset 0x989fd8"
!SGOperatorSwitchGO methodsFor: 'recovered'!
iconOffset
    | recoveredValue0 |
    recoveredValue0 := (1) @ (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200901a4; bytecode file offset 0x98ca60"
!SGOperatorSwitchGO methodsFor: 'recovered'!
initializeOpAliasName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) library.
    recoveredValue1 := (recoveredValue0) getNewOidBytes.
    opAliasName := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20090688; bytecode file offset 0x98d054"
!SGOperatorSwitchGO methodsFor: 'recovered'!
visualCallBackImage
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) mappingTable.
    recoveredValue2 := (self) type.
    recoveredValue3 := (recoveredValue1) keyAtValue: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009e010; bytecode file offset 0x99a8ec"
!SGOperatorSwitchGO methodsFor: 'recovered'!
growForMorePins
    (self) runtimeAssert: (false) additionalInfo: ('Method is not implemented').
    ^self
! !

"ASDBase.ic method 0x200c63dc; bytecode file offset 0x9c2dd0"
!SGOperatorSwitchGO methodsFor: 'recovered'!
xAxis: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xAxis := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c66c8; bytecode file offset 0x9c3164"
!SGOperatorSwitchGO methodsFor: 'recovered'!
yAxis: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    yAxis := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6afc; bytecode file offset 0x9c3470"
!SGOperatorSwitchGO methodsFor: 'recovered'!
opAliasName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    opAliasName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d9004; bytecode file offset 0x9d58bc"
!SGOperatorSwitchGO methodsFor: 'recovered'!
yAxisFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) + (1).
    recoveredValue2 := PinDistance.
    recoveredValue3 := (recoveredValue1) * (recoveredValue2).
    recoveredValue4 := (recoveredValue3) // (2).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e6514; bytecode file offset 0x9e2e24"
!SGOperatorSwitchGO methodsFor: 'recovered'!
changeStarted
    | recoveredValue0 |
    super changeStarted.
    recoveredValue0 := (self) frameGO.
    (recoveredValue0) changeStarted.
    ^self
! !

"ASDBase.ic method 0x20102ff0; bytecode file offset 0x9ff8dc"
!SGOperatorSwitchGO methodsFor: 'recovered'!
getCurrentImplementation
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBDEController.
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCurrentImplementation.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011c928; bytecode file offset 0xa191ec"
!SGOperatorSwitchGO methodsFor: 'recovered'!
initialize
    super initialize.
    (self) setSelectFlag: (false).
    (self) initializeOpAliasName.
    ^self
! !

"ASDBase.ic method 0x2011eb28; bytecode file offset 0xa1b3ec"
!SGOperatorSwitchGO methodsFor: 'recovered'!
initAxisFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) xAxisFor: (recoveredValue0).
    (self) xAxis: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) yAxisFor: (recoveredValue2).
    (self) yAxis: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201257c0; bytecode file offset 0xa2209c"
!SGOperatorSwitchGO methodsFor: 'recovered'!
giveRedisplayRects
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super giveRedisplayRects.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (self) frameGO.
    recoveredValue3 := (recoveredValue2) giveRedisplayRects.
    (recoveredValue1) addAll: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201372e4; bytecode file offset 0xa33ba4"
!SGOperatorSwitchGO methodsFor: 'recovered'!
implIsSpecified
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCurrentImplementation.
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) opAliasName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplementationForOperatorAliasName: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) notNil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201460d8; bytecode file offset 0xa42998"
!SGOperatorSwitchGO methodsFor: 'recovered'!
doubleClicked: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) operatorImplementationPossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) implIsSpecified.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) editImplementation.
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

"ASDBase.ic method 0x20186344; bytecode file offset 0xa82c08"
!SGOperatorSwitchGO methodsFor: 'recovered'!
moveTo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconGO.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) iconOffset.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) moveTo: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) moveTo: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ddd5c; bytecode file offset 0xada62c"
!SGOperatorSwitchGO methodsFor: 'recovered'!
resetImplementation
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCurrentImplementation.
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) opAliasName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) resetImplementationForOperatorAliasName: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) frameGO.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) frame.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) displayOneRect: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202066a4; bytecode file offset 0xb02f7c"
!SGOperatorSwitchGO methodsFor: 'recovered'!
buildIconGO
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) operatorIcons.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := RBIconGO.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) create16With: (recoveredStack2) name: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) iconGO: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022dfe8; bytecode file offset 0xb2a8b8"
!SGOperatorSwitchGO methodsFor: 'recovered'!
pinFrame
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := (self) axis.
    recoveredValue1 := (10) @ (10).
    recoveredValue2 := (recoveredValue0) roundTo: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) y.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := (self) iconGO.
    recoveredValue5 := (recoveredValue4) getPosition.
    recoveredValue6 := recoveredValue5.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := xAxis.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := (recoveredValue7) @ (recoveredValue8).
    recoveredValue10 := (recoveredValue5) - (recoveredValue9).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := xAxis.
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := (recoveredValue12) @ (recoveredValue13).
    recoveredValue15 := (recoveredValue11) + (recoveredValue14).
    recoveredValue16 := (recoveredValue10) corner: (recoveredValue15).
    ^recoveredValue16
! !

"ASDBase.ic method 0x2023ada8; bytecode file offset 0xb37734"
!SGOperatorSwitchGO methodsFor: 'recovered'!
createDefaultFrameGO
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := RBFrameGO.
    recoveredValue1 := DefaultGraphObjectPositionBlock.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := (self) axis.
    recoveredValue4 := (recoveredValue3) x.
    recoveredValue5 := (self) axis.
    recoveredValue6 := (recoveredValue5) y.
    recoveredValue7 := DefaultLineStyle.
    recoveredValue8 := (recoveredValue7) deepCopy.
    recoveredValue9 := DefinedBlockAreaStyle.
    recoveredValue10 := (recoveredValue9) deepCopy.
    recoveredValue11 := (recoveredValue0) createAt: (recoveredValue2) xAxis: (recoveredValue4) yAxis: (recoveredValue6) lineStyle: (recoveredValue8) areaStyle: (recoveredValue10) manager: (self).
    recoveredValue12 := (recoveredValue11) includesFlag: (true).
    (self) frameGO: (recoveredValue12).
    ^self
! !

"ASDBase.ic method 0x2025f8dc; bytecode file offset 0xb5c1a4"
!SGOperatorSwitchGO methodsFor: 'recovered'!
operatorImplementationPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) implIsSpecified.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) inputSize.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) overflowHandlingAvailable.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) preShiftAvailable.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectQuantizationAvailable.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20271a0c; bytecode file offset 0xb6e2dc"
!SGOperatorSwitchGO methodsFor: 'recovered'!
fitMyPartsToRaster: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super fitMyPartsToRaster: (recoveredValue0).
    recoveredValue1 := (self) frameGO.
    recoveredValue2 := (recoveredValue1) logicFrame.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) connectorGOs.
    recoveredValue4 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := recoveredArg1.
    recoveredBlock20Value2 := recoveredLocal1.
    recoveredBlock20Value3 := (recoveredBlock20Value0) fitToRaster: (recoveredBlock20Value1) rectangle: (recoveredBlock20Value2).
    recoveredBlock20Value3
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2029a900; bytecode file offset 0xb971ec"
!SGOperatorSwitchGO methodsFor: 'recovered'!
editImplementation
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Obsolete feature!!\'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Implementations for operators are no longer supported.\'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 'You can view the settings, but made changes will be of no effect.'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) addLineDelimiters.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) warning: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBDEController.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) editOperatorImplementation: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) frameGO.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) frame.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) displayOneRect: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2044014c; bytecode file offset 0xd3ca58"
!SGOperatorSwitchGO methodsFor: 'recovered'!
implementationSubMenu
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) owner: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := '~Implementation'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 'editImplementation'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := '~View'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock22Value0 |
    recoveredBlock22Value0 := (self) implIsSpecified.
    recoveredBlock22Value0
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'Call_70050'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'SGListOperatorImplementationsWindow'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) Inst.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := 'convertImplementation'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := '~Convert'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock65Value0 |
    recoveredBlock65Value0 := (self) implIsSpecified.
    recoveredBlock65Value0
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 'resetImplementation'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := '~Reset'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock83Value0 |
    recoveredBlock83Value0 := (self) implIsSpecified.
    recoveredBlock83Value0
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock93Value0 recoveredBlock93Value1 |
    recoveredBlock93Value0 := (self) implIsSpecified.
    recoveredBlock93Value1 := (recoveredBlock93Value0) not.
    recoveredBlock93Value1
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) toggle: (recoveredStack5).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2044de44; bytecode file offset 0xd4a750"
!SGOperatorSwitchGO methodsFor: 'recovered'!
getMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super getMenu.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) addSingleLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'changeFillColor'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := '~Fill Color...'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) for: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) addSingleLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'toggleTempVar'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := '~Temporary Variable'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock37Value0 recoveredBlock37Value1 |
    recoveredBlock37Value0 := (self) returnPortGO.
    recoveredBlock37Value1 := (recoveredBlock37Value0) notNil.
    recoveredBlock37Value1
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock48Value0 |
    recoveredBlock48Value0 := (self) hasTempVar.
    recoveredBlock48Value0
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) toggle: (recoveredStack5).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) appendAddRemoveInputEntries: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) addSingleLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'implementationSubMenu'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := '~Implementation'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock74Value0 |
    recoveredBlock74Value0 := (self) operatorImplementationPossible.
    recoveredBlock74Value0
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) addSubMenu: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) for: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) addSingleLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := 'menuImplementationCastAdd'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := '~Add Implementation Casts'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock94Value0 |
    recoveredBlock94Value0 := (self) addImplementationCastPossible.
    recoveredBlock94Value0
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) appendConnectedElementsMenu: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20560b50; bytecode file offset 0xe5d48c"
!SGOperatorSwitchGO methodsFor: 'recovered'!
displayOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) viewAsLine.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPosition.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceElementGOs.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 recoveredBlock24Value6 recoveredBlock24Value7 |
    recoveredBlock24Value0 := recoveredLocal1.
    recoveredBlock24Value1 := recoveredBlock24Arg1.
    recoveredBlock24Value2 := (recoveredBlock24Value1) externalConnectorGO.
    recoveredBlock24Value3 := (recoveredBlock24Value2) connectionPoint.
    recoveredBlock24Value4 := (recoveredBlock24Value3) position.
    (recoveredBlock24Value0) add: (recoveredBlock24Value4).
    recoveredBlock24Value5 := recoveredLocal1.
    recoveredBlock24Value6 := (self) getPosition.
    recoveredBlock24Value7 := (recoveredBlock24Value5) add: (recoveredBlock24Value6).
    recoveredBlock24Value7
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) lineStyle.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 73] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := RBLineStyle.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) lineStyle: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBooleanOperator.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := BoolDataLineStyle.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) lineStyle: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) setGC: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := CoordModeOrigin.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) drawLines: (recoveredStack1) points: (recoveredStack2) mode: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 232.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) displayOn: (recoveredStack1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconGO.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconGO.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) displayOn: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            super displayOn: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) implIsSpecified.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 232].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := (recoveredStack2) topLeft.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack3 := (recoveredStack3) top.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack4 := (recoveredStack4) left.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack5 := (recoveredStack5) topLeft.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack5 := (recoveredStack5) y.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) drawLine: (recoveredStack1) x1: (recoveredStack2) y1: (recoveredStack3) x2: (recoveredStack4) y2: (recoveredStack5).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205aec98; bytecode file offset 0xeab5f8"
!SGOperatorSwitchGO methodsFor: 'recovered'!
convertImplementation
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'SGListOperatorImplementationsWindow'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) Inst.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 306] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBDEController.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) specification.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAPIHandle.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) getAllDiagramElements.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAPIHandleForItem: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAllDBItems.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := [:block2811692cArg1 | 
    | block2811692cValue0 block2811692cValue1 block2811692cValue2 block2811692cValue3 block2811692cValue4 block2811692cValue5 block2811692cValue6 block2811692cValue7 |
    block2811692cValue0 := block2811692cArg1.
    block2811692cValue1 := (block2811692cValue0) isModuleBDE.
    block2811692cValue2 := block2811692cArg1.
    block2811692cValue3 := (block2811692cValue2) isClassBDE.
    block2811692cValue4 := (block2811692cValue1) or: (block2811692cValue3).
    block2811692cValue5 := block2811692cArg1.
    block2811692cValue6 := (block2811692cValue5) isStateMachine.
    block2811692cValue7 := (block2811692cValue4) or: (block2811692cValue6).
    block2811692cValue7
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := [:recoveredBlock90Arg1 :recoveredBlock90Arg2 | 
    | recoveredBlock90Local1 recoveredBlock90Stack0 recoveredBlock90Stack1 recoveredBlock90Stack2 recoveredBlock90Stack3 recoveredBlock90Stack4 recoveredBlock90Stack5 recoveredBlock90PC recoveredBlock90Step recoveredBlock90Done recoveredBlock90Result |
    recoveredBlock90Stack0 := self.
    recoveredBlock90PC := 96.
    recoveredBlock90Done := false.
    [recoveredBlock90Done not] whileTrue: [
        recoveredBlock90Step := recoveredBlock90PC.
        recoveredBlock90Step = 96 ifTrue: [
            recoveredBlock90Stack1 := nil.
            recoveredBlock90PC := 97.
        ].
        recoveredBlock90Step = 97 ifTrue: [
            recoveredBlock90Stack2 := recoveredBlock90Arg1.
            recoveredBlock90PC := 100.
        ].
        recoveredBlock90Step = 100 ifTrue: [
            recoveredBlock90Stack2 := (recoveredBlock90Stack2) item.
            recoveredBlock90PC := 102.
        ].
        recoveredBlock90Step = 102 ifTrue: [
            recoveredBlock90Stack2 := (recoveredBlock90Stack2) implementations.
            recoveredBlock90PC := 104.
        ].
        recoveredBlock90Step = 104 ifTrue: [
            recoveredBlock90Stack3 := [:block28116950Arg1 | 
    | block28116950Value0 block28116950Value1 block28116950Value2 block28116950Value3 |
    block28116950Value0 := block28116950Arg1.
    block28116950Value1 := (block28116950Value0) operatorImplementation.
    block28116950Value2 := (block28116950Value1) isEmpty.
    block28116950Value3 := (block28116950Value2) not.
    block28116950Value3
].
            recoveredBlock90PC := 106.
        ].
        recoveredBlock90Step = 106 ifTrue: [
            recoveredBlock90PC := 117.
        ].
        recoveredBlock90Step = 117 ifTrue: [
            recoveredBlock90Stack4 := [].
            recoveredBlock90PC := 119.
        ].
        recoveredBlock90Step = 119 ifTrue: [
            recoveredBlock90Stack2 := (recoveredBlock90Stack2) detect: (recoveredBlock90Stack3) ifNone: (recoveredBlock90Stack4).
            recoveredBlock90PC := 121.
        ].
        recoveredBlock90Step = 121 ifTrue: [
            (recoveredBlock90Stack2 == nil) ifTrue: [recoveredBlock90PC := 280] ifFalse: [recoveredBlock90PC := 124].
        ].
        recoveredBlock90Step = 124 ifTrue: [
            recoveredBlock90PC := 125.
        ].
        recoveredBlock90Step = 125 ifTrue: [
            recoveredBlock90Stack1 := recoveredBlock90Arg1.
            recoveredBlock90PC := 128.
        ].
        recoveredBlock90Step = 128 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) getAllDiagrams.
            recoveredBlock90PC := 130.
        ].
        recoveredBlock90Step = 130 ifTrue: [
            recoveredBlock90Stack2 := [:block28116974Arg1 | 
    | block28116974Value0 block28116974Value1 |
    block28116974Value0 := block28116974Arg1.
    block28116974Value1 := (block28116974Value0) isBlockDiagram.
    block28116974Value1
].
            recoveredBlock90PC := 132.
        ].
        recoveredBlock90Step = 132 ifTrue: [
            recoveredBlock90PC := 140.
        ].
        recoveredBlock90Step = 140 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) select: (recoveredBlock90Stack2).
            recoveredBlock90PC := 142.
        ].
        recoveredBlock90Step = 142 ifTrue: [
            recoveredBlock90Local1 := recoveredBlock90Stack1.
            recoveredBlock90PC := 145.
        ].
        recoveredBlock90Step = 145 ifTrue: [
            recoveredBlock90Stack1 := recoveredBlock90Local1.
            recoveredBlock90PC := 148.
        ].
        recoveredBlock90Step = 148 ifTrue: [
            recoveredBlock90Stack2 := [:recoveredBlock90Block148Arg1 | 
    | recoveredBlock90Block148Value0 recoveredBlock90Block148Value1 recoveredBlock90Block148Value2 recoveredBlock90Block148Value3 |
    recoveredBlock90Block148Value0 := recoveredBlock90Arg1.
    recoveredBlock90Block148Value1 := (recoveredBlock90Block148Value0) getAllImplementations.
    recoveredBlock90Block148Value2 := [:recoveredBlock90Block148Block159Arg1 | 
    | recoveredBlock90Block148Block159Local1 recoveredBlock90Block148Block159Stack0 recoveredBlock90Block148Block159Stack1 recoveredBlock90Block148Block159Stack2 recoveredBlock90Block148Block159Stack3 recoveredBlock90Block148Block159Stack4 recoveredBlock90Block148Block159PC recoveredBlock90Block148Block159Step recoveredBlock90Block148Block159Done recoveredBlock90Block148Block159Result |
    recoveredBlock90Block148Block159Stack0 := nil.
    recoveredBlock90Block148Block159PC := 166.
    recoveredBlock90Block148Block159Done := false.
    [recoveredBlock90Block148Block159Done not] whileTrue: [
        recoveredBlock90Block148Block159Step := recoveredBlock90Block148Block159PC.
        recoveredBlock90Block148Block159Step = 166 ifTrue: [
            recoveredBlock90Block148Block159Stack1 := nil.
            recoveredBlock90Block148Block159PC := 167.
        ].
        recoveredBlock90Block148Block159Step = 167 ifTrue: [
            recoveredBlock90Block148Block159Stack2 := recoveredBlock90Block148Arg1.
            recoveredBlock90Block148Block159PC := 170.
        ].
        recoveredBlock90Block148Block159Step = 170 ifTrue: [
            recoveredBlock90Block148Block159Stack3 := recoveredBlock90Block148Block159Arg1.
            recoveredBlock90Block148Block159PC := 173.
        ].
        recoveredBlock90Block148Block159Step = 173 ifTrue: [
            recoveredBlock90Block148Block159Stack2 := (recoveredBlock90Block148Block159Stack2) getOperatorsWithImplementationForImplConfig: (recoveredBlock90Block148Block159Stack3).
            recoveredBlock90Block148Block159PC := 175.
        ].
        recoveredBlock90Block148Block159Step = 175 ifTrue: [
            recoveredBlock90Block148Block159Stack3 := recoveredBlock90Block148Block159Stack2.
            recoveredBlock90Block148Block159PC := 176.
        ].
        recoveredBlock90Block148Block159Step = 176 ifTrue: [
            recoveredBlock90Block148Block159Local1 := recoveredBlock90Block148Block159Stack3.
            recoveredBlock90Block148Block159PC := 179.
        ].
        recoveredBlock90Block148Block159Step = 179 ifTrue: [
            recoveredBlock90Block148Block159Stack2 := (recoveredBlock90Block148Block159Stack2) isEmpty.
            recoveredBlock90Block148Block159PC := 181.
        ].
        recoveredBlock90Block148Block159Step = 181 ifTrue: [
            (recoveredBlock90Block148Block159Stack2) ifTrue: [recoveredBlock90Block148Block159PC := 274] ifFalse: [recoveredBlock90Block148Block159PC := 184].
        ].
        recoveredBlock90Block148Block159Step = 184 ifTrue: [
            recoveredBlock90Block148Block159PC := 185.
        ].
        recoveredBlock90Block148Block159Step = 185 ifTrue: [
            recoveredBlock90Block148Block159Stack1 := recoveredBlock90Block148Block159Local1.
            recoveredBlock90Block148Block159PC := 188.
        ].
        recoveredBlock90Block148Block159Step = 188 ifTrue: [
            recoveredBlock90Block148Block159Stack2 := [:recoveredBlock90Block148Block159Block188Arg1 | 
    | recoveredBlock90Block148Block159Block188Local1 recoveredBlock90Block148Block159Block188Local2 recoveredBlock90Block148Block159Block188Stack0 recoveredBlock90Block148Block159Block188Stack1 recoveredBlock90Block148Block159Block188Stack2 recoveredBlock90Block148Block159Block188Stack3 recoveredBlock90Block148Block159Block188Stack4 recoveredBlock90Block148Block159Block188Stack5 recoveredBlock90Block148Block159Block188PC recoveredBlock90Block148Block159Block188Step recoveredBlock90Block148Block159Block188Done recoveredBlock90Block148Block159Block188Result |
    recoveredBlock90Block148Block159Block188Stack0 := nil.
    recoveredBlock90Block148Block159Block188PC := 194.
    recoveredBlock90Block148Block159Block188Done := false.
    [recoveredBlock90Block148Block159Block188Done not] whileTrue: [
        recoveredBlock90Block148Block159Block188Step := recoveredBlock90Block148Block159Block188PC.
        recoveredBlock90Block148Block159Block188Step = 194 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack1 := nil.
            recoveredBlock90Block148Block159Block188PC := 195.
        ].
        recoveredBlock90Block148Block159Block188Step = 195 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack2 := recoveredBlock90Block148Block159Block188Arg1.
            recoveredBlock90Block148Block159Block188PC := 196.
        ].
        recoveredBlock90Block148Block159Block188Step = 196 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack2 := (recoveredBlock90Block148Block159Block188Stack2) diagramElement.
            recoveredBlock90Block148Block159Block188PC := 198.
        ].
        recoveredBlock90Block148Block159Block188Step = 198 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack2 := (recoveredBlock90Block148Block159Block188Stack2) opAliasName.
            recoveredBlock90Block148Block159Block188PC := 200.
        ].
        recoveredBlock90Block148Block159Block188Step = 200 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack3 := recoveredLocal6.
            recoveredBlock90Block148Block159Block188PC := 203.
        ].
        recoveredBlock90Block148Block159Block188Step = 203 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack3 := (recoveredBlock90Block148Block159Block188Stack3) diagramElement.
            recoveredBlock90Block148Block159Block188PC := 205.
        ].
        recoveredBlock90Block148Block159Block188Step = 205 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack3 := (recoveredBlock90Block148Block159Block188Stack3) opAliasName.
            recoveredBlock90Block148Block159Block188PC := 207.
        ].
        recoveredBlock90Block148Block159Block188Step = 207 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack2 := (recoveredBlock90Block148Block159Block188Stack2) equals: (recoveredBlock90Block148Block159Block188Stack3).
            recoveredBlock90Block148Block159Block188PC := 209.
        ].
        recoveredBlock90Block148Block159Block188Step = 209 ifTrue: [
            (recoveredBlock90Block148Block159Block188Stack2) ifTrue: [recoveredBlock90Block148Block159Block188PC := 212] ifFalse: [recoveredBlock90Block148Block159Block188PC := 271].
        ].
        recoveredBlock90Block148Block159Block188Step = 212 ifTrue: [
            recoveredBlock90Block148Block159Block188PC := 213.
        ].
        recoveredBlock90Block148Block159Block188Step = 213 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack1 := OrderedCollection.
            recoveredBlock90Block148Block159Block188PC := 215.
        ].
        recoveredBlock90Block148Block159Block188Step = 215 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack1 := (recoveredBlock90Block148Block159Block188Stack1) new.
            recoveredBlock90Block148Block159Block188PC := 217.
        ].
        recoveredBlock90Block148Block159Block188Step = 217 ifTrue: [
            recoveredBlock90Block148Block159Block188Local1 := recoveredBlock90Block148Block159Block188Stack1.
            recoveredBlock90Block148Block159Block188PC := 218.
        ].
        recoveredBlock90Block148Block159Block188Step = 218 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack1 := recoveredBlock90Block148Block159Block188Local1.
            recoveredBlock90Block148Block159Block188PC := 219.
        ].
        recoveredBlock90Block148Block159Block188Step = 219 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack2 := recoveredBlock90Block148Block159Block188Arg1.
            recoveredBlock90Block148Block159Block188PC := 220.
        ].
        recoveredBlock90Block148Block159Block188Step = 220 ifTrue: [
            (recoveredBlock90Block148Block159Block188Stack1) add: (recoveredBlock90Block148Block159Block188Stack2).
            recoveredBlock90Block148Block159Block188PC := 222.
        ].
        recoveredBlock90Block148Block159Block188Step = 222 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack1 := Array.
            recoveredBlock90Block148Block159Block188PC := 224.
        ].
        recoveredBlock90Block148Block159Block188Step = 224 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack2 := 4.
            recoveredBlock90Block148Block159Block188PC := 226.
        ].
        recoveredBlock90Block148Block159Block188Step = 226 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack1 := (recoveredBlock90Block148Block159Block188Stack1) new: (recoveredBlock90Block148Block159Block188Stack2).
            recoveredBlock90Block148Block159Block188PC := 228.
        ].
        recoveredBlock90Block148Block159Block188Step = 228 ifTrue: [
            recoveredBlock90Block148Block159Block188Local2 := recoveredBlock90Block148Block159Block188Stack1.
            recoveredBlock90Block148Block159Block188PC := 229.
        ].
        recoveredBlock90Block148Block159Block188Step = 229 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack1 := recoveredBlock90Block148Block159Block188Local2.
            recoveredBlock90Block148Block159Block188PC := 230.
        ].
        recoveredBlock90Block148Block159Block188Step = 230 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack2 := recoveredBlock90Block148Block159Block188Stack1.
            recoveredBlock90Block148Block159Block188PC := 231.
        ].
        recoveredBlock90Block148Block159Block188Step = 231 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack3 := 1.
            recoveredBlock90Block148Block159Block188PC := 233.
        ].
        recoveredBlock90Block148Block159Block188Step = 233 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack4 := recoveredBlock90Block148Arg1.
            recoveredBlock90Block148Block159Block188PC := 236.
        ].
        recoveredBlock90Block148Block159Block188Step = 236 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack4 := (recoveredBlock90Block148Block159Block188Stack4) getClass.
            recoveredBlock90Block148Block159Block188PC := 238.
        ].
        recoveredBlock90Block148Block159Block188Step = 238 ifTrue: [
            (recoveredBlock90Block148Block159Block188Stack2) at: (recoveredBlock90Block148Block159Block188Stack3) put: (recoveredBlock90Block148Block159Block188Stack4).
            recoveredBlock90Block148Block159Block188Stack2 := recoveredBlock90Block148Block159Block188Stack1.
            recoveredBlock90Block148Block159Block188PC := 241.
        ].
        recoveredBlock90Block148Block159Block188Step = 241 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack3 := 2.
            recoveredBlock90Block148Block159Block188PC := 243.
        ].
        recoveredBlock90Block148Block159Block188Step = 243 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack4 := recoveredBlock90Block148Block159Arg1.
            recoveredBlock90Block148Block159Block188PC := 246.
        ].
        recoveredBlock90Block148Block159Block188Step = 246 ifTrue: [
            (recoveredBlock90Block148Block159Block188Stack2) at: (recoveredBlock90Block148Block159Block188Stack3) put: (recoveredBlock90Block148Block159Block188Stack4).
            recoveredBlock90Block148Block159Block188Stack2 := recoveredBlock90Block148Block159Block188Stack1.
            recoveredBlock90Block148Block159Block188PC := 249.
        ].
        recoveredBlock90Block148Block159Block188Step = 249 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack3 := 3.
            recoveredBlock90Block148Block159Block188PC := 251.
        ].
        recoveredBlock90Block148Block159Block188Step = 251 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack4 := recoveredBlock90Block148Arg1.
            recoveredBlock90Block148Block159Block188PC := 254.
        ].
        recoveredBlock90Block148Block159Block188Step = 254 ifTrue: [
            (recoveredBlock90Block148Block159Block188Stack2) at: (recoveredBlock90Block148Block159Block188Stack3) put: (recoveredBlock90Block148Block159Block188Stack4).
            recoveredBlock90Block148Block159Block188PC := 256.
        ].
        recoveredBlock90Block148Block159Block188Step = 256 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack2 := 4.
            recoveredBlock90Block148Block159Block188PC := 258.
        ].
        recoveredBlock90Block148Block159Block188Step = 258 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack3 := recoveredBlock90Block148Block159Block188Local1.
            recoveredBlock90Block148Block159Block188PC := 259.
        ].
        recoveredBlock90Block148Block159Block188Step = 259 ifTrue: [
            (recoveredBlock90Block148Block159Block188Stack1) at: (recoveredBlock90Block148Block159Block188Stack2) put: (recoveredBlock90Block148Block159Block188Stack3).
            recoveredBlock90Block148Block159Block188PC := 261.
        ].
        recoveredBlock90Block148Block159Block188Step = 261 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack1 := recoveredLocal1.
            recoveredBlock90Block148Block159Block188PC := 264.
        ].
        recoveredBlock90Block148Block159Block188Step = 264 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack2 := recoveredBlock90Block148Block159Block188Local2.
            recoveredBlock90Block148Block159Block188PC := 265.
        ].
        recoveredBlock90Block148Block159Block188Step = 265 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack1 := (recoveredBlock90Block148Block159Block188Stack1) add: (recoveredBlock90Block148Block159Block188Stack2).
            recoveredBlock90Block148Block159Block188PC := 267.
        ].
        recoveredBlock90Block148Block159Block188Step = 267 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack2 := nil.
            recoveredBlock90Block148Block159Block188PC := 268.
        ].
        recoveredBlock90Block148Block159Block188Step = 268 ifTrue: [
            recoveredBlock90Block148Block159Block188Stack3 := recoveredBlock90Block148Block159Block188Stack2.
            recoveredBlock90Block148Block159Block188PC := 269.
        ].
        recoveredBlock90Block148Block159Block188Step = 269 ifTrue: [
            recoveredBlock90Block148Block159Block188Local2 := recoveredBlock90Block148Block159Block188Stack3.
            recoveredBlock90Block148Block159Block188PC := 270.
        ].
        recoveredBlock90Block148Block159Block188Step = 270 ifTrue: [
            recoveredBlock90Block148Block159Block188Local1 := recoveredBlock90Block148Block159Block188Stack2.
            recoveredBlock90Block148Block159Block188PC := 271.
        ].
        recoveredBlock90Block148Block159Block188Step = 271 ifTrue: [
            recoveredBlock90Block148Block159Block188Result := recoveredBlock90Block148Block159Block188Stack1.
            recoveredBlock90Block148Block159Block188Done := true.
        ].
    ].
    recoveredBlock90Block148Block159Block188Result
].
            recoveredBlock90Block148Block159PC := 272.
        ].
        recoveredBlock90Block148Block159Step = 272 ifTrue: [
            recoveredBlock90Block148Block159Stack1 := (recoveredBlock90Block148Block159Stack1) do: (recoveredBlock90Block148Block159Stack2).
            recoveredBlock90Block148Block159PC := 274.
        ].
        recoveredBlock90Block148Block159Step = 274 ifTrue: [
            recoveredBlock90Block148Block159Result := recoveredBlock90Block148Block159Stack1.
            recoveredBlock90Block148Block159Done := true.
        ].
    ].
    recoveredBlock90Block148Block159Result
].
    recoveredBlock90Block148Value3 := (recoveredBlock90Block148Value1) do: (recoveredBlock90Block148Value2).
    recoveredBlock90Block148Value3
].
            recoveredBlock90PC := 278.
        ].
        recoveredBlock90Step = 278 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) do: (recoveredBlock90Stack2).
            recoveredBlock90PC := 280.
        ].
        recoveredBlock90Step = 280 ifTrue: [
            recoveredBlock90Result := recoveredBlock90Stack1.
            recoveredBlock90Done := true.
        ].
    ].
    recoveredBlock90Result
].
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack1) convertAllOpImpls: (recoveredStack2).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack2 := (recoveredStack2) getAllDBItems.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack1) getAllItemsWithOpImpls: (recoveredStack2).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            (recoveredStack1) updateList.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20629960; bytecode file offset 0xf262bc"
!SGOperatorSwitchGO methodsFor: 'recovered'!
menuImplementationCastAdd
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceElementGOs.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Local1 recoveredBlock29Stack0 recoveredBlock29Stack1 recoveredBlock29Stack2 recoveredBlock29Stack3 recoveredBlock29PC recoveredBlock29Step recoveredBlock29Done recoveredBlock29Result |
    recoveredBlock29Stack0 := self.
    recoveredBlock29PC := 36.
    recoveredBlock29Done := false.
    [recoveredBlock29Done not] whileTrue: [
        recoveredBlock29Step := recoveredBlock29PC.
        recoveredBlock29Step = 36 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Arg1.
            recoveredBlock29PC := 39.
        ].
        recoveredBlock29Step = 39 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) externalConnectorGO.
            recoveredBlock29PC := 40.
        ].
        recoveredBlock29Step = 40 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) connectionPoint.
            recoveredBlock29PC := 42.
        ].
        recoveredBlock29Step = 42 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) connectionWrappers.
            recoveredBlock29PC := 44.
        ].
        recoveredBlock29Step = 44 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Stack1.
            recoveredBlock29PC := 45.
        ].
        recoveredBlock29Step = 45 ifTrue: [
            recoveredBlock29Local1 := recoveredBlock29Stack2.
            recoveredBlock29PC := 48.
        ].
        recoveredBlock29Step = 48 ifTrue: [
            recoveredBlock29Stack2 := [:recoveredBlock29Block48Arg1 | 
    | recoveredBlock29Block48Local1 recoveredBlock29Block48Stack0 recoveredBlock29Block48Stack1 recoveredBlock29Block48Stack2 recoveredBlock29Block48Stack3 recoveredBlock29Block48Stack4 recoveredBlock29Block48PC recoveredBlock29Block48Step recoveredBlock29Block48Done recoveredBlock29Block48Result |
    recoveredBlock29Block48Stack0 := self.
    recoveredBlock29Block48PC := 54.
    recoveredBlock29Block48Done := false.
    [recoveredBlock29Block48Done not] whileTrue: [
        recoveredBlock29Block48Step := recoveredBlock29Block48PC.
        recoveredBlock29Block48Step = 54 ifTrue: [
            recoveredBlock29Block48Stack1 := nil.
            recoveredBlock29Block48PC := 55.
        ].
        recoveredBlock29Block48Step = 55 ifTrue: [
            recoveredBlock29Block48Stack2 := recoveredBlock29Block48Arg1.
            recoveredBlock29Block48PC := 56.
        ].
        recoveredBlock29Block48Step = 56 ifTrue: [
            recoveredBlock29Block48Stack3 := recoveredBlock29Arg1.
            recoveredBlock29Block48PC := 59.
        ].
        recoveredBlock29Block48Step = 59 ifTrue: [
            recoveredBlock29Block48Stack3 := (recoveredBlock29Block48Stack3) externalConnectorGO.
            recoveredBlock29Block48PC := 60.
        ].
        recoveredBlock29Block48Step = 60 ifTrue: [
            recoveredBlock29Block48Stack2 := (recoveredBlock29Block48Stack2) opposedNode: (recoveredBlock29Block48Stack3).
            recoveredBlock29Block48PC := 62.
        ].
        recoveredBlock29Block48Step = 62 ifTrue: [
            recoveredBlock29Block48Stack3 := recoveredBlock29Block48Stack2.
            recoveredBlock29Block48PC := 63.
        ].
        recoveredBlock29Block48Step = 63 ifTrue: [
            recoveredBlock29Block48Local1 := recoveredBlock29Block48Stack3.
            recoveredBlock29Block48PC := 64.
        ].
        recoveredBlock29Block48Step = 64 ifTrue: [
            (recoveredBlock29Block48Stack2 == nil) ifTrue: [recoveredBlock29Block48PC := 89] ifFalse: [recoveredBlock29Block48PC := 68].
        ].
        recoveredBlock29Block48Step = 68 ifTrue: [
            recoveredBlock29Block48Stack2 := recoveredBlock29Block48Local1.
            recoveredBlock29Block48PC := 69.
        ].
        recoveredBlock29Block48Step = 69 ifTrue: [
            recoveredBlock29Block48Stack2 := (recoveredBlock29Block48Stack2) getBlock.
            recoveredBlock29Block48PC := 71.
        ].
        recoveredBlock29Block48Step = 71 ifTrue: [
            recoveredBlock29Block48Stack2 := (recoveredBlock29Block48Stack2) basicGraphObject.
            recoveredBlock29Block48PC := 73.
        ].
        recoveredBlock29Block48Step = 73 ifTrue: [
            recoveredBlock29Block48Stack2 := (recoveredBlock29Block48Stack2) isImplCastGO.
            recoveredBlock29Block48PC := 75.
        ].
        recoveredBlock29Block48Step = 75 ifTrue: [
            (recoveredBlock29Block48Stack2) ifTrue: [recoveredBlock29Block48PC := 78] ifFalse: [recoveredBlock29Block48PC := 89].
        ].
        recoveredBlock29Block48Step = 78 ifTrue: [
            recoveredBlock29Block48PC := 79.
        ].
        recoveredBlock29Block48Step = 79 ifTrue: [
            recoveredBlock29Block48Stack1 := RBUserInfo.
            recoveredBlock29Block48PC := 81.
        ].
        recoveredBlock29Block48Step = 81 ifTrue: [
            recoveredBlock29Block48Stack2 := 'This operator is already connected to at least one implementation cast. Please specify further implementation casts individually.'.
            recoveredBlock29Block48PC := 83.
        ].
        recoveredBlock29Block48Step = 83 ifTrue: [
            recoveredBlock29Block48Stack1 := (recoveredBlock29Block48Stack1) message: (recoveredBlock29Block48Stack2).
            recoveredBlock29Block48PC := 85.
        ].
        recoveredBlock29Block48Step = 85 ifTrue: [
            (recoveredBlock29Block48Stack1) prompt.
            recoveredBlock29Block48PC := 87.
        ].
        recoveredBlock29Block48Step = 87 ifTrue: [
            recoveredBlock29Block48Stack1 := nil.
            recoveredBlock29Block48PC := 88.
        ].
        recoveredBlock29Block48Step = 88 ifTrue: [
            ^recoveredBlock29Block48Stack1
        ].
        recoveredBlock29Block48Step = 89 ifTrue: [
            recoveredBlock29Block48Result := recoveredBlock29Block48Stack1.
            recoveredBlock29Block48Done := true.
        ].
    ].
    recoveredBlock29Block48Result
].
            recoveredBlock29PC := 90.
        ].
        recoveredBlock29Step = 90 ifTrue: [
            (recoveredBlock29Stack1) do: (recoveredBlock29Stack2).
            recoveredBlock29PC := 92.
        ].
        recoveredBlock29Step = 92 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Arg1.
            recoveredBlock29PC := 95.
        ].
        recoveredBlock29Step = 95 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) externalConnectorGO.
            recoveredBlock29PC := 96.
        ].
        recoveredBlock29Step = 96 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) isResultPin.
            recoveredBlock29PC := 98.
        ].
        recoveredBlock29Step = 98 ifTrue: [
            (recoveredBlock29Stack1) ifTrue: [recoveredBlock29PC := 102] ifFalse: [recoveredBlock29PC := 114].
        ].
        recoveredBlock29Step = 102 ifTrue: [
            recoveredBlock29Stack1 := recoveredLocal10.
            recoveredBlock29PC := 105.
        ].
        recoveredBlock29Step = 105 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Local1.
            recoveredBlock29PC := 108.
        ].
        recoveredBlock29Step = 108 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) addAll: (recoveredBlock29Stack2).
            recoveredBlock29PC := 110.
        ].
        recoveredBlock29Step = 110 ifTrue: [
            recoveredBlock29PC := 122.
        ].
        recoveredBlock29Step = 114 ifTrue: [
            recoveredBlock29Stack1 := recoveredLocal11.
            recoveredBlock29PC := 117.
        ].
        recoveredBlock29Step = 117 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Local1.
            recoveredBlock29PC := 120.
        ].
        recoveredBlock29Step = 120 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) addAll: (recoveredBlock29Stack2).
            recoveredBlock29PC := 122.
        ].
        recoveredBlock29Step = 122 ifTrue: [
            recoveredBlock29Result := recoveredBlock29Stack1.
            recoveredBlock29Done := true.
        ].
    ].
    recoveredBlock29Result
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := [:recoveredBlock128Arg1 | 
    | recoveredBlock128Local1 recoveredBlock128Stack0 recoveredBlock128Stack1 recoveredBlock128Stack2 recoveredBlock128Stack3 recoveredBlock128PC recoveredBlock128Step recoveredBlock128Done recoveredBlock128Result |
    recoveredBlock128Stack0 := self.
    recoveredBlock128PC := 134.
    recoveredBlock128Done := false.
    [recoveredBlock128Done not] whileTrue: [
        recoveredBlock128Step := recoveredBlock128PC.
        recoveredBlock128Step = 134 ifTrue: [
            recoveredBlock128Stack1 := recoveredBlock128Arg1.
            recoveredBlock128PC := 135.
        ].
        recoveredBlock128Step = 135 ifTrue: [
            recoveredBlock128Stack1 := (recoveredBlock128Stack1) basicGraphObject.
            recoveredBlock128PC := 137.
        ].
        recoveredBlock128Step = 137 ifTrue: [
            recoveredBlock128Stack1 := (recoveredBlock128Stack1) getFreePositionForImplCast.
            recoveredBlock128PC := 139.
        ].
        recoveredBlock128Step = 139 ifTrue: [
            recoveredBlock128Stack2 := recoveredBlock128Stack1.
            recoveredBlock128PC := 140.
        ].
        recoveredBlock128Step = 140 ifTrue: [
            recoveredBlock128Local1 := recoveredBlock128Stack2.
            recoveredBlock128PC := 141.
        ].
        recoveredBlock128Step = 141 ifTrue: [
            (recoveredBlock128Stack1 ~~ nil) ifTrue: [recoveredBlock128PC := 146] ifFalse: [recoveredBlock128PC := 144].
        ].
        recoveredBlock128Step = 144 ifTrue: [
            recoveredBlock128Stack1 := nil.
            recoveredBlock128PC := 145.
        ].
        recoveredBlock128Step = 145 ifTrue: [
            ^recoveredBlock128Stack1
        ].
        recoveredBlock128Step = 146 ifTrue: [
            recoveredBlock128Stack1 := recoveredLocal9.
            recoveredBlock128PC := 149.
        ].
        recoveredBlock128Step = 149 ifTrue: [
            recoveredBlock128Stack2 := recoveredBlock128Local1.
            recoveredBlock128PC := 150.
        ].
        recoveredBlock128Step = 150 ifTrue: [
            recoveredBlock128Stack1 := (recoveredBlock128Stack1) add: (recoveredBlock128Stack2).
            recoveredBlock128PC := 152.
        ].
        recoveredBlock128Step = 152 ifTrue: [
            recoveredBlock128Result := recoveredBlock128Stack1.
            recoveredBlock128Done := true.
        ].
    ].
    recoveredBlock128Result
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := [:recoveredBlock158Arg1 | 
    | recoveredBlock158Local1 recoveredBlock158Stack0 recoveredBlock158Stack1 recoveredBlock158Stack2 recoveredBlock158Stack3 recoveredBlock158PC recoveredBlock158Step recoveredBlock158Done recoveredBlock158Result |
    recoveredBlock158Stack0 := self.
    recoveredBlock158PC := 164.
    recoveredBlock158Done := false.
    [recoveredBlock158Done not] whileTrue: [
        recoveredBlock158Step := recoveredBlock158PC.
        recoveredBlock158Step = 164 ifTrue: [
            recoveredBlock158Stack1 := recoveredBlock158Arg1.
            recoveredBlock158PC := 165.
        ].
        recoveredBlock158Step = 165 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) basicGraphObject.
            recoveredBlock158PC := 167.
        ].
        recoveredBlock158Step = 167 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) getFreePositionForImplCast.
            recoveredBlock158PC := 169.
        ].
        recoveredBlock158Step = 169 ifTrue: [
            recoveredBlock158Stack2 := recoveredBlock158Stack1.
            recoveredBlock158PC := 170.
        ].
        recoveredBlock158Step = 170 ifTrue: [
            recoveredBlock158Local1 := recoveredBlock158Stack2.
            recoveredBlock158PC := 171.
        ].
        recoveredBlock158Step = 171 ifTrue: [
            (recoveredBlock158Stack1 ~~ nil) ifTrue: [recoveredBlock158PC := 176] ifFalse: [recoveredBlock158PC := 174].
        ].
        recoveredBlock158Step = 174 ifTrue: [
            recoveredBlock158Stack1 := nil.
            recoveredBlock158PC := 175.
        ].
        recoveredBlock158Step = 175 ifTrue: [
            ^recoveredBlock158Stack1
        ].
        recoveredBlock158Step = 176 ifTrue: [
            recoveredBlock158Stack1 := recoveredLocal8.
            recoveredBlock158PC := 179.
        ].
        recoveredBlock158Step = 179 ifTrue: [
            recoveredBlock158Stack2 := recoveredBlock158Local1.
            recoveredBlock158PC := 180.
        ].
        recoveredBlock158Step = 180 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) add: (recoveredBlock158Stack2).
            recoveredBlock158PC := 182.
        ].
        recoveredBlock158Step = 182 ifTrue: [
            recoveredBlock158Result := recoveredBlock158Stack1.
            recoveredBlock158Done := true.
        ].
    ].
    recoveredBlock158Result
].
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBDEController.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementationCasts.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := [:block2811f89cArg1 | 
    | block2811f89cValue0 block2811f89cValue1 |
    block2811f89cValue0 := block2811f89cArg1.
    block2811f89cValue1 := (block2811f89cValue0) elementName.
    block2811f89cValue1
].
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) nameForImplCast.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := 'impl_cast'.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredPC := 294.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := [:recoveredBlock246Arg1 | 
    | recoveredBlock246Value0 recoveredBlock246Value1 recoveredBlock246Value2 recoveredBlock246Value3 recoveredBlock246Value4 recoveredBlock246Value5 recoveredBlock246Value6 recoveredBlock246Value7 recoveredBlock246Value8 |
    recoveredBlock246Value0 := recoveredBlock246Arg1.
    recoveredBlock246Value1 := recoveredLocal3.
    recoveredBlock246Value2 := (recoveredBlock246Value1) size.
    recoveredBlock246Value3 := recoveredBlock246Arg1.
    recoveredBlock246Value4 := (recoveredBlock246Value3) size.
    recoveredBlock246Value5 := (recoveredBlock246Value2) min: (recoveredBlock246Value4).
    recoveredBlock246Value6 := (recoveredBlock246Value0) copyFrom: (1) to: (recoveredBlock246Value5).
    recoveredBlock246Value7 := recoveredLocal3.
    recoveredBlock246Value8 := (recoveredBlock246Value6) = (recoveredBlock246Value7).
    recoveredBlock246Value8
].
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 290] ifFalse: [recoveredPC := 280].
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredPC := 294.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 299] ifFalse: [recoveredPC := 230].
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 314] ifFalse: [recoveredPC := 316].
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 328] ifFalse: [recoveredPC := 352].
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack3 := '_in'.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack0) insertImplCastAt: (recoveredStack1) defaultName: (recoveredStack2).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredPC := 442.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredPC := 413.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack2 := 'in'.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicGraphObject.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack5 := '_'.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            (recoveredStack2) insertImplCastAt: (recoveredStack3) defaultName: (recoveredStack4).
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 362] ifFalse: [recoveredPC := 441]] ifFalse: [recoveredPC := 416].
        ].
        recoveredStep = 416 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 437] ifFalse: [recoveredPC := 432].
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredPC := 365.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 456] ifFalse: [recoveredPC := 458].
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 470] ifFalse: [recoveredPC := 494].
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack3 := '_out'.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            (recoveredStack0) insertImplCastAt: (recoveredStack1) defaultName: (recoveredStack2).
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredPC := 584.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredPC := 555.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack2 := 'out'.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicGraphObject.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack5 := '_'.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            (recoveredStack2) insertImplCastAt: (recoveredStack3) defaultName: (recoveredStack4).
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 504] ifFalse: [recoveredPC := 583]] ifFalse: [recoveredPC := 558].
        ].
        recoveredStep = 558 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 579] ifFalse: [recoveredPC := 574].
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredPC := 507.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

