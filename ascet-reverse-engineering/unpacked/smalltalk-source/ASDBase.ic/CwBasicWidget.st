"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003330; bytecode file offset 0x8ffcfc"
!CwBasicWidget methodsFor: 'recovered'!
abtPrimaryCommonWidget
    ^self
! !

"ASDBase.ic method 0x200276cc; bytecode file offset 0x924260"
!CwBasicWidget methodsFor: 'recovered'!
wbHasOSWidget
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) osWidget.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040e70; bytecode file offset 0x93d83c"
!CwBasicWidget methodsFor: 'recovered'!
wbCursorPosition
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := osWidget.
    recoveredValue1 := (recoveredValue0) wbCursorPosition.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20059898; bytecode file offset 0x956284"
!CwBasicWidget methodsFor: 'recovered'!
abtContainsPointRoot: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) abtBoundingBoxRoot.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) containsPoint: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2007bcfc; bytecode file offset 0x97c330"
!CwBasicWidget methodsFor: 'recovered'!
wbIsComboBox
    ^false
! !

"ASDBase.ic method 0x2007c624; bytecode file offset 0x97c330"
!CwBasicWidget methodsFor: 'recovered'!
isMenuItem
    ^false
! !

"ASDBase.ic method 0x200995a4; bytecode file offset 0x995e68"
!CwBasicWidget methodsFor: 'recovered'!
menu: recoveredArg1 owner: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (recoveredValue0) wbRegisterPopupFor: (self) owner: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a0204; bytecode file offset 0x99cad0"
!CwBasicWidget methodsFor: 'recovered'!
originRoot
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (0) @ (0).
    recoveredValue1 := (self) translateCoords: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200a0214; bytecode file offset 0x99cad0"
!CwBasicWidget methodsFor: 'recovered'!
tobTBOriginRoot
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (0) @ (0).
    recoveredValue1 := (self) translateCoords: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b1c20; bytecode file offset 0x9ae4e0"
!CwBasicWidget methodsFor: 'recovered'!
abtIsMapped
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('PTR') = ('PTR7333').
    recoveredValue1 := (self) isMapped.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011d820; bytecode file offset 0xa1a0dc"
!CwBasicWidget methodsFor: 'recovered'!
userData: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) wbPropertyAt: ('XmNuserData') put: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) wbPropertyAt: (1) put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2012a000; bytecode file offset 0xa268b8"
!CwBasicWidget methodsFor: 'recovered'!
scrolledWidget
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := cwParent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isTightlyCoupled.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := cwParent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015cb60; bytecode file offset 0xa59444"
!CwBasicWidget methodsFor: 'recovered'!
userData
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNuserData.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) wbIsDictionary.
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
            recoveredStack1 := super userData.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'XmNuserData'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) wbPropertyAt: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203111a0; bytecode file offset 0xc0da6c"
!CwBasicWidget methodsFor: 'recovered'!
addUniqueEditPolicyEventHandler: recoveredArg1 receiver: recoveredArg2 selector: recoveredArg3 clientData: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := CwCallbackRec.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (recoveredValue0) receiver: (recoveredValue1) selector: (recoveredValue2) clientData: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) handlers.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue5) at: (recoveredValue6).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := [
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 |
    recoveredBlock29Value0 := recoveredArg1.
    recoveredBlock29Value1 := recoveredArg2.
    recoveredBlock29Value2 := recoveredArg3.
    recoveredBlock29Value3 := recoveredArg4.
    recoveredBlock29Value4 := (self) addEventHandler: (recoveredBlock29Value0) receiver: (recoveredBlock29Value1) selector: (recoveredBlock29Value2) clientData: (recoveredBlock29Value3).
    recoveredBlock29Value4
].
    (recoveredValue7) indexOf: (recoveredValue8) ifAbsent: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x2033e22c; bytecode file offset 0xc3aaf8"
!CwBasicWidget methodsFor: 'recovered'!
abtWidgetAtPointRoot: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtIsMapped.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtContainsPointRoot: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isComposite.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Arg1.
            recoveredBlock26PC := 33.
        ].
        recoveredBlock26Step = 33 ifTrue: [
            recoveredBlock26Stack2 := recoveredArg1.
            recoveredBlock26PC := 36.
        ].
        recoveredBlock26Step = 36 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) abtWidgetAtPointRoot: (recoveredBlock26Stack2).
            recoveredBlock26PC := 38.
        ].
        recoveredBlock26Step = 38 ifTrue: [
            recoveredLocal1 := recoveredBlock26Stack1.
            recoveredBlock26PC := 41.
        ].
        recoveredBlock26Step = 41 ifTrue: [
            recoveredBlock26Stack1 := nil.
            recoveredBlock26PC := 42.
        ].
        recoveredBlock26Step = 42 ifTrue: [
            recoveredBlock26Stack2 := recoveredLocal1.
            recoveredBlock26PC := 45.
        ].
        recoveredBlock26Step = 45 ifTrue: [
            (recoveredBlock26Stack2 == nil) ifTrue: [recoveredBlock26PC := 53] ifFalse: [recoveredBlock26PC := 48].
        ].
        recoveredBlock26Step = 48 ifTrue: [
            recoveredBlock26PC := 49.
        ].
        recoveredBlock26Step = 49 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal1.
            recoveredBlock26PC := 52.
        ].
        recoveredBlock26Step = 52 ifTrue: [
            ^recoveredBlock26Stack1
        ].
        recoveredBlock26Step = 53 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) reverseDo: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

