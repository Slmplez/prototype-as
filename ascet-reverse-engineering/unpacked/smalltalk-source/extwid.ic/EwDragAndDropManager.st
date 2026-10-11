"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x200007bc; bytecode file offset 0x516bc"
!EwDragAndDropManager methodsFor: 'recovered'!
defaultButton
    | recoveredValue0 |
    recoveredValue0 := ButtonDrag.
    ^recoveredValue0
! !

"extwid.ic method 0x20000d28; bytecode file offset 0x52154"
!EwDragAndDropManager methodsFor: 'recovered'!
defaultCursorImages
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stockCursorImages.
    recoveredValue1 := (recoveredValue0) copy.
    ^recoveredValue1
! !

"extwid.ic method 0x20001588; bytecode file offset 0x5234c"
!EwDragAndDropManager methodsFor: 'recovered'!
endSession
    session := nil.
    ^self
! !

"extwid.ic method 0x20001af8; bytecode file offset 0x52a74"
!EwDragAndDropManager methodsFor: 'recovered'!
isSourceAdapterRegistered: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) sourceRegistry.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includes: (recoveredValue1).
    ^recoveredValue2
! !

"extwid.ic method 0x20001c98; bytecode file offset 0x52a74"
!EwDragAndDropManager methodsFor: 'recovered'!
isTargetAdapterRegistered: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) targetRegistry.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includes: (recoveredValue1).
    ^recoveredValue2
! !

"extwid.ic method 0x20001dc8; bytecode file offset 0x52b98"
!EwDragAndDropManager methodsFor: 'recovered'!
targetAdapterUnderCursor
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CwBasicWidget.
    recoveredValue1 := (recoveredValue0) widgetUnderPointer.
    recoveredValue2 := (self) targetAdapterForWidget: (recoveredValue1).
    ^recoveredValue2
! !

"extwid.ic method 0x20002470; bytecode file offset 0x5326c"
!EwDragAndDropManager methodsFor: 'recovered'!
freeNullCursor
    | recoveredValue0 |
    recoveredValue0 := (self) nullCursor.
    (recoveredValue0) freeCursor.
    ^self
! !

"extwid.ic method 0x200026ec; bytecode file offset 0x534f0"
!EwDragAndDropManager methodsFor: 'recovered'!
button
    | recoveredValue0 |
    recoveredValue0 := button.
    ^recoveredValue0
! !

"extwid.ic method 0x2000287c; bytecode file offset 0x53678"
!EwDragAndDropManager methodsFor: 'recovered'!
cursors
    | recoveredValue0 |
    recoveredValue0 := cursors.
    ^recoveredValue0
! !

"extwid.ic method 0x200029c4; bytecode file offset 0x53810"
!EwDragAndDropManager methodsFor: 'recovered'!
cursorImages
    | recoveredValue0 |
    recoveredValue0 := cursorImages.
    ^recoveredValue0
! !

"extwid.ic method 0x20002bb4; bytecode file offset 0x53998"
!EwDragAndDropManager methodsFor: 'recovered'!
cursorImageOffsets
    | recoveredValue0 |
    recoveredValue0 := cursorImageOffsets.
    ^recoveredValue0
! !

"extwid.ic method 0x20002d0c; bytecode file offset 0x53ae8"
!EwDragAndDropManager methodsFor: 'recovered'!
keys
    | recoveredValue0 |
    recoveredValue0 := keys.
    ^recoveredValue0
! !

"extwid.ic method 0x20002ea4; bytecode file offset 0x53c68"
!EwDragAndDropManager methodsFor: 'recovered'!
isInProgress
    | recoveredValue0 |
    recoveredValue0 := isInProgress.
    ^recoveredValue0
! !

"extwid.ic method 0x20002f8c; bytecode file offset 0x53da8"
!EwDragAndDropManager methodsFor: 'recovered'!
nullCursor
    | recoveredValue0 |
    recoveredValue0 := nullCursor.
    ^recoveredValue0
! !

"extwid.ic method 0x20003014; bytecode file offset 0x53eb0"
!EwDragAndDropManager methodsFor: 'recovered'!
operations
    | recoveredValue0 |
    recoveredValue0 := operations.
    ^recoveredValue0
! !

"extwid.ic method 0x20003164; bytecode file offset 0x53fc0"
!EwDragAndDropManager methodsFor: 'recovered'!
session
    | recoveredValue0 |
    recoveredValue0 := session.
    ^recoveredValue0
! !

"extwid.ic method 0x2000324c; bytecode file offset 0x540a8"
!EwDragAndDropManager methodsFor: 'recovered'!
sourceRegistry
    | recoveredValue0 |
    recoveredValue0 := sourceRegistry.
    ^recoveredValue0
! !

"extwid.ic method 0x20003388; bytecode file offset 0x54164"
!EwDragAndDropManager methodsFor: 'recovered'!
stockCursorImages
    | recoveredValue0 |
    recoveredValue0 := stockCursorImages.
    ^recoveredValue0
! !

"extwid.ic method 0x20003448; bytecode file offset 0x5421c"
!EwDragAndDropManager methodsFor: 'recovered'!
targetRegistry
    | recoveredValue0 |
    recoveredValue0 := targetRegistry.
    ^recoveredValue0
! !

"extwid.ic method 0x200034b0; bytecode file offset 0x542e4"
!EwDragAndDropManager methodsFor: 'recovered'!
threshold
    | recoveredValue0 |
    recoveredValue0 := threshold.
    ^recoveredValue0
! !

"extwid.ic method 0x2000477c; bytecode file offset 0x55548"
!EwDragAndDropManager methodsFor: 'recovered'!
startSession
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EwDragAndDropSession.
    recoveredValue1 := (recoveredValue0) new.
    session := recoveredValue1.
    ^self
! !

"extwid.ic method 0x20004aac; bytecode file offset 0x558e8"
!EwDragAndDropManager methodsFor: 'recovered'!
resetCursors
    | recoveredValue0 |
    recoveredValue0 := (self) defaultCursors.
    (self) cursors: (recoveredValue0).
    ^self
! !

"extwid.ic method 0x200054bc; bytecode file offset 0x56288"
!EwDragAndDropManager methodsFor: 'recovered'!
destroy
    (self) freeNullCursor.
    (self) freeStockCursorImages.
    ^self
! !

"extwid.ic method 0x20005b80; bytecode file offset 0x569dc"
!EwDragAndDropManager methodsFor: 'recovered'!
targetAdapterForWidget: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) targetRegistry.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x20005b94; bytecode file offset 0x569dc"
!EwDragAndDropManager methodsFor: 'recovered'!
cursorForOperation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) cursors.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x20005ba8; bytecode file offset 0x569dc"
!EwDragAndDropManager methodsFor: 'recovered'!
cursorImageForOperation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) cursorImages.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x20005bd0; bytecode file offset 0x569dc"
!EwDragAndDropManager methodsFor: 'recovered'!
cursorImageOffsetForOperation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) cursorImageOffsets.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x20005be4; bytecode file offset 0x569dc"
!EwDragAndDropManager methodsFor: 'recovered'!
cursorImageOffsetFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) cursorImageOffsets.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x20005bf8; bytecode file offset 0x569dc"
!EwDragAndDropManager methodsFor: 'recovered'!
cursorImageFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) cursorImages.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x20005c0c; bytecode file offset 0x569dc"
!EwDragAndDropManager methodsFor: 'recovered'!
sourceAdapterForWidget: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) sourceRegistry.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x20005dbc; bytecode file offset 0x56b88"
!EwDragAndDropManager methodsFor: 'recovered'!
assignCursor: recoveredArg1 toOperation: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) cursors.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"extwid.ic method 0x200061e4; bytecode file offset 0x56fb4"
!EwDragAndDropManager methodsFor: 'recovered'!
clearCursorForOperation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) cursors.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := None.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"extwid.ic method 0x20006320; bytecode file offset 0x5710c"
!EwDragAndDropManager methodsFor: 'recovered'!
button: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    button := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006378; bytecode file offset 0x57284"
!EwDragAndDropManager methodsFor: 'recovered'!
cursors: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cursors := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006558; bytecode file offset 0x57404"
!EwDragAndDropManager methodsFor: 'recovered'!
cursorImages: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cursorImages := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006724; bytecode file offset 0x57568"
!EwDragAndDropManager methodsFor: 'recovered'!
cursorImageOffsets: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cursorImageOffsets := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006804; bytecode file offset 0x576a8"
!EwDragAndDropManager methodsFor: 'recovered'!
keys: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    keys := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006944; bytecode file offset 0x577e8"
!EwDragAndDropManager methodsFor: 'recovered'!
isInProgress: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    isInProgress := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006aa0; bytecode file offset 0x578dc"
!EwDragAndDropManager methodsFor: 'recovered'!
nullCursor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nullCursor := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006b64; bytecode file offset 0x57998"
!EwDragAndDropManager methodsFor: 'recovered'!
operations: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    operations := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006ee0; bytecode file offset 0x57d1c"
!EwDragAndDropManager methodsFor: 'recovered'!
threshold: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    threshold := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20007974; bytecode file offset 0x58758"
!EwDragAndDropManager methodsFor: 'recovered'!
registerTargetAdapter: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) targetRegistry.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) primaryWidget.
    recoveredValue3 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

"extwid.ic method 0x20007988; bytecode file offset 0x58758"
!EwDragAndDropManager methodsFor: 'recovered'!
registerSourceAdapter: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) sourceRegistry.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) primaryWidget.
    recoveredValue3 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

"extwid.ic method 0x20007a28; bytecode file offset 0x587fc"
!EwDragAndDropManager methodsFor: 'recovered'!
buttonMotionMask
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Button1MotionMask.
    recoveredValue1 := Button2MotionMask.
    recoveredValue2 := (recoveredValue0) | (recoveredValue1).
    recoveredValue3 := Button3MotionMask.
    recoveredValue4 := (recoveredValue2) | (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x20008368; bytecode file offset 0x59154"
!EwDragAndDropManager methodsFor: 'recovered'!
deregisterTargetAdapter: recoveredArg1 from: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) targetRegistry.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) primaryWidget.
    recoveredValue3 := [].
    (recoveredValue0) removeKey: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^self
! !

"extwid.ic method 0x20008380; bytecode file offset 0x59154"
!EwDragAndDropManager methodsFor: 'recovered'!
deregisterSourceAdapter: recoveredArg1 from: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) sourceRegistry.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) primaryWidget.
    recoveredValue3 := [].
    (recoveredValue0) removeKey: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^self
! !

"extwid.ic method 0x20008a98; bytecode file offset 0x59868"
!EwDragAndDropManager methodsFor: 'recovered'!
processButtonPress: recoveredArg1 from: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) startSession.
    recoveredValue0 := (self) session.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) processButtonPress: (recoveredValue1) from: (recoveredValue2).
    ^self
! !

"extwid.ic method 0x20008be4; bytecode file offset 0x599b8"
!EwDragAndDropManager methodsFor: 'recovered'!
resetCursorImagesAndOffset
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) defaultCursorImages.
    (self) cursorImages: (recoveredValue0).
    recoveredValue1 := (self) defaultCursorImageOffsets.
    (self) cursorImageOffsets: (recoveredValue1).
    ^self
! !

"extwid.ic method 0x2000a6ac; bytecode file offset 0x5b480"
!EwDragAndDropManager methodsFor: 'recovered'!
freeStockCursorImages
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) stockCursorImages.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block28005484Arg1 | 
    | block28005484Value0 block28005484Value1 |
    block28005484Value0 := block28005484Arg1.
    block28005484Value1 := (block28005484Value0) freeIcon.
    block28005484Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2000ad04; bytecode file offset 0x5bad4"
!EwDragAndDropManager methodsFor: 'recovered'!
clearCursorImageForOperation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) cursorImages.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (nil).
    recoveredValue2 := (self) cursorImageOffsets.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (recoveredValue3) put: (nil).
    ^self
! !

"extwid.ic method 0x2000ae94; bytecode file offset 0x5bc64"
!EwDragAndDropManager methodsFor: 'recovered'!
assignCursorImage: recoveredArg1 offset: recoveredArg2 toOperation: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) cursorImages.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    recoveredValue3 := (self) cursorImageOffsets.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg2.
    (recoveredValue3) at: (recoveredValue4) put: (recoveredValue5).
    ^self
! !

"extwid.ic method 0x2000af0c; bytecode file offset 0x5bce8"
!EwDragAndDropManager methodsFor: 'recovered'!
defaultOperations
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := XmMOVE.
    recoveredValue2 := XmCOPY.
    recoveredValue3 := XmLINK.
    recoveredValue4 := XmILLEGAL.
    recoveredValue5 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^recoveredValue5
! !

"extwid.ic method 0x2000b610; bytecode file offset 0x5c3e4"
!EwDragAndDropManager methodsFor: 'recovered'!
keyboardVote: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    #()
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2000b744; bytecode file offset 0x5c520"
!EwDragAndDropManager methodsFor: 'recovered'!
processButtonRelease: recoveredArg1 from: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) session.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) session.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) processButtonRelease: (recoveredStack1) from: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2000b754; bytecode file offset 0x5c520"
!EwDragAndDropManager methodsFor: 'recovered'!
processKeyEvent: recoveredArg1 from: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) session.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) session.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) processKeyEvent: (recoveredStack1) from: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2000c148; bytecode file offset 0x5cf1c"
!EwDragAndDropManager methodsFor: 'recovered'!
registerInProgress: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    (self) isInProgress: (true).
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ButtonReleaseMask.
    (recoveredValue0) addEventHandler: (recoveredValue1) receiver: (self) selector: ('deregisterInProgress:clientData:callData:') clientData: (nil).
    ^self
! !

"extwid.ic method 0x2000e1a0; bytecode file offset 0x5ef70"
!EwDragAndDropManager methodsFor: 'recovered'!
drawDuringDrag: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) session.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) session.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) drawDuringDrag: (recoveredStack1).
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

"extwid.ic method 0x2001183c; bytecode file offset 0x62614"
!EwDragAndDropManager methodsFor: 'recovered'!
cursorFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) cursors.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := None.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) nullCursor.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x200136dc; bytecode file offset 0x644b0"
!EwDragAndDropManager methodsFor: 'recovered'!
deconfigure: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) primaryWidget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceAdapterForWidget: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) deconfigure.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) primaryWidget.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetAdapterForWidget: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) deconfigure.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x200150f0; bytecode file offset 0x65ed8"
!EwDragAndDropManager methodsFor: 'recovered'!
currentButtonMotionMask
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) button.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := ButtonDrag.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonMotionMask.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := Button1MotionMask.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := Button2MotionMask.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := Button3MotionMask.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) button.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20017500; bytecode file offset 0x682e4"
!EwDragAndDropManager methodsFor: 'recovered'!
defaultCursors
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := IdentityDictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := XmILLEGAL.
    recoveredValue4 := None.
    (recoveredValue2) at: (recoveredValue3) put: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := XmMOVE.
    recoveredValue7 := None.
    (recoveredValue5) at: (recoveredValue6) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := XmCOPY.
    recoveredValue10 := None.
    (recoveredValue8) at: (recoveredValue9) put: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := XmLINK.
    recoveredValue13 := None.
    (recoveredValue11) at: (recoveredValue12) put: (recoveredValue13).
    ^recoveredValue1
! !

"extwid.ic method 0x20018110; bytecode file offset 0x68ef8"
!EwDragAndDropManager methodsFor: 'recovered'!
deregisterInProgress: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := ButtonRelease.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentButtonMotionMask.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyMask: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) isInProgress: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := ButtonReleaseMask.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := 'deregisterInProgress:clientData:callData:'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) removeEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2001994c; bytecode file offset 0x6a73c"
!EwDragAndDropManager methodsFor: 'recovered'!
initializeStockCursorImages
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := IdentityDictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := XmILLEGAL.
    recoveredValue4 := (self) createIllegalCursorImage.
    (recoveredValue2) at: (recoveredValue3) put: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := XmMOVE.
    recoveredValue7 := (self) createMoveCursorImage.
    (recoveredValue5) at: (recoveredValue6) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := XmCOPY.
    recoveredValue10 := (self) createCopyCursorImage.
    (recoveredValue8) at: (recoveredValue9) put: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := XmLINK.
    recoveredValue13 := (self) createLinkCursorImage.
    (recoveredValue11) at: (recoveredValue12) put: (recoveredValue13).
    stockCursorImages := recoveredValue1.
    ^self
! !

"extwid.ic method 0x2001c258; bytecode file offset 0x6d0bc"
!EwDragAndDropManager methodsFor: 'recovered'!
createCopyCursorImage
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (#(0 0 126 0 67 0 66 128 67 192 68 64 68 64 95 64 68 64 70 64 67 64 67 128 67 192 123 224 3 240 3 248 3 192 3 96 2 96 0 48 0 48 0 24 0 24 0 0)) asByteArray.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := (#(254 0 255 0 255 128 255 192 255 224 255 224 255 224 255 224 255 224 255 224 255 224 255 224 255 224 255 240 255 248 7 252 7 252 7 240 7 240 6 120 0 120 0 60 0 60 0 28)) asByteArray.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := CgIcon.
    recoveredValue3 := CgIndexedPalette.
    recoveredValue4 := Array.
    recoveredValue5 := CgRGBColor.
    recoveredValue6 := (recoveredValue5) white.
    recoveredValue7 := CgRGBColor.
    recoveredValue8 := (recoveredValue7) black.
    recoveredValue9 := (recoveredValue4) with: (recoveredValue6) with: (recoveredValue8).
    recoveredValue10 := (recoveredValue3) colors: (recoveredValue9).
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue2) width: (16) height: (24) depth: (1) palette: (recoveredValue10) shapePad: (1) shapeData: (recoveredValue11) maskPad: (1) maskData: (recoveredValue12).
    ^recoveredValue13
! !

"extwid.ic method 0x2001c290; bytecode file offset 0x6d0bc"
!EwDragAndDropManager methodsFor: 'recovered'!
createMoveCursorImage
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (#(0 0 126 0 67 0 66 128 67 192 64 64 64 64 64 64 64 64 66 64 67 64 67 128 67 192 123 224 3 240 3 248 3 192 3 96 2 96 0 48 0 48 0 24 0 24 0 0)) asByteArray.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := (#(254 0 255 0 255 128 255 192 255 224 255 224 255 224 255 224 255 224 255 224 255 224 255 224 255 224 255 240 255 248 7 252 7 252 7 240 7 240 6 120 0 120 0 60 0 60 0 28)) asByteArray.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := CgIcon.
    recoveredValue3 := CgIndexedPalette.
    recoveredValue4 := Array.
    recoveredValue5 := CgRGBColor.
    recoveredValue6 := (recoveredValue5) white.
    recoveredValue7 := CgRGBColor.
    recoveredValue8 := (recoveredValue7) black.
    recoveredValue9 := (recoveredValue4) with: (recoveredValue6) with: (recoveredValue8).
    recoveredValue10 := (recoveredValue3) colors: (recoveredValue9).
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue2) width: (16) height: (24) depth: (1) palette: (recoveredValue10) shapePad: (1) shapeData: (recoveredValue11) maskPad: (1) maskData: (recoveredValue12).
    ^recoveredValue13
! !

"extwid.ic method 0x2001c2c8; bytecode file offset 0x6d0bc"
!EwDragAndDropManager methodsFor: 'recovered'!
createLinkCursorImage
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (#(0 0 126 0 67 0 66 128 67 192 64 64 64 64 64 64 64 64 66 64 67 64 67 128 67 192 123 224 3 240 3 248 3 192 3 96 2 96 0 48 0 48 0 24 0 24 0 0)) asByteArray.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := (#(254 0 255 0 195 128 195 192 195 224 192 96 192 96 196 96 198 96 199 96 199 224 199 224 199 224 255 240 255 248 7 252 7 252 7 240 7 240 6 120 0 120 0 60 0 60 0 28)) asByteArray.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := CgIcon.
    recoveredValue3 := CgIndexedPalette.
    recoveredValue4 := Array.
    recoveredValue5 := CgRGBColor.
    recoveredValue6 := (recoveredValue5) white.
    recoveredValue7 := CgRGBColor.
    recoveredValue8 := (recoveredValue7) black.
    recoveredValue9 := (recoveredValue4) with: (recoveredValue6) with: (recoveredValue8).
    recoveredValue10 := (recoveredValue3) colors: (recoveredValue9).
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue2) width: (16) height: (24) depth: (1) palette: (recoveredValue10) shapePad: (1) shapeData: (recoveredValue11) maskPad: (1) maskData: (recoveredValue12).
    ^recoveredValue13
! !

"extwid.ic method 0x2001c330; bytecode file offset 0x6d124"
!EwDragAndDropManager methodsFor: 'recovered'!
createIllegalCursorImage
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (#(0 0 0 0 248 0 3 254 0 15 255 128 31 255 192 31 255 192 63 255 224 63 255 224 96 0 48 96 0 48 96 0 48 96 0 48 63 255 224 63 255 224 31 251 192 31 249 192 15 250 128 3 251 0 0 251 128 0 3 192 0 3 224 0 3 240 0 3 248 0 3 192 0 3 96 0 2 96 0 0 48 0 0 48 0 0 24 0 0 24 0 0 0 0 0 0)) asByteArray.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := (#(0 248 0 3 254 0 15 255 128 31 255 192 63 255 224 63 255 224 127 255 240 127 255 240 255 255 248 255 255 248 255 255 248 255 255 248 127 255 240 127 255 240 63 255 224 63 255 224 31 255 192 15 255 192 3 255 192 0 255 224 0 7 240 0 7 248 0 7 252 0 7 252 0 7 240 0 7 240 0 6 120 0 0 120 0 0 60 0 0 60 0 0 28 0 0 0)) asByteArray.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := CgIcon.
    recoveredValue3 := CgIndexedPalette.
    recoveredValue4 := Array.
    recoveredValue5 := CgRGBColor.
    recoveredValue6 := (recoveredValue5) white.
    recoveredValue7 := CgRGBColor.
    recoveredValue8 := (recoveredValue7) black.
    recoveredValue9 := (recoveredValue4) with: (recoveredValue6) with: (recoveredValue8).
    recoveredValue10 := (recoveredValue3) colors: (recoveredValue9).
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue2) width: (24) height: (32) depth: (1) palette: (recoveredValue10) shapePad: (1) shapeData: (recoveredValue11) maskPad: (1) maskData: (recoveredValue12).
    ^recoveredValue13
! !

"extwid.ic method 0x2001c880; bytecode file offset 0x6d65c"
!EwDragAndDropManager methodsFor: 'recovered'!
inputEvent: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := recoveredArg2.
    recoveredBlock4Value2 := recoveredArg3.
    recoveredBlock4Value3 := (self) processInputEvent: (recoveredBlock4Value0) clientData: (recoveredBlock4Value1) callData: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    recoveredValue1 := ExAll.
    recoveredValue2 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) session.
            recoveredBlock25PC := 33.
        ].
        recoveredBlock25Step = 33 ifTrue: [
            (recoveredBlock25Stack0 == nil) ifTrue: [recoveredBlock25PC := 40] ifFalse: [recoveredBlock25PC := 36].
        ].
        recoveredBlock25Step = 36 ifTrue: [
            recoveredBlock25Stack0 := self.
            recoveredBlock25PC := 37.
        ].
        recoveredBlock25Step = 37 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) session.
            recoveredBlock25PC := 38.
        ].
        recoveredBlock25Step = 38 ifTrue: [
            (recoveredBlock25Stack0) resetAll.
            recoveredBlock25PC := 40.
        ].
        recoveredBlock25Step = 40 ifTrue: [
            recoveredBlock25Stack0 := recoveredBlock25Arg1.
            recoveredBlock25PC := 41.
        ].
        recoveredBlock25Step = 41 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) signal.
            recoveredBlock25PC := 43.
        ].
        recoveredBlock25Step = 43 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack0.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
    (recoveredValue0) when: (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"extwid.ic method 0x2001cb64; bytecode file offset 0x6d948"
!EwDragAndDropManager methodsFor: 'recovered'!
defaultCursorImageOffsets
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := IdentityDictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := XmILLEGAL.
    recoveredValue4 := (-13) @ (-15).
    (recoveredValue2) at: (recoveredValue3) put: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := XmMOVE.
    recoveredValue7 := (-5) @ (-9).
    (recoveredValue5) at: (recoveredValue6) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := XmCOPY.
    recoveredValue10 := (-5) @ (-9).
    (recoveredValue8) at: (recoveredValue9) put: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := XmLINK.
    recoveredValue13 := (-5) @ (-9).
    (recoveredValue11) at: (recoveredValue12) put: (recoveredValue13).
    ^recoveredValue1
! !

"extwid.ic method 0x2001e518; bytecode file offset 0x6f30c"
!EwDragAndDropManager methodsFor: 'recovered'!
defaultKeys
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := IdentityDictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) defaultOperations.
    (recoveredValue2) at: (0) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := ShiftMask.
    recoveredValue6 := Array.
    recoveredValue7 := XmMOVE.
    recoveredValue8 := (recoveredValue6) with: (recoveredValue7).
    (recoveredValue4) at: (recoveredValue5) put: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := ControlMask.
    recoveredValue11 := Array.
    recoveredValue12 := XmCOPY.
    recoveredValue13 := (recoveredValue11) with: (recoveredValue12).
    (recoveredValue9) at: (recoveredValue10) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := ShiftMask.
    recoveredValue16 := ControlMask.
    recoveredValue17 := (recoveredValue15) | (recoveredValue16).
    recoveredValue18 := Array.
    recoveredValue19 := XmLINK.
    recoveredValue20 := (recoveredValue18) with: (recoveredValue19).
    (recoveredValue14) at: (recoveredValue17) put: (recoveredValue20).
    ^recoveredValue1
! !

"extwid.ic method 0x200215b0; bytecode file offset 0x7239c"
!EwDragAndDropManager methodsFor: 'recovered'!
default
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    (self) initializeStockCursorImages.
    (self) initializeNullCursor.
    recoveredValue0 := (self) defaultButton.
    button := recoveredValue0.
    recoveredValue1 := (self) defaultCursors.
    cursors := recoveredValue1.
    recoveredValue2 := (self) defaultCursorImages.
    cursorImages := recoveredValue2.
    recoveredValue3 := (self) defaultCursorImageOffsets.
    cursorImageOffsets := recoveredValue3.
    recoveredValue4 := (self) defaultKeys.
    keys := recoveredValue4.
    recoveredValue5 := (self) defaultOperations.
    operations := recoveredValue5.
    session := nil.
    recoveredValue6 := IdentityDictionary.
    recoveredValue7 := (recoveredValue6) new.
    targetRegistry := recoveredValue7.
    recoveredValue8 := IdentityDictionary.
    recoveredValue9 := (recoveredValue8) new.
    sourceRegistry := recoveredValue9.
    threshold := 4.
    isInProgress := false.
    ^self
! !

"extwid.ic method 0x20022830; bytecode file offset 0x7362c"
!EwDragAndDropManager methodsFor: 'recovered'!
initializeNullCursor
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := CgDisplay.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) defaultRootWindow.
    recoveredValue3 := (recoveredValue2) createPixmap: (16) height: (16) depth: (1).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := GCForeground.
    recoveredValue6 := CgGCValues.
    recoveredValue7 := (recoveredValue6) new.
    recoveredValue8 := (recoveredValue7) foreground: (0).
    recoveredValue9 := (recoveredValue4) createGC: (recoveredValue5) values: (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := recoveredLocal1.
    (recoveredValue10) fillRectangle: (recoveredValue11) x: (0) y: (0) width: (16) height: (16).
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := (recoveredValue12) createPixmapCursor: (recoveredValue13) x: (0) y: (0).
    (self) nullCursor: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    (recoveredValue15) freeGC.
    recoveredValue16 := recoveredLocal2.
    (recoveredValue16) freePixmap.
    ^self
! !

"extwid.ic method 0x2002739c; bytecode file offset 0x78194"
!EwDragAndDropManager methodsFor: 'recovered'!
processButtonMotion: recoveredArg1 from: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) session.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) display.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) screen.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootWindow.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := ReturnParameter.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) null.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := ReturnParameter.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) null.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := ReturnParameter.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := (recoveredStack4) new.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack5.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack5 := ReturnParameter.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack5 := (recoveredStack5) new.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack6.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack6 := ReturnParameter.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack6 := (recoveredStack6) null.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack7 := ReturnParameter.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack7 := (recoveredStack7) null.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack8 := ReturnParameter.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack8 := (recoveredStack8) null.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) queryPointer: (recoveredStack1) rootReturn: (recoveredStack2) childReturn: (recoveredStack3) rootXReturn: (recoveredStack4) rootYReturn: (recoveredStack5) winXReturn: (recoveredStack6) winYReturn: (recoveredStack7) maskReturn: (recoveredStack8).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) xRoot.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) yRoot.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) session.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) processButtonMotion: (recoveredStack1) from: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20028870; bytecode file offset 0x79664"
!EwDragAndDropManager methodsFor: 'recovered'!
dragDetect: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) button.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := ButtonDrag.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) event.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) button.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) button: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) event.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) button.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) button.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) doit: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInProgress.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 recoveredBlock40Value3 recoveredBlock40Value4 |
    recoveredBlock40Value0 := recoveredArg1.
    recoveredBlock40Value1 := recoveredArg2.
    recoveredBlock40Value2 := recoveredArg3.
    recoveredBlock40Value3 := (recoveredBlock40Value2) event.
    recoveredBlock40Value4 := (self) processInputEvent: (recoveredBlock40Value0) clientData: (recoveredBlock40Value1) callData: (recoveredBlock40Value3).
    recoveredBlock40Value4
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := ExAll.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := [:recoveredBlock62Arg1 | 
    | recoveredBlock62Stack0 recoveredBlock62Stack1 recoveredBlock62PC recoveredBlock62Step recoveredBlock62Done recoveredBlock62Result |
    recoveredBlock62Stack0 := self.
    recoveredBlock62PC := 68.
    recoveredBlock62Done := false.
    [recoveredBlock62Done not] whileTrue: [
        recoveredBlock62Step := recoveredBlock62PC.
        recoveredBlock62Step = 68 ifTrue: [
            recoveredBlock62Stack0 := (recoveredBlock62Stack0) session.
            recoveredBlock62PC := 70.
        ].
        recoveredBlock62Step = 70 ifTrue: [
            (recoveredBlock62Stack0 == nil) ifTrue: [recoveredBlock62PC := 79] ifFalse: [recoveredBlock62PC := 74].
        ].
        recoveredBlock62Step = 74 ifTrue: [
            recoveredBlock62Stack0 := self.
            recoveredBlock62PC := 75.
        ].
        recoveredBlock62Step = 75 ifTrue: [
            recoveredBlock62Stack0 := (recoveredBlock62Stack0) session.
            recoveredBlock62PC := 77.
        ].
        recoveredBlock62Step = 77 ifTrue: [
            (recoveredBlock62Stack0) resetAll.
            recoveredBlock62PC := 79.
        ].
        recoveredBlock62Step = 79 ifTrue: [
            recoveredBlock62Stack0 := recoveredBlock62Arg1.
            recoveredBlock62PC := 80.
        ].
        recoveredBlock62Step = 80 ifTrue: [
            recoveredBlock62Stack0 := (recoveredBlock62Stack0) signal.
            recoveredBlock62PC := 82.
        ].
        recoveredBlock62Step = 82 ifTrue: [
            recoveredBlock62Result := recoveredBlock62Stack0.
            recoveredBlock62Done := true.
        ].
    ].
    recoveredBlock62Result
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2002afc8; bytecode file offset 0x7bdc4"
!EwDragAndDropManager methodsFor: 'recovered'!
processInputEvent: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := ButtonPress.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) button.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) button.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) processButtonPress: (recoveredStack2) from: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := ButtonRelease.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentButtonMotionMask.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyMask: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) processButtonRelease: (recoveredStack2) from: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := MotionNotify.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentButtonMotionMask.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyMask: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) processButtonMotion: (recoveredStack2) from: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := KeyPress.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := KeyRelease.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) processKeyEvent: (recoveredStack2) from: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

