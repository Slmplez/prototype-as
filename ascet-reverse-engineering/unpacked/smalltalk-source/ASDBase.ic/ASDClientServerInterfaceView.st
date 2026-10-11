"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2007ece4; bytecode file offset 0x97c330"
!ASDClientServerInterfaceView methodsFor: 'recovered'!
canEditMethodImplementation
    ^false
! !

"ASDBase.ic method 0x2023cc04; bytecode file offset 0xb394f0"
!ASDClientServerInterfaceView methodsFor: 'recovered'!
canDeleteElements
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super canDeleteElements.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
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
            recoveredStack0 := (recoveredStack0) selectedElements.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:block280ddd84Arg1 | 
    | block280ddd84Value0 block280ddd84Value1 |
    block280ddd84Value0 := block280ddd84Arg1.
    block280ddd84Value1 := (block280ddd84Value0) isReturn.
    block280ddd84Value1
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c8a6c; bytecode file offset 0xcc535c"
!ASDClientServerInterfaceView methodsFor: 'recovered'!
writeDefaultToolbarConfiguration
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal3.
    recoveredValue7 := recoveredValue6.
    (recoveredValue7) add: ('GeneralFileSave').
    recoveredValue8 := recoveredValue6.
    (recoveredValue8) add: ('Separator').
    recoveredValue9 := recoveredValue6.
    (recoveredValue9) add: ('GeneralCut').
    recoveredValue10 := recoveredValue6.
    (recoveredValue10) add: ('GeneralCopy').
    recoveredValue11 := recoveredValue6.
    (recoveredValue11) add: ('GeneralPaste').
    recoveredValue12 := recoveredValue6.
    (recoveredValue12) add: ('GeneralDelete').
    recoveredValue13 := recoveredValue6.
    (recoveredValue13) add: ('Separator').
    recoveredValue14 := recoveredValue6.
    (recoveredValue14) add: ('GeneralEditImplementation').
    recoveredValue15 := recoveredValue6.
    (recoveredValue15) add: ('Separator').
    recoveredValue16 := recoveredValue6.
    (recoveredValue16) add: ('GeneralComponentAdd').
    recoveredValue17 := recoveredValue6.
    (recoveredValue17) add: ('GeneralMethodSignatureAdd').
    recoveredValue18 := (self) userInterfaceManager.
    recoveredValue19 := recoveredLocal3.
    recoveredValue20 := (self) toolbarGeneralsName.
    (recoveredValue18) writeToolbarConfiguration: (recoveredValue19) toolbar: (recoveredValue20).
    ^self
! !

"ASDBase.ic method 0x20429108; bytecode file offset 0xd25a08"
!ASDClientServerInterfaceView methodsFor: 'recovered'!
availableToolbarButtons
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := OrderedCollection.
    recoveredValue7 := (recoveredValue6) new.
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal3.
    (recoveredValue8) add: ('GeneralEditImplementation').
    recoveredValue9 := recoveredLocal3.
    (recoveredValue9) add: ('Separator').
    recoveredValue10 := recoveredLocal3.
    (recoveredValue10) add: ('GeneralCut').
    recoveredValue11 := recoveredLocal3.
    (recoveredValue11) add: ('GeneralCopy').
    recoveredValue12 := recoveredLocal3.
    (recoveredValue12) add: ('GeneralPaste').
    recoveredValue13 := recoveredLocal3.
    (recoveredValue13) add: ('GeneralDelete').
    recoveredValue14 := recoveredLocal3.
    (recoveredValue14) add: ('GeneralFileSave').
    recoveredValue15 := recoveredLocal3.
    (recoveredValue15) add: ('GeneralComponentAdd').
    recoveredValue16 := recoveredLocal3.
    (recoveredValue16) add: ('GeneralMethodSignatureAdd').
    recoveredValue17 := recoveredLocal3.
    (recoveredValue17) add: ('GeneralOptions').
    recoveredValue18 := recoveredLocal3.
    (recoveredValue18) add: ('EditorNavigateUp').
    recoveredValue19 := recoveredLocal2.
    (recoveredValue19) add: ('Separator').
    recoveredValue20 := recoveredLocal4.
    recoveredValue21 := (self) toolbarGeneralsName.
    recoveredValue22 := recoveredLocal3.
    (recoveredValue20) at: (recoveredValue21) put: (recoveredValue22).
    recoveredValue23 := recoveredLocal4.
    recoveredValue24 := (self) toolbarElementsName.
    recoveredValue25 := recoveredLocal2.
    (recoveredValue23) at: (recoveredValue24) put: (recoveredValue25).
    recoveredValue26 := recoveredLocal4.
    recoveredValue27 := (self) toolbarBasicBlocksName.
    recoveredValue28 := recoveredLocal1.
    (recoveredValue26) at: (recoveredValue27) put: (recoveredValue28).
    recoveredValue29 := recoveredLocal4.
    ^recoveredValue29
! !

