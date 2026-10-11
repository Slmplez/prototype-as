"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20000098; bytecode file offset 0x50f8c"
!EwSourceAdapter methodsFor: 'recovered'!
prepareToDrag
    ^self
! !

"extwid.ic method 0x200000b8; bytecode file offset 0x50f8c"
!EwSourceAdapter methodsFor: 'recovered'!
cleanUpAfterDrag
    ^self
! !

"extwid.ic method 0x20001348; bytecode file offset 0x52154"
!EwSourceAdapter methodsFor: 'recovered'!
fontStruct
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rc.
    recoveredValue1 := (recoveredValue0) fontStruct.
    ^recoveredValue1
! !

"extwid.ic method 0x20002e9c; bytecode file offset 0x53c68"
!EwSourceAdapter methodsFor: 'recovered'!
rc
    | recoveredValue0 |
    recoveredValue0 := rc.
    ^recoveredValue0
! !

"extwid.ic method 0x20004810; bytecode file offset 0x5561c"
!EwSourceAdapter methodsFor: 'recovered'!
isRegistered
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EwDragAndDropManager.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) isSourceAdapterRegistered: (self).
    ^recoveredValue2
! !

"extwid.ic method 0x20005218; bytecode file offset 0x56094"
!EwSourceAdapter methodsFor: 'recovered'!
fontStruct: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rc.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) fontStruct: (recoveredValue1).
    ^self
! !

"extwid.ic method 0x20006590; bytecode file offset 0x57404"
!EwSourceAdapter methodsFor: 'recovered'!
dragStartCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dragStartCallback := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006684; bytecode file offset 0x57568"
!EwSourceAdapter methodsFor: 'recovered'!
dragChangeCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dragChangeCallback := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200068bc; bytecode file offset 0x576a8"
!EwSourceAdapter methodsFor: 'recovered'!
dragCompleteCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dragCompleteCallback := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200069cc; bytecode file offset 0x577e8"
!EwSourceAdapter methodsFor: 'recovered'!
rc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    rc := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20007ad4; bytecode file offset 0x588d8"
!EwSourceAdapter methodsFor: 'recovered'!
register
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EwDragAndDropManager.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (self) widget.
    (recoveredValue1) registerSourceAdapter: (self) on: (recoveredValue2).
    ^self
! !

"extwid.ic method 0x20007aec; bytecode file offset 0x588d8"
!EwSourceAdapter methodsFor: 'recovered'!
deregister
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EwDragAndDropManager.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (self) widget.
    (recoveredValue1) deregisterSourceAdapter: (self) from: (recoveredValue2).
    ^self
! !

"extwid.ic method 0x20008750; bytecode file offset 0x59520"
!EwSourceAdapter methodsFor: 'recovered'!
beginDragUsing: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EwDragAndDropManager.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) inputEvent: (nil) clientData: (self) callData: (recoveredValue2).
    ^self
! !

"extwid.ic method 0x2000c998; bytecode file offset 0x5d774"
!EwSourceAdapter methodsFor: 'recovered'!
dragStartCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dragStartCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            dragStartCallback := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := dragStartCallback.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2000c9dc; bytecode file offset 0x5d7a8"
!EwSourceAdapter methodsFor: 'recovered'!
dragChangeCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dragChangeCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            dragChangeCallback := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := dragChangeCallback.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2000ca10; bytecode file offset 0x5d7dc"
!EwSourceAdapter methodsFor: 'recovered'!
dragCompleteCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dragCompleteCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            dragCompleteCallback := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := dragCompleteCallback.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x20018b98; bytecode file offset 0x69984"
!EwSourceAdapter methodsFor: 'recovered'!
setSourceInfoOn: recoveredArg1 atX: recoveredArg2 y: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) widget.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) sourceItems: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) images: (recoveredValue7).
    recoveredValue8 := Array.
    recoveredValue9 := (self) widget.
    recoveredValue10 := (self) rc.
    recoveredValue11 := (recoveredValue9) ewHeightUsing: (recoveredValue10).
    recoveredValue12 := (recoveredValue11) negated.
    recoveredValue13 := (0) @ (recoveredValue12).
    recoveredValue14 := (recoveredValue8) with: (recoveredValue13).
    (recoveredValue3) offsets: (recoveredValue14).
    ^self
! !

"extwid.ic method 0x2001fa88; bytecode file offset 0x7088c"
!EwSourceAdapter methodsFor: 'recovered'!
deconfigure
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    super deconfigure.
    recoveredValue0 := EwDragAndDropManager.
    recoveredValue1 := (recoveredValue0) default.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) buttonMotionMask.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := (self) widget.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := XmNdragDetectCallback.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue5) removeCallback: (recoveredValue6) receiver: (recoveredValue7) selector: ('dragDetect:clientData:callData:') clientData: (self).
    recoveredValue8 := KeyPressMask.
    recoveredValue9 := KeyReleaseMask.
    recoveredValue10 := (recoveredValue8) | (recoveredValue9).
    recoveredValue11 := ButtonPressMask.
    recoveredValue12 := (recoveredValue10) | (recoveredValue11).
    recoveredValue13 := ButtonReleaseMask.
    recoveredValue14 := (recoveredValue12) | (recoveredValue13).
    recoveredValue15 := recoveredLocal2.
    recoveredValue16 := (recoveredValue14) | (recoveredValue15).
    recoveredValue17 := recoveredLocal1.
    (recoveredValue4) removeEventHandler: (recoveredValue16) receiver: (recoveredValue17) selector: ('inputEvent:clientData:callData:') clientData: (self).
    ^self
! !

"extwid.ic method 0x20023794; bytecode file offset 0x745ac"
!EwSourceAdapter methodsFor: 'recovered'!
configure
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    super configure.
    recoveredValue0 := EwDragAndDropManager.
    recoveredValue1 := (recoveredValue0) default.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) buttonMotionMask.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := (self) widget.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := XmNdragDetectCallback.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue5) addCallback: (recoveredValue6) receiver: (recoveredValue7) selector: ('dragDetect:clientData:callData:') clientData: (self).
    recoveredValue8 := KeyPressMask.
    recoveredValue9 := KeyReleaseMask.
    recoveredValue10 := (recoveredValue8) | (recoveredValue9).
    recoveredValue11 := ButtonPressMask.
    recoveredValue12 := (recoveredValue10) | (recoveredValue11).
    recoveredValue13 := ButtonReleaseMask.
    recoveredValue14 := (recoveredValue12) | (recoveredValue13).
    recoveredValue15 := recoveredLocal2.
    recoveredValue16 := (recoveredValue14) | (recoveredValue15).
    recoveredValue17 := recoveredLocal1.
    (recoveredValue4) addEventHandler: (recoveredValue16) receiver: (recoveredValue17) selector: ('inputEvent:clientData:callData:') clientData: (self).
    recoveredValue18 := EwRenderContext.
    recoveredValue19 := (recoveredValue18) new.
    recoveredValue20 := CgFontStruct.
    recoveredValue21 := (recoveredValue20) default.
    recoveredValue22 := (recoveredValue19) fontStruct: (recoveredValue21).
    (self) rc: (recoveredValue22).
    ^self
! !

