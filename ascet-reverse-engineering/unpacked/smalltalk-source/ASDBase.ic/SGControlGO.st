"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003f70; bytecode file offset 0x90206c"
!SGControlGO methodsFor: 'recovered'!
updateControlInfo: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200041d8; bytecode file offset 0x90206c"
!SGControlGO methodsFor: 'recovered'!
tempVar: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20009938; bytecode file offset 0x908be4"
!SGControlGO methodsFor: 'recovered'!
createChildrenNodes
    | recoveredValue0 |
    recoveredValue0 := (self) connectedToCalls.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a9a0; bytecode file offset 0x908be4"
!SGControlGO methodsFor: 'recovered'!
xmlType
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20012d2c; bytecode file offset 0x912098"
!SGControlGO methodsFor: 'recovered'!
apiClass
    | recoveredValue0 |
    recoveredValue0 := EtasAPIBlockDiagramControl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20032e24; bytecode file offset 0x934580"
!SGControlGO methodsFor: 'recovered'!
goTypeString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) goTypeString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004320c; bytecode file offset 0x9451f8"
!SGControlGO methodsFor: 'recovered'!
connectedToCallsOverElseConnection
    | recoveredValue0 |
    recoveredValue0 := (self) connectedToCalls: ('Else').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043ebc; bytecode file offset 0x9451f8"
!SGControlGO methodsFor: 'recovered'!
connectedToCallsOverSwitchCaseConnection
    | recoveredValue0 |
    recoveredValue0 := (self) connectedToCallsNot: ('default').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004471c; bytecode file offset 0x9451f8"
!SGControlGO methodsFor: 'recovered'!
connectedToCallsOverSwitchDefaultConnection
    | recoveredValue0 |
    recoveredValue0 := (self) connectedToCalls: ('default').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004504c; bytecode file offset 0x9451f8"
!SGControlGO methodsFor: 'recovered'!
connectedToCallsOverThenConnection
    | recoveredValue0 |
    recoveredValue0 := (self) connectedToCalls: ('Then').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20056454; bytecode file offset 0x952d3c"
!SGControlGO methodsFor: 'recovered'!
isBoolData: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isResultConnector.
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20073f00; bytecode file offset 0x970b34"
!SGControlGO methodsFor: 'recovered'!
createControlInfo
    ^nil
! !

"ASDBase.ic method 0x20077354; bytecode file offset 0x9757c8"
!SGControlGO methodsFor: 'recovered'!
isSGControlGO
    ^true
! !

"ASDBase.ic method 0x2007b0b4; bytecode file offset 0x97c330"
!SGControlGO methodsFor: 'recovered'!
hasPortMenu
    ^false
! !

"ASDBase.ic method 0x2007b474; bytecode file offset 0x97c330"
!SGControlGO methodsFor: 'recovered'!
hasTempVar
    ^false
! !

"ASDBase.ic method 0x2007bb24; bytecode file offset 0x97c330"
!SGControlGO methodsFor: 'recovered'!
oldFashion
    ^false
! !

"ASDBase.ic method 0x200879f4; bytecode file offset 0x9842f0"
!SGControlGO methodsFor: 'recovered'!
defaultSize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := PinDistance.
    recoveredValue1 := PinDistance.
    recoveredValue2 := (recoveredValue0) @ (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20229a74; bytecode file offset 0xb26340"
!SGControlGO methodsFor: 'recovered'!
matchElement: recoveredArg1 with: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'WHAT3141'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'Type'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) goTypeString.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20256b1c; bytecode file offset 0xb533e4"
!SGControlGO methodsFor: 'recovered'!
displayOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVisible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            super displayOn: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) viewAsLine.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconGO.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconGO.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) displayOn: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032f3b0; bytecode file offset 0xc2bca4"
!SGControlGO methodsFor: 'recovered'!
getPointedGOFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) bigFrame.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsPoint: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := interfaceGOs.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) basicGraphObject.
            recoveredBlock16PC := 25.
        ].
        recoveredBlock16Step = 25 ifTrue: [
            recoveredBlock16Stack3 := recoveredArg1.
            recoveredBlock16PC := 28.
        ].
        recoveredBlock16Step = 28 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) getPointedGOFor: (recoveredBlock16Stack3).
            recoveredBlock16PC := 29.
        ].
        recoveredBlock16Step = 29 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Stack2.
            recoveredBlock16PC := 30.
        ].
        recoveredBlock16Step = 30 ifTrue: [
            recoveredLocal1 := recoveredBlock16Stack3.
            recoveredBlock16PC := 33.
        ].
        recoveredBlock16Step = 33 ifTrue: [
            (recoveredBlock16Stack2 == nil) ifTrue: [recoveredBlock16PC := 41] ifFalse: [recoveredBlock16PC := 36].
        ].
        recoveredBlock16Step = 36 ifTrue: [
            recoveredBlock16PC := 37.
        ].
        recoveredBlock16Step = 37 ifTrue: [
            recoveredBlock16Stack1 := recoveredLocal1.
            recoveredBlock16PC := 40.
        ].
        recoveredBlock16Step = 40 ifTrue: [
            ^recoveredBlock16Stack1
        ].
        recoveredBlock16Step = 41 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033cb30; bytecode file offset 0xc3941c"
!SGControlGO methodsFor: 'recovered'!
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
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 'Call_60545'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasSequenceCall.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'showCallGOs'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := 'Show Se~quence Calls'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) addSingleLine.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) appendConnectedElementsMenu: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20356df8; bytecode file offset 0xc536d0"
!SGControlGO methodsFor: 'recovered'!
viewAsLine
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) viewVisibility.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedCategory.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'As Line'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsForType: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30Stack5 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := nil.
            recoveredBlock30PC := 37.
        ].
        recoveredBlock30Step = 37 ifTrue: [
            recoveredBlock30Stack2 := self.
            recoveredBlock30PC := 38.
        ].
        recoveredBlock30Step = 38 ifTrue: [
            recoveredBlock30Stack3 := self.
            recoveredBlock30PC := 39.
        ].
        recoveredBlock30Step = 39 ifTrue: [
            recoveredBlock30Stack4 := recoveredBlock30Arg1.
            recoveredBlock30PC := 40.
        ].
        recoveredBlock30Step = 40 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) matchElement: (recoveredBlock30Stack3) with: (recoveredBlock30Stack4).
            recoveredBlock30PC := 42.
        ].
        recoveredBlock30Step = 42 ifTrue: [
            (recoveredBlock30Stack2) ifTrue: [recoveredBlock30PC := 46] ifFalse: [recoveredBlock30PC := 49].
        ].
        recoveredBlock30Step = 46 ifTrue: [
            recoveredBlock30PC := 47.
        ].
        recoveredBlock30Step = 47 ifTrue: [
            recoveredBlock30Stack1 := true.
            recoveredBlock30PC := 48.
        ].
        recoveredBlock30Step = 48 ifTrue: [
            ^recoveredBlock30Stack1
        ].
        recoveredBlock30Step = 49 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLineViewNames.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046eabc; bytecode file offset 0xd6b3ac"
!SGControlGO methodsFor: 'recovered'!
connectedToCalls: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block28101428Arg1 | 
    | block28101428Value0 block28101428Value1 block28101428Value2 |
    block28101428Value0 := block28101428Arg1.
    block28101428Value1 := (block28101428Value0) isSelectorPort.
    block28101428Value2 := (block28101428Value1) not.
    block28101428Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28Stack4 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := nil.
            recoveredBlock28PC := 35.
        ].
        recoveredBlock28Step = 35 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 36.
        ].
        recoveredBlock28Step = 36 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) methodName.
            recoveredBlock28PC := 38.
        ].
        recoveredBlock28Step = 38 ifTrue: [
            recoveredBlock28Stack3 := recoveredArg1.
            recoveredBlock28PC := 41.
        ].
        recoveredBlock28Step = 41 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) equals: (recoveredBlock28Stack3).
            recoveredBlock28PC := 43.
        ].
        recoveredBlock28Step = 43 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 46] ifFalse: [recoveredBlock28PC := 67].
        ].
        recoveredBlock28Step = 46 ifTrue: [
            recoveredBlock28PC := 47.
        ].
        recoveredBlock28Step = 47 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Arg1.
            recoveredBlock28PC := 48.
        ].
        recoveredBlock28Step = 48 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) interfaceGOs.
            recoveredBlock28PC := 49.
        ].
        recoveredBlock28Step = 49 ifTrue: [
            recoveredBlock28Stack2 := [:recoveredBlock28Block49Arg1 | 
    | recoveredBlock28Block49Value0 recoveredBlock28Block49Value1 recoveredBlock28Block49Value2 recoveredBlock28Block49Value3 |
    recoveredBlock28Block49Value0 := recoveredLocal2.
    recoveredBlock28Block49Value1 := recoveredBlock28Block49Arg1.
    recoveredBlock28Block49Value2 := (recoveredBlock28Block49Value1) externalConnectorGO.
    recoveredBlock28Block49Value3 := (recoveredBlock28Block49Value0) add: (recoveredBlock28Block49Value2).
    recoveredBlock28Block49Value3
].
            recoveredBlock28PC := 65.
        ].
        recoveredBlock28Step = 65 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) do: (recoveredBlock28Stack2).
            recoveredBlock28PC := 67.
        ].
        recoveredBlock28Step = 67 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := IdentityDictionary.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := [:recoveredBlock87Arg1 | 
    | recoveredBlock87Value0 recoveredBlock87Value1 recoveredBlock87Value2 recoveredBlock87Value3 recoveredBlock87Value4 |
    recoveredBlock87Value0 := recoveredBlock87Arg1.
    recoveredBlock87Value1 := (recoveredBlock87Value0) connectionPoint.
    recoveredBlock87Value2 := (recoveredBlock87Value1) connectionWrappers.
    recoveredBlock87Value3 := [:recoveredBlock87Block99Arg1 | 
    | recoveredBlock87Block99Value0 recoveredBlock87Block99Value1 recoveredBlock87Block99Value2 |
    recoveredBlock87Block99Value0 := recoveredBlock87Block99Arg1.
    recoveredBlock87Block99Value1 := recoveredLocal1.
    recoveredBlock87Block99Value2 := (self) connectedToCallsWrapper: (recoveredBlock87Block99Value0) callGOs: (recoveredBlock87Block99Value1).
    recoveredBlock87Block99Value2
].
    recoveredBlock87Value4 := (recoveredBlock87Value2) do: (recoveredBlock87Value3).
    recoveredBlock87Value4
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20471ddc; bytecode file offset 0xd6e6d0"
!SGControlGO methodsFor: 'recovered'!
connectedToCalls
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block2810168cArg1 | 
    | block2810168cValue0 block2810168cValue1 block2810168cValue2 |
    block2810168cValue0 := block2810168cArg1.
    block2810168cValue1 := (block2810168cValue0) isSelectorPort.
    block2810168cValue2 := (block2810168cValue1) not.
    block2810168cValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 |
    recoveredBlock28Value0 := recoveredBlock28Arg1.
    recoveredBlock28Value1 := (recoveredBlock28Value0) interfaceGOs.
    recoveredBlock28Value2 := [:recoveredBlock28Block36Arg1 | 
    | recoveredBlock28Block36Value0 recoveredBlock28Block36Value1 recoveredBlock28Block36Value2 recoveredBlock28Block36Value3 |
    recoveredBlock28Block36Value0 := recoveredLocal2.
    recoveredBlock28Block36Value1 := recoveredBlock28Block36Arg1.
    recoveredBlock28Block36Value2 := (recoveredBlock28Block36Value1) externalConnectorGO.
    recoveredBlock28Block36Value3 := (recoveredBlock28Block36Value0) add: (recoveredBlock28Block36Value2).
    recoveredBlock28Block36Value3
].
    recoveredBlock28Value3 := (recoveredBlock28Value1) do: (recoveredBlock28Value2).
    recoveredBlock28Value3
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := [:recoveredBlock66Arg1 | 
    | recoveredBlock66Value0 recoveredBlock66Value1 recoveredBlock66Value2 recoveredBlock66Value3 recoveredBlock66Value4 |
    recoveredBlock66Value0 := recoveredBlock66Arg1.
    recoveredBlock66Value1 := (recoveredBlock66Value0) connectionPoint.
    recoveredBlock66Value2 := (recoveredBlock66Value1) connectionWrappers.
    recoveredBlock66Value3 := [:recoveredBlock66Block77Arg1 | 
    | recoveredBlock66Block77Value0 recoveredBlock66Block77Value1 recoveredBlock66Block77Value2 |
    recoveredBlock66Block77Value0 := recoveredBlock66Block77Arg1.
    recoveredBlock66Block77Value1 := recoveredLocal1.
    recoveredBlock66Block77Value2 := (self) connectedToCallsWrapper: (recoveredBlock66Block77Value0) callGOs: (recoveredBlock66Block77Value1).
    recoveredBlock66Block77Value2
].
    recoveredBlock66Value4 := (recoveredBlock66Value2) do: (recoveredBlock66Value3).
    recoveredBlock66Value4
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 119].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlockSeqNo.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a1e8c; bytecode file offset 0xd9e774"
!SGControlGO methodsFor: 'recovered'!
connectedToCallsWrapper: recoveredArg1 callGOs: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) startConnectionPoint.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) startConnectionPoint.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCallGO.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGHierarchyGO.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := Set.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) new.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) getInHierarchy: (recoveredStack3) visited: (recoveredStack4).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInOutPortGO.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := Set.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := (recoveredStack4) new.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) getOutHierarchy: (recoveredStack3) visited: (recoveredStack4).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) endConnectionPoint.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) endConnectionPoint.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCallGO.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 137] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGHierarchyGO.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 119].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack4 := Set.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack4 := (recoveredStack4) new.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := (recoveredStack2) getInHierarchy: (recoveredStack3) visited: (recoveredStack4).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInOutPortGO.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 137].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack4 := Set.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := (recoveredStack4) new.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := (recoveredStack2) getOutHierarchy: (recoveredStack3) visited: (recoveredStack4).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d2180; bytecode file offset 0xdceacc"
!SGControlGO methodsFor: 'recovered'!
storageObject
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_63666'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGControlGODB.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) identifier.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) iD: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) classSymbolForStorage.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) controlGOSymbol: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) oldFashion.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) oldFashion: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) getPosition.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) position: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) lineStyle.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack2) lineStyle: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) buildSequencesDictionary.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) sequences: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) connectorGOs.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := [:block2810750cArg1 | 
    | block2810750cValue0 block2810750cValue1 |
    block2810750cValue0 := block2810750cArg1.
    block2810750cValue1 := (block2810750cValue0) identifier.
    block2810750cValue1
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) asArray.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack2) connectors: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := (recoveredStack3) oldFashion.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := (recoveredStack3) createControlInfo.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack2) controlInfo: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributedViewNames.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack2) attributedViewNames: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := (recoveredStack3) hasTempVar.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack2) tempVar: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) frameGO.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) areaStyle.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) areaStyle: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) frameGO.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) extent.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) lBlockSize: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := 'Call_63666'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) customerDataInfo.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLookupTable.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) setCustomerDataInfo: (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawingOrder.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) drawingOrder.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) drawingOrder: (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204daac8; bytecode file offset 0xdd73d0"
!SGControlGO methodsFor: 'recovered'!
connectedToCallsNot: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block28107944Arg1 | 
    | block28107944Value0 block28107944Value1 block28107944Value2 |
    block28107944Value0 := block28107944Arg1.
    block28107944Value1 := (block28107944Value0) isSelectorPort.
    block28107944Value2 := (block28107944Value1) not.
    block28107944Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28Stack4 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := nil.
            recoveredBlock28PC := 35.
        ].
        recoveredBlock28Step = 35 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 36.
        ].
        recoveredBlock28Step = 36 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) methodName.
            recoveredBlock28PC := 38.
        ].
        recoveredBlock28Step = 38 ifTrue: [
            recoveredBlock28Stack3 := recoveredArg1.
            recoveredBlock28PC := 41.
        ].
        recoveredBlock28Step = 41 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) equals: (recoveredBlock28Stack3).
            recoveredBlock28PC := 43.
        ].
        recoveredBlock28Step = 43 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 67] ifFalse: [recoveredBlock28PC := 46].
        ].
        recoveredBlock28Step = 46 ifTrue: [
            recoveredBlock28PC := 47.
        ].
        recoveredBlock28Step = 47 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Arg1.
            recoveredBlock28PC := 48.
        ].
        recoveredBlock28Step = 48 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) interfaceGOs.
            recoveredBlock28PC := 49.
        ].
        recoveredBlock28Step = 49 ifTrue: [
            recoveredBlock28Stack2 := [:recoveredBlock28Block49Arg1 | 
    | recoveredBlock28Block49Value0 recoveredBlock28Block49Value1 recoveredBlock28Block49Value2 recoveredBlock28Block49Value3 |
    recoveredBlock28Block49Value0 := recoveredLocal2.
    recoveredBlock28Block49Value1 := recoveredBlock28Block49Arg1.
    recoveredBlock28Block49Value2 := (recoveredBlock28Block49Value1) externalConnectorGO.
    recoveredBlock28Block49Value3 := (recoveredBlock28Block49Value0) add: (recoveredBlock28Block49Value2).
    recoveredBlock28Block49Value3
].
            recoveredBlock28PC := 65.
        ].
        recoveredBlock28Step = 65 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) do: (recoveredBlock28Stack2).
            recoveredBlock28PC := 67.
        ].
        recoveredBlock28Step = 67 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := IdentityDictionary.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := [:recoveredBlock80Arg1 | 
    | recoveredBlock80Value0 recoveredBlock80Value1 recoveredBlock80Value2 recoveredBlock80Value3 recoveredBlock80Value4 |
    recoveredBlock80Value0 := recoveredBlock80Arg1.
    recoveredBlock80Value1 := (recoveredBlock80Value0) connectionPoint.
    recoveredBlock80Value2 := (recoveredBlock80Value1) connectionWrappers.
    recoveredBlock80Value3 := [:recoveredBlock80Block93Arg1 | 
    | recoveredBlock80Block93Local1 recoveredBlock80Block93Local2 recoveredBlock80Block93Stack0 recoveredBlock80Block93Stack1 recoveredBlock80Block93Stack2 recoveredBlock80Block93Stack3 recoveredBlock80Block93PC recoveredBlock80Block93Step recoveredBlock80Block93Done recoveredBlock80Block93Result |
    recoveredBlock80Block93Stack0 := self.
    recoveredBlock80Block93PC := 100.
    recoveredBlock80Block93Done := false.
    [recoveredBlock80Block93Done not] whileTrue: [
        recoveredBlock80Block93Step := recoveredBlock80Block93PC.
        recoveredBlock80Block93Step = 100 ifTrue: [
            recoveredBlock80Block93Stack1 := OrderedCollection.
            recoveredBlock80Block93PC := 102.
        ].
        recoveredBlock80Block93Step = 102 ifTrue: [
            recoveredBlock80Block93Stack1 := (recoveredBlock80Block93Stack1) new.
            recoveredBlock80Block93PC := 104.
        ].
        recoveredBlock80Block93Step = 104 ifTrue: [
            recoveredBlock80Block93Local2 := recoveredBlock80Block93Stack1.
            recoveredBlock80Block93PC := 105.
        ].
        recoveredBlock80Block93Step = 105 ifTrue: [
            recoveredBlock80Block93Stack1 := recoveredBlock80Block93Arg1.
            recoveredBlock80Block93PC := 106.
        ].
        recoveredBlock80Block93Step = 106 ifTrue: [
            recoveredBlock80Block93Stack2 := recoveredBlock80Block93Local2.
            recoveredBlock80Block93PC := 107.
        ].
        recoveredBlock80Block93Step = 107 ifTrue: [
            (recoveredBlock80Block93Stack0) connectedToCallsWrapper: (recoveredBlock80Block93Stack1) callGOs: (recoveredBlock80Block93Stack2).
            recoveredBlock80Block93PC := 109.
        ].
        recoveredBlock80Block93Step = 109 ifTrue: [
            recoveredBlock80Block93Stack0 := recoveredLocal1.
            recoveredBlock80Block93PC := 112.
        ].
        recoveredBlock80Block93Step = 112 ifTrue: [
            recoveredBlock80Block93Stack1 := recoveredBlock80Arg1.
            recoveredBlock80Block93PC := 115.
        ].
        recoveredBlock80Block93Step = 115 ifTrue: [
            recoveredBlock80Block93Stack1 := (recoveredBlock80Block93Stack1) manager.
            recoveredBlock80Block93PC := 117.
        ].
        recoveredBlock80Block93Step = 117 ifTrue: [
            recoveredBlock80Block93Stack1 := (recoveredBlock80Block93Stack1) connectorName.
            recoveredBlock80Block93PC := 119.
        ].
        recoveredBlock80Block93Step = 119 ifTrue: [
            recoveredBlock80Block93Stack2 := [
    | block28107968Value0 block28107968Value1 |
    block28107968Value0 := OrderedCollection.
    block28107968Value1 := (block28107968Value0) new.
    block28107968Value1
].
            recoveredBlock80Block93PC := 121.
        ].
        recoveredBlock80Block93Step = 121 ifTrue: [
            recoveredBlock80Block93PC := 129.
        ].
        recoveredBlock80Block93Step = 129 ifTrue: [
            recoveredBlock80Block93Stack0 := (recoveredBlock80Block93Stack0) at: (recoveredBlock80Block93Stack1) ifAbsent: (recoveredBlock80Block93Stack2).
            recoveredBlock80Block93PC := 131.
        ].
        recoveredBlock80Block93Step = 131 ifTrue: [
            recoveredBlock80Block93Local1 := recoveredBlock80Block93Stack0.
            recoveredBlock80Block93PC := 132.
        ].
        recoveredBlock80Block93Step = 132 ifTrue: [
            recoveredBlock80Block93Stack0 := recoveredBlock80Block93Local1.
            recoveredBlock80Block93PC := 133.
        ].
        recoveredBlock80Block93Step = 133 ifTrue: [
            recoveredBlock80Block93Stack1 := recoveredBlock80Block93Local2.
            recoveredBlock80Block93PC := 134.
        ].
        recoveredBlock80Block93Step = 134 ifTrue: [
            (recoveredBlock80Block93Stack0) addAll: (recoveredBlock80Block93Stack1).
            recoveredBlock80Block93PC := 136.
        ].
        recoveredBlock80Block93Step = 136 ifTrue: [
            recoveredBlock80Block93Stack0 := recoveredLocal1.
            recoveredBlock80Block93PC := 139.
        ].
        recoveredBlock80Block93Step = 139 ifTrue: [
            recoveredBlock80Block93Stack1 := recoveredBlock80Arg1.
            recoveredBlock80Block93PC := 142.
        ].
        recoveredBlock80Block93Step = 142 ifTrue: [
            recoveredBlock80Block93Stack1 := (recoveredBlock80Block93Stack1) manager.
            recoveredBlock80Block93PC := 144.
        ].
        recoveredBlock80Block93Step = 144 ifTrue: [
            recoveredBlock80Block93Stack1 := (recoveredBlock80Block93Stack1) connectorName.
            recoveredBlock80Block93PC := 146.
        ].
        recoveredBlock80Block93Step = 146 ifTrue: [
            recoveredBlock80Block93Stack2 := recoveredBlock80Block93Local1.
            recoveredBlock80Block93PC := 147.
        ].
        recoveredBlock80Block93Step = 147 ifTrue: [
            recoveredBlock80Block93Stack0 := (recoveredBlock80Block93Stack0) at: (recoveredBlock80Block93Stack1) put: (recoveredBlock80Block93Stack2).
            recoveredBlock80Block93PC := 149.
        ].
        recoveredBlock80Block93Step = 149 ifTrue: [
            recoveredBlock80Block93Result := recoveredBlock80Block93Stack0.
            recoveredBlock80Block93Done := true.
        ].
    ].
    recoveredBlock80Block93Result
].
    recoveredBlock80Value4 := (recoveredBlock80Value2) do: (recoveredBlock80Value3).
    recoveredBlock80Value4
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205168cc; bytecode file offset 0xe131d4"
!SGControlGO methodsFor: 'recovered'!
getOutHierarchy: recoveredArg1 visited: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) interfaceElementGO.
    recoveredValue4 := (recoveredValue3) externalConnectorGO.
    recoveredValue5 := (recoveredValue4) connectionPoint.
    recoveredValue6 := (recoveredValue5) connectionWrappers.
    recoveredValue7 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19Stack5 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) endBlock.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            recoveredLocal5 := recoveredBlock19Stack1.
            recoveredBlock19PC := 32.
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal5.
            recoveredBlock19PC := 35.
        ].
        recoveredBlock19Step = 35 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) isCallGO.
            recoveredBlock19PC := 37.
        ].
        recoveredBlock19Step = 37 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 40] ifFalse: [recoveredBlock19PC := 48].
        ].
        recoveredBlock19Step = 40 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal2.
            recoveredBlock19PC := 43.
        ].
        recoveredBlock19Step = 43 ifTrue: [
            recoveredBlock19Stack2 := recoveredLocal5.
            recoveredBlock19PC := 46.
        ].
        recoveredBlock19Step = 46 ifTrue: [
            (recoveredBlock19Stack1) add: (recoveredBlock19Stack2).
            recoveredBlock19PC := 48.
        ].
        recoveredBlock19Step = 48 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal5.
            recoveredBlock19PC := 51.
        ].
        recoveredBlock19Step = 51 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) isInOutPortGO.
            recoveredBlock19PC := 53.
        ].
        recoveredBlock19Step = 53 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 56] ifFalse: [recoveredBlock19PC := 70].
        ].
        recoveredBlock19Step = 56 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal2.
            recoveredBlock19PC := 59.
        ].
        recoveredBlock19Step = 59 ifTrue: [
            recoveredBlock19Stack2 := self.
            recoveredBlock19PC := 60.
        ].
        recoveredBlock19Step = 60 ifTrue: [
            recoveredBlock19Stack3 := recoveredLocal5.
            recoveredBlock19PC := 63.
        ].
        recoveredBlock19Step = 63 ifTrue: [
            recoveredBlock19Stack4 := recoveredArg2.
            recoveredBlock19PC := 66.
        ].
        recoveredBlock19Step = 66 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) getOutHierarchy: (recoveredBlock19Stack3) visited: (recoveredBlock19Stack4).
            recoveredBlock19PC := 68.
        ].
        recoveredBlock19Step = 68 ifTrue: [
            (recoveredBlock19Stack1) addAll: (recoveredBlock19Stack2).
            recoveredBlock19PC := 70.
        ].
        recoveredBlock19Step = 70 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 71.
        ].
        recoveredBlock19Step = 71 ifTrue: [
            recoveredBlock19Stack2 := recoveredLocal5.
            recoveredBlock19PC := 74.
        ].
        recoveredBlock19Step = 74 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isSGHierarchyGO.
            recoveredBlock19PC := 76.
        ].
        recoveredBlock19Step = 76 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 80] ifFalse: [recoveredBlock19PC := 181].
        ].
        recoveredBlock19Step = 80 ifTrue: [
            recoveredBlock19PC := 81.
        ].
        recoveredBlock19Step = 81 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 82.
        ].
        recoveredBlock19Step = 82 ifTrue: [
            recoveredBlock19Stack2 := recoveredArg2.
            recoveredBlock19PC := 85.
        ].
        recoveredBlock19Step = 85 ifTrue: [
            recoveredBlock19Stack3 := recoveredLocal5.
            recoveredBlock19PC := 88.
        ].
        recoveredBlock19Step = 88 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) includes: (recoveredBlock19Stack3).
            recoveredBlock19PC := 90.
        ].
        recoveredBlock19Step = 90 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 181] ifFalse: [recoveredBlock19PC := 94].
        ].
        recoveredBlock19Step = 94 ifTrue: [
            recoveredBlock19PC := 95.
        ].
        recoveredBlock19Step = 95 ifTrue: [
            recoveredBlock19Stack1 := recoveredArg2.
            recoveredBlock19PC := 98.
        ].
        recoveredBlock19Step = 98 ifTrue: [
            recoveredBlock19Stack2 := recoveredLocal5.
            recoveredBlock19PC := 101.
        ].
        recoveredBlock19Step = 101 ifTrue: [
            (recoveredBlock19Stack1) add: (recoveredBlock19Stack2).
            recoveredBlock19PC := 103.
        ].
        recoveredBlock19Step = 103 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal5.
            recoveredBlock19PC := 106.
        ].
        recoveredBlock19Step = 106 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) interfaceGOs.
            recoveredBlock19PC := 108.
        ].
        recoveredBlock19Step = 108 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) size.
            recoveredBlock19PC := 110.
        ].
        recoveredBlock19Step = 110 ifTrue: [
            recoveredBlock19Stack2 := 1.
            recoveredBlock19PC := 112.
        ].
        recoveredBlock19Step = 112 ifTrue: [
            (recoveredBlock19Stack1 ~~ recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 126] ifFalse: [recoveredBlock19PC := 116].
        ].
        recoveredBlock19Step = 116 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal5.
            recoveredBlock19PC := 119.
        ].
        recoveredBlock19Step = 119 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) interfaceGOs.
            recoveredBlock19PC := 121.
        ].
        recoveredBlock19Step = 121 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) first.
            recoveredBlock19PC := 123.
        ].
        recoveredBlock19Step = 123 ifTrue: [
            recoveredBlock19PC := 133.
        ].
        recoveredBlock19Step = 126 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal5.
            recoveredBlock19PC := 129.
        ].
        recoveredBlock19Step = 129 ifTrue: [
            recoveredBlock19Stack2 := 'in'.
            recoveredBlock19PC := 131.
        ].
        recoveredBlock19Step = 131 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) getInterfaceGONamed: (recoveredBlock19Stack2).
            recoveredBlock19PC := 133.
        ].
        recoveredBlock19Step = 133 ifTrue: [
            recoveredLocal1 := recoveredBlock19Stack1.
            recoveredBlock19PC := 136.
        ].
        recoveredBlock19Step = 136 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal1.
            recoveredBlock19PC := 139.
        ].
        recoveredBlock19Step = 139 ifTrue: [
            (recoveredBlock19Stack1 ~~ nil) ifTrue: [recoveredBlock19PC := 152] ifFalse: [recoveredBlock19PC := 142].
        ].
        recoveredBlock19Step = 142 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal5.
            recoveredBlock19PC := 145.
        ].
        recoveredBlock19Step = 145 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) interfaceGOs.
            recoveredBlock19PC := 147.
        ].
        recoveredBlock19Step = 147 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) first.
            recoveredBlock19PC := 149.
        ].
        recoveredBlock19Step = 149 ifTrue: [
            recoveredLocal1 := recoveredBlock19Stack1.
            recoveredBlock19PC := 152.
        ].
        recoveredBlock19Step = 152 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal1.
            recoveredBlock19PC := 155.
        ].
        recoveredBlock19Step = 155 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) externalConnectorGO.
            recoveredBlock19PC := 156.
        ].
        recoveredBlock19Step = 156 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) connectionPoint.
            recoveredBlock19PC := 158.
        ].
        recoveredBlock19Step = 158 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) connectionWrappers.
            recoveredBlock19PC := 160.
        ].
        recoveredBlock19Step = 160 ifTrue: [
            recoveredBlock19Stack2 := [:recoveredBlock19Block160Arg1 | 
    | recoveredBlock19Block160Value0 recoveredBlock19Block160Value1 recoveredBlock19Block160Value2 recoveredBlock19Block160Value3 recoveredBlock19Block160Value4 |
    recoveredBlock19Block160Value0 := recoveredLocal2.
    recoveredBlock19Block160Value1 := recoveredBlock19Block160Arg1.
    recoveredBlock19Block160Value2 := recoveredArg2.
    recoveredBlock19Block160Value3 := (self) getInHierarchy: (recoveredBlock19Block160Value1) visited: (recoveredBlock19Block160Value2).
    recoveredBlock19Block160Value4 := (recoveredBlock19Block160Value0) addAll: (recoveredBlock19Block160Value3).
    recoveredBlock19Block160Value4
].
            recoveredBlock19PC := 179.
        ].
        recoveredBlock19Step = 179 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) do: (recoveredBlock19Stack2).
            recoveredBlock19PC := 181.
        ].
        recoveredBlock19Step = 181 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2056839c; bytecode file offset 0xe64cc0"
!SGControlGO methodsFor: 'recovered'!
getInHierarchy: recoveredArg1 visited: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) endConnectionPoint.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) getInternalConnectorGO.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) startConnectionPoint.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) getInternalConnectorGO.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) getConnectorGO.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) externalConnectorGO.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) connectionPoint.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) connectionWrappers.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Stack0 recoveredBlock59Stack1 recoveredBlock59Stack2 recoveredBlock59Stack3 recoveredBlock59Stack4 recoveredBlock59Stack5 recoveredBlock59PC recoveredBlock59Step recoveredBlock59Done recoveredBlock59Result |
    recoveredBlock59Stack0 := self.
    recoveredBlock59PC := 66.
    recoveredBlock59Done := false.
    [recoveredBlock59Done not] whileTrue: [
        recoveredBlock59Step := recoveredBlock59PC.
        recoveredBlock59Step = 66 ifTrue: [
            recoveredBlock59Stack1 := recoveredBlock59Arg1.
            recoveredBlock59PC := 67.
        ].
        recoveredBlock59Step = 67 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) endBlock.
            recoveredBlock59PC := 69.
        ].
        recoveredBlock59Step = 69 ifTrue: [
            recoveredLocal6 := recoveredBlock59Stack1.
            recoveredBlock59PC := 72.
        ].
        recoveredBlock59Step = 72 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal6.
            recoveredBlock59PC := 75.
        ].
        recoveredBlock59Step = 75 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) isCallGO.
            recoveredBlock59PC := 77.
        ].
        recoveredBlock59Step = 77 ifTrue: [
            (recoveredBlock59Stack1) ifTrue: [recoveredBlock59PC := 86] ifFalse: [recoveredBlock59PC := 80].
        ].
        recoveredBlock59Step = 80 ifTrue: [
            recoveredBlock59Stack1 := recoveredBlock59Arg1.
            recoveredBlock59PC := 81.
        ].
        recoveredBlock59Step = 81 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) startBlock.
            recoveredBlock59PC := 83.
        ].
        recoveredBlock59Step = 83 ifTrue: [
            recoveredLocal6 := recoveredBlock59Stack1.
            recoveredBlock59PC := 86.
        ].
        recoveredBlock59Step = 86 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal6.
            recoveredBlock59PC := 89.
        ].
        recoveredBlock59Step = 89 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) isCallGO.
            recoveredBlock59PC := 91.
        ].
        recoveredBlock59Step = 91 ifTrue: [
            (recoveredBlock59Stack1) ifTrue: [recoveredBlock59PC := 94] ifFalse: [recoveredBlock59PC := 102].
        ].
        recoveredBlock59Step = 94 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal3.
            recoveredBlock59PC := 97.
        ].
        recoveredBlock59Step = 97 ifTrue: [
            recoveredBlock59Stack2 := recoveredLocal6.
            recoveredBlock59PC := 100.
        ].
        recoveredBlock59Step = 100 ifTrue: [
            (recoveredBlock59Stack1) add: (recoveredBlock59Stack2).
            recoveredBlock59PC := 102.
        ].
        recoveredBlock59Step = 102 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal6.
            recoveredBlock59PC := 105.
        ].
        recoveredBlock59Step = 105 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) isInOutPortGO.
            recoveredBlock59PC := 107.
        ].
        recoveredBlock59Step = 107 ifTrue: [
            (recoveredBlock59Stack1) ifTrue: [recoveredBlock59PC := 110] ifFalse: [recoveredBlock59PC := 124].
        ].
        recoveredBlock59Step = 110 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal3.
            recoveredBlock59PC := 113.
        ].
        recoveredBlock59Step = 113 ifTrue: [
            recoveredBlock59Stack2 := self.
            recoveredBlock59PC := 114.
        ].
        recoveredBlock59Step = 114 ifTrue: [
            recoveredBlock59Stack3 := recoveredLocal6.
            recoveredBlock59PC := 117.
        ].
        recoveredBlock59Step = 117 ifTrue: [
            recoveredBlock59Stack4 := recoveredArg2.
            recoveredBlock59PC := 120.
        ].
        recoveredBlock59Step = 120 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) getOutHierarchy: (recoveredBlock59Stack3) visited: (recoveredBlock59Stack4).
            recoveredBlock59PC := 122.
        ].
        recoveredBlock59Step = 122 ifTrue: [
            (recoveredBlock59Stack1) addAll: (recoveredBlock59Stack2).
            recoveredBlock59PC := 124.
        ].
        recoveredBlock59Step = 124 ifTrue: [
            recoveredBlock59Stack1 := nil.
            recoveredBlock59PC := 125.
        ].
        recoveredBlock59Step = 125 ifTrue: [
            recoveredBlock59Stack2 := recoveredLocal6.
            recoveredBlock59PC := 128.
        ].
        recoveredBlock59Step = 128 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) isSGHierarchyGO.
            recoveredBlock59PC := 130.
        ].
        recoveredBlock59Step = 130 ifTrue: [
            (recoveredBlock59Stack2) ifTrue: [recoveredBlock59PC := 134] ifFalse: [recoveredBlock59PC := 231].
        ].
        recoveredBlock59Step = 134 ifTrue: [
            recoveredBlock59PC := 135.
        ].
        recoveredBlock59Step = 135 ifTrue: [
            recoveredBlock59Stack1 := nil.
            recoveredBlock59PC := 136.
        ].
        recoveredBlock59Step = 136 ifTrue: [
            recoveredBlock59Stack2 := recoveredArg2.
            recoveredBlock59PC := 139.
        ].
        recoveredBlock59Step = 139 ifTrue: [
            recoveredBlock59Stack3 := recoveredLocal6.
            recoveredBlock59PC := 142.
        ].
        recoveredBlock59Step = 142 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) includes: (recoveredBlock59Stack3).
            recoveredBlock59PC := 144.
        ].
        recoveredBlock59Step = 144 ifTrue: [
            (recoveredBlock59Stack2) ifTrue: [recoveredBlock59PC := 231] ifFalse: [recoveredBlock59PC := 148].
        ].
        recoveredBlock59Step = 148 ifTrue: [
            recoveredBlock59PC := 149.
        ].
        recoveredBlock59Step = 149 ifTrue: [
            recoveredBlock59Stack1 := recoveredArg2.
            recoveredBlock59PC := 152.
        ].
        recoveredBlock59Step = 152 ifTrue: [
            recoveredBlock59Stack2 := recoveredLocal6.
            recoveredBlock59PC := 155.
        ].
        recoveredBlock59Step = 155 ifTrue: [
            (recoveredBlock59Stack1) add: (recoveredBlock59Stack2).
            recoveredBlock59PC := 157.
        ].
        recoveredBlock59Step = 157 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal6.
            recoveredBlock59PC := 160.
        ].
        recoveredBlock59Step = 160 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) interfaceGOs.
            recoveredBlock59PC := 162.
        ].
        recoveredBlock59Step = 162 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) size.
            recoveredBlock59PC := 164.
        ].
        recoveredBlock59Step = 164 ifTrue: [
            recoveredBlock59Stack2 := 1.
            recoveredBlock59PC := 166.
        ].
        recoveredBlock59Step = 166 ifTrue: [
            (recoveredBlock59Stack1 ~~ recoveredBlock59Stack2) ifTrue: [recoveredBlock59PC := 180] ifFalse: [recoveredBlock59PC := 170].
        ].
        recoveredBlock59Step = 170 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal6.
            recoveredBlock59PC := 173.
        ].
        recoveredBlock59Step = 173 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) interfaceGOs.
            recoveredBlock59PC := 175.
        ].
        recoveredBlock59Step = 175 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) first.
            recoveredBlock59PC := 177.
        ].
        recoveredBlock59Step = 177 ifTrue: [
            recoveredBlock59PC := 187.
        ].
        recoveredBlock59Step = 180 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal6.
            recoveredBlock59PC := 183.
        ].
        recoveredBlock59Step = 183 ifTrue: [
            recoveredBlock59Stack2 := 'in'.
            recoveredBlock59PC := 185.
        ].
        recoveredBlock59Step = 185 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) getInterfaceGONamed: (recoveredBlock59Stack2).
            recoveredBlock59PC := 187.
        ].
        recoveredBlock59Step = 187 ifTrue: [
            recoveredLocal2 := recoveredBlock59Stack1.
            recoveredBlock59PC := 190.
        ].
        recoveredBlock59Step = 190 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal2.
            recoveredBlock59PC := 193.
        ].
        recoveredBlock59Step = 193 ifTrue: [
            (recoveredBlock59Stack1 ~~ nil) ifTrue: [recoveredBlock59PC := 200] ifFalse: [recoveredBlock59PC := 196].
        ].
        recoveredBlock59Step = 196 ifTrue: [
            recoveredBlock59Stack1 := nil.
            recoveredBlock59PC := 197.
        ].
        recoveredBlock59Step = 197 ifTrue: [
            recoveredBlock59PC := 231.
        ].
        recoveredBlock59Step = 200 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal2.
            recoveredBlock59PC := 203.
        ].
        recoveredBlock59Step = 203 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) externalConnectorGO.
            recoveredBlock59PC := 205.
        ].
        recoveredBlock59Step = 205 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) connectionPoint.
            recoveredBlock59PC := 207.
        ].
        recoveredBlock59Step = 207 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) connectionWrappers.
            recoveredBlock59PC := 209.
        ].
        recoveredBlock59Step = 209 ifTrue: [
            recoveredBlock59Stack2 := [:recoveredBlock59Block209Arg1 | 
    | recoveredBlock59Block209Value0 recoveredBlock59Block209Value1 recoveredBlock59Block209Value2 recoveredBlock59Block209Value3 recoveredBlock59Block209Value4 |
    recoveredBlock59Block209Value0 := recoveredLocal3.
    recoveredBlock59Block209Value1 := recoveredBlock59Block209Arg1.
    recoveredBlock59Block209Value2 := recoveredArg2.
    recoveredBlock59Block209Value3 := (self) getInHierarchy: (recoveredBlock59Block209Value1) visited: (recoveredBlock59Block209Value2).
    recoveredBlock59Block209Value4 := (recoveredBlock59Block209Value0) addAll: (recoveredBlock59Block209Value3).
    recoveredBlock59Block209Value4
].
            recoveredBlock59PC := 229.
        ].
        recoveredBlock59Step = 229 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) do: (recoveredBlock59Stack2).
            recoveredBlock59PC := 231.
        ].
        recoveredBlock59Step = 231 ifTrue: [
            recoveredBlock59Result := recoveredBlock59Stack1.
            recoveredBlock59Done := true.
        ].
    ].
    recoveredBlock59Result
].
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

