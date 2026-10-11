"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005b740; bytecode file offset 0x95801c"
!AbtEdgeConstraint methodsFor: 'recovered'!
edgeTypeBottom
    | recoveredValue0 |
    recoveredValue0 := EdgeTypeBottom.
    edgeType := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2005b74c; bytecode file offset 0x95801c"
!AbtEdgeConstraint methodsFor: 'recovered'!
edgeTypeTop
    | recoveredValue0 |
    recoveredValue0 := EdgeTypeTop.
    edgeType := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2005b758; bytecode file offset 0x95801c"
!AbtEdgeConstraint methodsFor: 'recovered'!
edgeTypeLeft
    | recoveredValue0 |
    recoveredValue0 := EdgeTypeLeft.
    edgeType := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2005b764; bytecode file offset 0x95801c"
!AbtEdgeConstraint methodsFor: 'recovered'!
edgeTypeRight
    | recoveredValue0 |
    recoveredValue0 := EdgeTypeRight.
    edgeType := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2006091c; bytecode file offset 0x95d1d8"
!AbtEdgeConstraint methodsFor: 'recovered'!
isAttachSelfOpposite
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attachment.
    recoveredValue1 := XmATTACHSELFOPPOSITE.
    recoveredValue2 := (recoveredValue0) == (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20068054; bytecode file offset 0x965b90"
!AbtEdgeConstraint methodsFor: 'recovered'!
offset
    | recoveredValue0 |
    recoveredValue0 := offset.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069ef8; bytecode file offset 0x966bdc"
!AbtEdgeConstraint methodsFor: 'recovered'!
position
    | recoveredValue0 |
    recoveredValue0 := position.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a394; bytecode file offset 0x967a18"
!AbtEdgeConstraint methodsFor: 'recovered'!
attachment
    | recoveredValue0 |
    recoveredValue0 := attachment.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b5e0; bytecode file offset 0x96873c"
!AbtEdgeConstraint methodsFor: 'recovered'!
edgeType
    | recoveredValue0 |
    recoveredValue0 := edgeType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075934; bytecode file offset 0x9757c8"
!AbtEdgeConstraint methodsFor: 'recovered'!
isAttachment
    ^true
! !

"ASDBase.ic method 0x200890dc; bytecode file offset 0x985bf8"
!AbtEdgeConstraint methodsFor: 'recovered'!
attachPosition
    | recoveredValue0 |
    recoveredValue0 := XmATTACHPOSITION.
    (self) attachment: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200c2750; bytecode file offset 0x9bf474"
!AbtEdgeConstraint methodsFor: 'recovered'!
edgeType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    edgeType := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200dfe7c; bytecode file offset 0x9dc7b4"
!AbtEdgeConstraint methodsFor: 'recovered'!
attachOppositeForm
    | recoveredValue0 |
    recoveredValue0 := XmATTACHOPPOSITEFORM.
    (self) attachment: (recoveredValue0).
    (self) position: (nil).
    ^self
! !

"ASDBase.ic method 0x200dfe90; bytecode file offset 0x9dc7b4"
!AbtEdgeConstraint methodsFor: 'recovered'!
attachSelfOpposite
    | recoveredValue0 |
    recoveredValue0 := XmATTACHSELFOPPOSITE.
    (self) attachment: (recoveredValue0).
    (self) position: (nil).
    ^self
! !

"ASDBase.ic method 0x200dfea4; bytecode file offset 0x9dc7b4"
!AbtEdgeConstraint methodsFor: 'recovered'!
attachSelf
    | recoveredValue0 |
    recoveredValue0 := XmATTACHSELF.
    (self) attachment: (recoveredValue0).
    (self) position: (nil).
    ^self
! !

"ASDBase.ic method 0x200dfeb8; bytecode file offset 0x9dc7b4"
!AbtEdgeConstraint methodsFor: 'recovered'!
attachView
    | recoveredValue0 |
    recoveredValue0 := XmATTACHWIDGET.
    (self) attachment: (recoveredValue0).
    (self) position: (nil).
    ^self
! !

"ASDBase.ic method 0x200dfecc; bytecode file offset 0x9dc7b4"
!AbtEdgeConstraint methodsFor: 'recovered'!
attachForm
    | recoveredValue0 |
    recoveredValue0 := XmATTACHFORM.
    (self) attachment: (recoveredValue0).
    (self) position: (nil).
    ^self
! !

"ASDBase.ic method 0x200dfee0; bytecode file offset 0x9dc7b4"
!AbtEdgeConstraint methodsFor: 'recovered'!
attachNone
    | recoveredValue0 |
    recoveredValue0 := XmATTACHNONE.
    (self) attachment: (recoveredValue0).
    (self) position: (nil).
    ^self
! !

"ASDBase.ic method 0x200dfef4; bytecode file offset 0x9dc7b4"
!AbtEdgeConstraint methodsFor: 'recovered'!
attachOppositeView
    | recoveredValue0 |
    recoveredValue0 := XmATTACHOPPOSITEWIDGET.
    (self) attachment: (recoveredValue0).
    (self) position: (nil).
    ^self
! !

"ASDBase.ic method 0x200e8950; bytecode file offset 0x9e521c"
!AbtEdgeConstraint methodsFor: 'recovered'!
attachment: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    attachment := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    (self) signalEvent: ('attachmentChanged') with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2013d3ec; bytecode file offset 0xa39cac"
!AbtEdgeConstraint methodsFor: 'recovered'!
isConstrained
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) attachment.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := XmATTACHNONE.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) offset.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201643f8; bytecode file offset 0xa60cb4"
!AbtEdgeConstraint methodsFor: 'recovered'!
offset: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := offset.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            offset := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'offsetChanged'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) signalEvent: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20200d48; bytecode file offset 0xafd608"
!AbtEdgeConstraint methodsFor: 'recovered'!
position: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := position.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            position := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := position.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := position.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            position := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'positionChanged'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) signalEvent: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

