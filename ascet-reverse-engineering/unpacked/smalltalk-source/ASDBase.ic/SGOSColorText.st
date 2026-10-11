"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004926c; bytecode file offset 0x945b20"
!SGOSColorText methodsFor: 'recovered'!
clearNodeColors
    nodeColors := nil.
    ^self
! !

"ASDBase.ic method 0x20074b24; bytecode file offset 0x9757c8"
!SGOSColorText methodsFor: 'recovered'!
useColorSyntax
    ^true
! !

"ASDBase.ic method 0x20080fd8; bytecode file offset 0x97d89c"
!SGOSColorText methodsFor: 'recovered'!
updateDelay
    ^1000
! !

"ASDBase.ic method 0x20098104; bytecode file offset 0x995850"
!SGOSColorText methodsFor: 'recovered'!
parseTree: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) parseTree: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c7b30; bytecode file offset 0x9c43e4"
!SGOSColorText methodsFor: 'recovered'!
needsUpdate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    needsUpdate := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ea4d8; bytecode file offset 0x9e6d94"
!SGOSColorText methodsFor: 'recovered'!
highlightMode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super highlightMode: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    highlightMode := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x201092a8; bytecode file offset 0xa05b7c"
!SGOSColorText methodsFor: 'recovered'!
parseTree
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) useColorSyntax.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) parseTree.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013c320; bytecode file offset 0xa38bf4"
!SGOSColorText methodsFor: 'recovered'!
redraw
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := needsUpdate.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) updateParseTree.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            super redraw.
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

"ASDBase.ic method 0x2013c334; bytecode file offset 0xa38bf4"
!SGOSColorText methodsFor: 'recovered'!
update
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := needsUpdate.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) updateParseTree.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            super update.
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

"ASDBase.ic method 0x20141148; bytecode file offset 0xa3da04"
!SGOSColorText methodsFor: 'recovered'!
updateParseTree
    | recoveredValue0 recoveredValue1 |
    needsUpdate := false.
    recoveredValue0 := (self) parseTree.
    recoveredValue1 := [
    ^self
].
    (recoveredValue0) ifNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201624ac; bytecode file offset 0xa5ed70"
!SGOSColorText methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    highlightMode := false.
    needsUpdate := false.
    recoveredValue0 := Time.
    recoveredValue1 := (recoveredValue0) millisecondClockValue.
    lastUpdate := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20199c28; bytecode file offset 0xa964f0"
!SGOSColorText methodsFor: 'recovered'!
rawNodeColors
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parseTree.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
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
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) parseTree.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) asCollectionOfNodeColors.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) extractCommentNodes: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a1b10; bytecode file offset 0xa9e3d4"
!SGOSColorText methodsFor: 'recovered'!
foreground
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) useColorSyntax.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ForegroundColorNodeColor.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := super foreground.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := ForegroundColorNodeColor.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a6fc0; bytecode file offset 0xaa388c"
!SGOSColorText methodsFor: 'recovered'!
processCharacter: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) readOnly.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := Time.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) millisecondClockValue.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            lastUpdate := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) setTimeout.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := super processCharacter: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201c9330; bytecode file offset 0xac5bf8"
!SGOSColorText methodsFor: 'recovered'!
background
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) useColorSyntax.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := BackgroundColorNodeColor.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 16777215.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := super background.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := BackgroundColorNodeColor.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d5dcc; bytecode file offset 0xad2694"
!SGOSColorText methodsFor: 'recovered'!
setTimeout
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := timeout.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := CwAppContext.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) updateDelay.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := 'defaultTimerProc:'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := lastUpdate.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) addTimeout: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            timeout := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021af6c; bytecode file offset 0xb17838"
!SGOSColorText methodsFor: 'recovered'!
defaultTimerProc: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            timeout := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := Time.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) millisecondClockValue.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := lastUpdate.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) updateDelay.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) setTimeout.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) updateParseTree.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) redrawNoErase.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f01f8; bytecode file offset 0xcecae0"
!SGOSColorText methodsFor: 'recovered'!
setText: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            endColumn := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            endRow := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            startColumn := recoveredStack2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            startRow := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            topIndex := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            leftIndex := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            hScrollWidth := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) setAnchorAndCaretRow: (recoveredStack1) column: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := PlatformString.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) fromString: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := wordWrap.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            wrapPending := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            wrapHistory := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            contents := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) convertToLines: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            contents := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) calculateNodeColors.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) configureHScroll.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) configureVScroll.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) redraw.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) update.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            modified := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) updateModify.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205075d0; bytecode file offset 0xe03ebc"
!SGOSColorText methodsFor: 'recovered'!
extractCommentNodes: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CommentNodeColor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 166.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := '/*'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOfSubCollection: (recoveredStack1) startingAt: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := [:recoveredBlock61Arg1 | 
    | recoveredBlock61Stack0 recoveredBlock61Stack1 recoveredBlock61Stack2 recoveredBlock61Stack3 recoveredBlock61Stack4 recoveredBlock61PC recoveredBlock61Step recoveredBlock61Done recoveredBlock61Result |
    recoveredBlock61Stack0 := self.
    recoveredBlock61PC := 68.
    recoveredBlock61Done := false.
    [recoveredBlock61Done not] whileTrue: [
        recoveredBlock61Step := recoveredBlock61PC.
        recoveredBlock61Step = 68 ifTrue: [
            recoveredBlock61Stack1 := false.
            recoveredBlock61PC := 69.
        ].
        recoveredBlock61Step = 69 ifTrue: [
            recoveredBlock61Stack2 := recoveredLocal3.
            recoveredBlock61PC := 72.
        ].
        recoveredBlock61Step = 72 ifTrue: [
            recoveredBlock61Stack3 := recoveredBlock61Arg1.
            recoveredBlock61PC := 73.
        ].
        recoveredBlock61Step = 73 ifTrue: [
            recoveredBlock61Stack3 := (recoveredBlock61Stack3) key.
            recoveredBlock61PC := 75.
        ].
        recoveredBlock61Step = 75 ifTrue: [
            recoveredBlock61Stack3 := (recoveredBlock61Stack3) x.
            recoveredBlock61PC := 77.
        ].
        recoveredBlock61Step = 77 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) >= (recoveredBlock61Stack3).
            recoveredBlock61PC := 78.
        ].
        recoveredBlock61Step = 78 ifTrue: [
            (recoveredBlock61Stack2) ifTrue: [recoveredBlock61PC := 82] ifFalse: [recoveredBlock61PC := 92].
        ].
        recoveredBlock61Step = 82 ifTrue: [
            recoveredBlock61PC := 83.
        ].
        recoveredBlock61Step = 83 ifTrue: [
            recoveredBlock61Stack1 := recoveredLocal3.
            recoveredBlock61PC := 86.
        ].
        recoveredBlock61Step = 86 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Arg1.
            recoveredBlock61PC := 87.
        ].
        recoveredBlock61Step = 87 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) key.
            recoveredBlock61PC := 89.
        ].
        recoveredBlock61Step = 89 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) y.
            recoveredBlock61PC := 91.
        ].
        recoveredBlock61Step = 91 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) <= (recoveredBlock61Stack2).
            recoveredBlock61PC := 92.
        ].
        recoveredBlock61Step = 92 ifTrue: [
            recoveredBlock61Result := recoveredBlock61Stack1.
            recoveredBlock61Done := true.
        ].
    ].
    recoveredBlock61Result
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := '*/'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOfSubCollection: (recoveredStack1) startingAt: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := Association.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := CommentNodeColor.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) key: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredPC := 162.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) key.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054ef9c; bytecode file offset 0xe4b8c0"
!SGOSColorText methodsFor: 'recovered'!
calculateNodeColors
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parseTree.
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
            recoveredStack0 := (recoveredStack0) rawNodeColors.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:block2810f330Arg1 :block2810f330Arg2 | 
    | block2810f330Value0 block2810f330Value1 block2810f330Value2 block2810f330Value3 block2810f330Value4 block2810f330Value5 block2810f330Value6 |
    block2810f330Value0 := block2810f330Arg1.
    block2810f330Value1 := (block2810f330Value0) key.
    block2810f330Value2 := (block2810f330Value1) x.
    block2810f330Value3 := block2810f330Arg2.
    block2810f330Value4 := (block2810f330Value3) key.
    block2810f330Value5 := (block2810f330Value4) x.
    block2810f330Value6 := (block2810f330Value2) <= (block2810f330Value5).
    block2810f330Value6
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Local1 recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 recoveredBlock44Value4 recoveredBlock44Value5 recoveredBlock44Value6 recoveredBlock44Value7 recoveredBlock44Value8 recoveredBlock44Value9 recoveredBlock44Value10 recoveredBlock44Value11 recoveredBlock44Value12 recoveredBlock44Value13 recoveredBlock44Value14 recoveredBlock44Value15 recoveredBlock44Value16 recoveredBlock44Value17 recoveredBlock44Value18 |
    recoveredBlock44Value0 := recoveredBlock44Arg1.
    recoveredBlock44Value1 := recoveredBlock44Arg1.
    recoveredBlock44Value2 := (recoveredBlock44Value1) key.
    recoveredBlock44Value3 := (recoveredBlock44Value2) x.
    recoveredBlock44Value4 := (self) indexToRC: (recoveredBlock44Value3).
    recoveredBlock44Value5 := recoveredBlock44Value4.
    recoveredBlock44Local1 := recoveredBlock44Value5.
    recoveredBlock44Value6 := recoveredBlock44Arg1.
    recoveredBlock44Value7 := (recoveredBlock44Value6) key.
    recoveredBlock44Value8 := (recoveredBlock44Value7) y.
    recoveredBlock44Value9 := recoveredBlock44Arg1.
    recoveredBlock44Value10 := (recoveredBlock44Value9) key.
    recoveredBlock44Value11 := (recoveredBlock44Value10) x.
    recoveredBlock44Value12 := recoveredBlock44Local1.
    recoveredBlock44Value13 := (recoveredBlock44Value12) x.
    recoveredBlock44Value14 := recoveredBlock44Local1.
    recoveredBlock44Value15 := (recoveredBlock44Value14) y.
    recoveredBlock44Value16 := (self) indexToRC: (recoveredBlock44Value8) current: (recoveredBlock44Value11) row: (recoveredBlock44Value13) column: (recoveredBlock44Value15).
    recoveredBlock44Value17 := (recoveredBlock44Value4) corner: (recoveredBlock44Value16).
    recoveredBlock44Value18 := (recoveredBlock44Value0) key: (recoveredBlock44Value17).
    recoveredBlock44Value18
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := IdentityDictionary.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            nodeColors := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := [:recoveredBlock95Arg1 | 
    | recoveredBlock95Local1 recoveredBlock95Stack0 recoveredBlock95Stack1 recoveredBlock95Stack2 recoveredBlock95Stack3 recoveredBlock95Stack4 recoveredBlock95Stack5 recoveredBlock95Stack6 recoveredBlock95Stack7 recoveredBlock95PC recoveredBlock95Step recoveredBlock95Done recoveredBlock95Result |
    recoveredBlock95Stack0 := self.
    recoveredBlock95PC := 102.
    recoveredBlock95Done := false.
    [recoveredBlock95Done not] whileTrue: [
        recoveredBlock95Step := recoveredBlock95PC.
        recoveredBlock95Step = 102 ifTrue: [
            recoveredBlock95Stack1 := recoveredBlock95Arg1.
            recoveredBlock95PC := 103.
        ].
        recoveredBlock95Step = 103 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) key.
            recoveredBlock95PC := 105.
        ].
        recoveredBlock95Step = 105 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) origin.
            recoveredBlock95PC := 107.
        ].
        recoveredBlock95Step = 107 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) x.
            recoveredBlock95PC := 109.
        ].
        recoveredBlock95Step = 109 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) + (-1).
            recoveredBlock95PC := 110.
        ].
        recoveredBlock95Step = 110 ifTrue: [
            recoveredBlock95Local1 := recoveredBlock95Stack1.
            recoveredBlock95PC := 111.
        ].
        recoveredBlock95Step = 111 ifTrue: [
            recoveredBlock95Stack1 := recoveredBlock95Arg1.
            recoveredBlock95PC := 112.
        ].
        recoveredBlock95Step = 112 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) key.
            recoveredBlock95PC := 114.
        ].
        recoveredBlock95Step = 114 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) corner.
            recoveredBlock95PC := 116.
        ].
        recoveredBlock95Step = 116 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) x.
            recoveredBlock95PC := 118.
        ].
        recoveredBlock95Step = 118 ifTrue: [
            recoveredBlock95PC := 204.
        ].
        recoveredBlock95Step = 122 ifTrue: [
            recoveredBlock95Stack2 := nodeColors.
            recoveredBlock95PC := 124.
        ].
        recoveredBlock95Step = 124 ifTrue: [
            recoveredBlock95Stack3 := contents.
            recoveredBlock95PC := 126.
        ].
        recoveredBlock95Step = 126 ifTrue: [
            recoveredBlock95Stack4 := recoveredBlock95Local1.
            recoveredBlock95PC := 127.
        ].
        recoveredBlock95Step = 127 ifTrue: [
            recoveredBlock95Stack3 := (recoveredBlock95Stack3) at: (recoveredBlock95Stack4).
            recoveredBlock95PC := 129.
        ].
        recoveredBlock95Step = 129 ifTrue: [
            recoveredBlock95Stack4 := [
    | block2810f354Value0 block2810f354Value1 |
    block2810f354Value0 := OrderedCollection.
    block2810f354Value1 := (block2810f354Value0) new.
    block2810f354Value1
].
            recoveredBlock95PC := 131.
        ].
        recoveredBlock95Step = 131 ifTrue: [
            recoveredBlock95PC := 139.
        ].
        recoveredBlock95Step = 139 ifTrue: [
            recoveredBlock95Stack2 := (recoveredBlock95Stack2) at: (recoveredBlock95Stack3) ifAbsentPut: (recoveredBlock95Stack4).
            recoveredBlock95PC := 141.
        ].
        recoveredBlock95Step = 141 ifTrue: [
            recoveredBlock95Stack3 := Association.
            recoveredBlock95PC := 143.
        ].
        recoveredBlock95Step = 143 ifTrue: [
            recoveredBlock95Stack4 := recoveredBlock95Local1.
            recoveredBlock95PC := 144.
        ].
        recoveredBlock95Step = 144 ifTrue: [
            recoveredBlock95Stack5 := recoveredBlock95Arg1.
            recoveredBlock95PC := 145.
        ].
        recoveredBlock95Step = 145 ifTrue: [
            recoveredBlock95Stack5 := (recoveredBlock95Stack5) key.
            recoveredBlock95PC := 147.
        ].
        recoveredBlock95Step = 147 ifTrue: [
            recoveredBlock95Stack5 := (recoveredBlock95Stack5) origin.
            recoveredBlock95PC := 149.
        ].
        recoveredBlock95Step = 149 ifTrue: [
            recoveredBlock95Stack5 := (recoveredBlock95Stack5) x.
            recoveredBlock95PC := 151.
        ].
        recoveredBlock95Step = 151 ifTrue: [
            (recoveredBlock95Stack4 ~~ recoveredBlock95Stack5) ifTrue: [recoveredBlock95PC := 164] ifFalse: [recoveredBlock95PC := 154].
        ].
        recoveredBlock95Step = 154 ifTrue: [
            recoveredBlock95Stack4 := recoveredBlock95Arg1.
            recoveredBlock95PC := 155.
        ].
        recoveredBlock95Step = 155 ifTrue: [
            recoveredBlock95Stack4 := (recoveredBlock95Stack4) key.
            recoveredBlock95PC := 157.
        ].
        recoveredBlock95Step = 157 ifTrue: [
            recoveredBlock95Stack4 := (recoveredBlock95Stack4) origin.
            recoveredBlock95PC := 159.
        ].
        recoveredBlock95Step = 159 ifTrue: [
            recoveredBlock95Stack4 := (recoveredBlock95Stack4) y.
            recoveredBlock95PC := 161.
        ].
        recoveredBlock95Step = 161 ifTrue: [
            recoveredBlock95PC := 166.
        ].
        recoveredBlock95Step = 164 ifTrue: [
            recoveredBlock95Stack4 := 1.
            recoveredBlock95PC := 166.
        ].
        recoveredBlock95Step = 166 ifTrue: [
            recoveredBlock95Stack5 := recoveredBlock95Local1.
            recoveredBlock95PC := 167.
        ].
        recoveredBlock95Step = 167 ifTrue: [
            recoveredBlock95Stack6 := recoveredBlock95Arg1.
            recoveredBlock95PC := 168.
        ].
        recoveredBlock95Step = 168 ifTrue: [
            recoveredBlock95Stack6 := (recoveredBlock95Stack6) key.
            recoveredBlock95PC := 170.
        ].
        recoveredBlock95Step = 170 ifTrue: [
            recoveredBlock95Stack6 := (recoveredBlock95Stack6) corner.
            recoveredBlock95PC := 172.
        ].
        recoveredBlock95Step = 172 ifTrue: [
            recoveredBlock95Stack6 := (recoveredBlock95Stack6) x.
            recoveredBlock95PC := 174.
        ].
        recoveredBlock95Step = 174 ifTrue: [
            (recoveredBlock95Stack5 ~~ recoveredBlock95Stack6) ifTrue: [recoveredBlock95PC := 188] ifFalse: [recoveredBlock95PC := 178].
        ].
        recoveredBlock95Step = 178 ifTrue: [
            recoveredBlock95Stack5 := recoveredBlock95Arg1.
            recoveredBlock95PC := 179.
        ].
        recoveredBlock95Step = 179 ifTrue: [
            recoveredBlock95Stack5 := (recoveredBlock95Stack5) key.
            recoveredBlock95PC := 181.
        ].
        recoveredBlock95Step = 181 ifTrue: [
            recoveredBlock95Stack5 := (recoveredBlock95Stack5) corner.
            recoveredBlock95PC := 183.
        ].
        recoveredBlock95Step = 183 ifTrue: [
            recoveredBlock95Stack5 := (recoveredBlock95Stack5) y.
            recoveredBlock95PC := 185.
        ].
        recoveredBlock95Step = 185 ifTrue: [
            recoveredBlock95PC := 195.
        ].
        recoveredBlock95Step = 188 ifTrue: [
            recoveredBlock95Stack5 := contents.
            recoveredBlock95PC := 190.
        ].
        recoveredBlock95Step = 190 ifTrue: [
            recoveredBlock95Stack6 := recoveredBlock95Local1.
            recoveredBlock95PC := 191.
        ].
        recoveredBlock95Step = 191 ifTrue: [
            recoveredBlock95Stack5 := (recoveredBlock95Stack5) at: (recoveredBlock95Stack6).
            recoveredBlock95PC := 193.
        ].
        recoveredBlock95Step = 193 ifTrue: [
            recoveredBlock95Stack5 := (recoveredBlock95Stack5) size.
            recoveredBlock95PC := 195.
        ].
        recoveredBlock95Step = 195 ifTrue: [
            recoveredBlock95Stack4 := (recoveredBlock95Stack4) @ (recoveredBlock95Stack5).
            recoveredBlock95PC := 197.
        ].
        recoveredBlock95Step = 197 ifTrue: [
            recoveredBlock95Stack5 := recoveredBlock95Arg1.
            recoveredBlock95PC := 198.
        ].
        recoveredBlock95Step = 198 ifTrue: [
            recoveredBlock95Stack5 := (recoveredBlock95Stack5) value.
            recoveredBlock95PC := 200.
        ].
        recoveredBlock95Step = 200 ifTrue: [
            recoveredBlock95Stack3 := (recoveredBlock95Stack3) key: (recoveredBlock95Stack4) value: (recoveredBlock95Stack5).
            recoveredBlock95PC := 202.
        ].
        recoveredBlock95Step = 202 ifTrue: [
            (recoveredBlock95Stack2) add: (recoveredBlock95Stack3).
            recoveredBlock95PC := 204.
        ].
        recoveredBlock95Step = 204 ifTrue: [
            (recoveredBlock95Stack1 isInteger and: [recoveredBlock95Local1 isInteger]) ifTrue: [(recoveredBlock95Local1 + 1 <= recoveredBlock95Stack1) ifTrue: [recoveredBlock95Local1 := recoveredBlock95Local1 + 1. recoveredBlock95PC := 122] ifFalse: [recoveredBlock95Local1 := nil. recoveredBlock95PC := 218]] ifFalse: [recoveredBlock95PC := 208].
        ].
        recoveredBlock95Step = 208 ifTrue: [
            recoveredBlock95Stack2 := recoveredBlock95Stack1.
            recoveredBlock95PC := 209.
        ].
        recoveredBlock95Step = 209 ifTrue: [
            recoveredBlock95Stack3 := recoveredBlock95Local1.
            recoveredBlock95PC := 210.
        ].
        recoveredBlock95Step = 210 ifTrue: [
            recoveredBlock95Stack3 := (recoveredBlock95Stack3) + (1).
            recoveredBlock95PC := 211.
        ].
        recoveredBlock95Step = 211 ifTrue: [
            recoveredBlock95Stack4 := recoveredBlock95Stack3.
            recoveredBlock95PC := 212.
        ].
        recoveredBlock95Step = 212 ifTrue: [
            recoveredBlock95Local1 := recoveredBlock95Stack4.
            recoveredBlock95PC := 213.
        ].
        recoveredBlock95Step = 213 ifTrue: [
            recoveredBlock95Stack2 := (recoveredBlock95Stack2) < (recoveredBlock95Stack3).
            recoveredBlock95PC := 214.
        ].
        recoveredBlock95Step = 214 ifTrue: [
            (recoveredBlock95Stack2) ifTrue: [recoveredBlock95PC := 216] ifFalse: [recoveredBlock95PC := 122].
        ].
        recoveredBlock95Step = 216 ifTrue: [
            recoveredBlock95Stack2 := nil.
            recoveredBlock95PC := 217.
        ].
        recoveredBlock95Step = 217 ifTrue: [
            recoveredBlock95Local1 := recoveredBlock95Stack2.
            recoveredBlock95PC := 218.
        ].
        recoveredBlock95Step = 218 ifTrue: [
            recoveredBlock95Result := recoveredBlock95Stack1.
            recoveredBlock95Done := true.
        ].
    ].
    recoveredBlock95Result
].
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205b3c04; bytecode file offset 0xeb0510"
!SGOSColorText methodsFor: 'recovered'!
deleteRow: recoveredArg1 column: recoveredArg2 count: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := contents.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := contents.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := nodeColors.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := nodeColors.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeKey: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) pixelWidth: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := insetX.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := contents.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 277] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := nodeColors.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := [:recoveredBlock174Arg1 | 
    | recoveredBlock174Stack0 recoveredBlock174Stack1 recoveredBlock174Stack2 recoveredBlock174Stack3 recoveredBlock174Stack4 recoveredBlock174Stack5 recoveredBlock174PC recoveredBlock174Step recoveredBlock174Done recoveredBlock174Result |
    recoveredBlock174Stack0 := self.
    recoveredBlock174PC := 180.
    recoveredBlock174Done := false.
    [recoveredBlock174Done not] whileTrue: [
        recoveredBlock174Step := recoveredBlock174PC.
        recoveredBlock174Step = 180 ifTrue: [
            recoveredBlock174Stack1 := Association.
            recoveredBlock174PC := 182.
        ].
        recoveredBlock174Step = 182 ifTrue: [
            recoveredBlock174Stack2 := recoveredBlock174Arg1.
            recoveredBlock174PC := 183.
        ].
        recoveredBlock174Step = 183 ifTrue: [
            recoveredBlock174Stack2 := (recoveredBlock174Stack2) key.
            recoveredBlock174PC := 185.
        ].
        recoveredBlock174Step = 185 ifTrue: [
            recoveredBlock174Stack2 := (recoveredBlock174Stack2) x.
            recoveredBlock174PC := 187.
        ].
        recoveredBlock174Step = 187 ifTrue: [
            recoveredBlock174Stack2 := (recoveredBlock174Stack2) + (-1).
            recoveredBlock174PC := 188.
        ].
        recoveredBlock174Step = 188 ifTrue: [
            recoveredBlock174Stack3 := recoveredArg2.
            recoveredBlock174PC := 191.
        ].
        recoveredBlock174Step = 191 ifTrue: [
            recoveredBlock174Stack2 := (recoveredBlock174Stack2) > (recoveredBlock174Stack3).
            recoveredBlock174PC := 192.
        ].
        recoveredBlock174Step = 192 ifTrue: [
            (recoveredBlock174Stack2) ifTrue: [recoveredBlock174PC := 196] ifFalse: [recoveredBlock174PC := 208].
        ].
        recoveredBlock174Step = 196 ifTrue: [
            recoveredBlock174Stack2 := recoveredBlock174Arg1.
            recoveredBlock174PC := 197.
        ].
        recoveredBlock174Step = 197 ifTrue: [
            recoveredBlock174Stack2 := (recoveredBlock174Stack2) key.
            recoveredBlock174PC := 199.
        ].
        recoveredBlock174Step = 199 ifTrue: [
            recoveredBlock174Stack2 := (recoveredBlock174Stack2) x.
            recoveredBlock174PC := 201.
        ].
        recoveredBlock174Step = 201 ifTrue: [
            recoveredBlock174Stack3 := recoveredArg3.
            recoveredBlock174PC := 204.
        ].
        recoveredBlock174Step = 204 ifTrue: [
            recoveredBlock174Stack2 := (recoveredBlock174Stack2) - (recoveredBlock174Stack3).
            recoveredBlock174PC := 205.
        ].
        recoveredBlock174Step = 205 ifTrue: [
            recoveredBlock174PC := 213.
        ].
        recoveredBlock174Step = 208 ifTrue: [
            recoveredBlock174Stack2 := recoveredBlock174Arg1.
            recoveredBlock174PC := 209.
        ].
        recoveredBlock174Step = 209 ifTrue: [
            recoveredBlock174Stack2 := (recoveredBlock174Stack2) key.
            recoveredBlock174PC := 211.
        ].
        recoveredBlock174Step = 211 ifTrue: [
            recoveredBlock174Stack2 := (recoveredBlock174Stack2) x.
            recoveredBlock174PC := 213.
        ].
        recoveredBlock174Step = 213 ifTrue: [
            recoveredBlock174Stack3 := recoveredBlock174Arg1.
            recoveredBlock174PC := 214.
        ].
        recoveredBlock174Step = 214 ifTrue: [
            recoveredBlock174Stack3 := (recoveredBlock174Stack3) key.
            recoveredBlock174PC := 216.
        ].
        recoveredBlock174Step = 216 ifTrue: [
            recoveredBlock174Stack3 := (recoveredBlock174Stack3) y.
            recoveredBlock174PC := 218.
        ].
        recoveredBlock174Step = 218 ifTrue: [
            recoveredBlock174Stack3 := (recoveredBlock174Stack3) + (-1).
            recoveredBlock174PC := 219.
        ].
        recoveredBlock174Step = 219 ifTrue: [
            recoveredBlock174Stack4 := recoveredArg2.
            recoveredBlock174PC := 222.
        ].
        recoveredBlock174Step = 222 ifTrue: [
            recoveredBlock174Stack3 := (recoveredBlock174Stack3) >= (recoveredBlock174Stack4).
            recoveredBlock174PC := 223.
        ].
        recoveredBlock174Step = 223 ifTrue: [
            (recoveredBlock174Stack3) ifTrue: [recoveredBlock174PC := 226] ifFalse: [recoveredBlock174PC := 238].
        ].
        recoveredBlock174Step = 226 ifTrue: [
            recoveredBlock174Stack3 := recoveredBlock174Arg1.
            recoveredBlock174PC := 227.
        ].
        recoveredBlock174Step = 227 ifTrue: [
            recoveredBlock174Stack3 := (recoveredBlock174Stack3) key.
            recoveredBlock174PC := 229.
        ].
        recoveredBlock174Step = 229 ifTrue: [
            recoveredBlock174Stack3 := (recoveredBlock174Stack3) y.
            recoveredBlock174PC := 231.
        ].
        recoveredBlock174Step = 231 ifTrue: [
            recoveredBlock174Stack4 := recoveredArg3.
            recoveredBlock174PC := 234.
        ].
        recoveredBlock174Step = 234 ifTrue: [
            recoveredBlock174Stack3 := (recoveredBlock174Stack3) - (recoveredBlock174Stack4).
            recoveredBlock174PC := 235.
        ].
        recoveredBlock174Step = 235 ifTrue: [
            recoveredBlock174PC := 243.
        ].
        recoveredBlock174Step = 238 ifTrue: [
            recoveredBlock174Stack3 := recoveredBlock174Arg1.
            recoveredBlock174PC := 239.
        ].
        recoveredBlock174Step = 239 ifTrue: [
            recoveredBlock174Stack3 := (recoveredBlock174Stack3) key.
            recoveredBlock174PC := 241.
        ].
        recoveredBlock174Step = 241 ifTrue: [
            recoveredBlock174Stack3 := (recoveredBlock174Stack3) y.
            recoveredBlock174PC := 243.
        ].
        recoveredBlock174Step = 243 ifTrue: [
            recoveredBlock174Stack2 := (recoveredBlock174Stack2) @ (recoveredBlock174Stack3).
            recoveredBlock174PC := 245.
        ].
        recoveredBlock174Step = 245 ifTrue: [
            recoveredBlock174Stack3 := recoveredBlock174Arg1.
            recoveredBlock174PC := 246.
        ].
        recoveredBlock174Step = 246 ifTrue: [
            recoveredBlock174Stack3 := (recoveredBlock174Stack3) value.
            recoveredBlock174PC := 248.
        ].
        recoveredBlock174Step = 248 ifTrue: [
            recoveredBlock174Stack1 := (recoveredBlock174Stack1) key: (recoveredBlock174Stack2) value: (recoveredBlock174Stack3).
            recoveredBlock174PC := 250.
        ].
        recoveredBlock174Step = 250 ifTrue: [
            recoveredBlock174Result := recoveredBlock174Stack1.
            recoveredBlock174Done := true.
        ].
    ].
    recoveredBlock174Result
].
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack3 := [:block28116e84Arg1 | 
    | block28116e84Value0 block28116e84Value1 block28116e84Value2 block28116e84Value3 block28116e84Value4 block28116e84Value5 block28116e84Value6 block28116e84Value7 |
    block28116e84Value0 := block28116e84Arg1.
    block28116e84Value1 := (block28116e84Value0) key.
    block28116e84Value2 := (block28116e84Value1) y.
    block28116e84Value3 := block28116e84Arg1.
    block28116e84Value4 := (block28116e84Value3) key.
    block28116e84Value5 := (block28116e84Value4) x.
    block28116e84Value6 := (block28116e84Value2) - (block28116e84Value5).
    block28116e84Value7 := (block28116e84Value6) >= (0).
    block28116e84Value7
].
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 284] ifFalse: [recoveredPC := 287].
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack0) configureHScroll.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            (recoveredStack0) drawTextRow1: (recoveredStack1) column1: (recoveredStack2) row2: (recoveredStack3) column2: (recoveredStack4) blanked: (recoveredStack5).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            needsUpdate := recoveredStack0.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            modified := recoveredStack0.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205d1f2c; bytecode file offset 0xece830"
!SGOSColorText methodsFor: 'recovered'!
insertString: recoveredArg1 row: recoveredArg2 column: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := contents.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := contents.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := nodeColors.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := nodeColors.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeKey: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) verifyLimit: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := contents.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 325] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := nodeColors.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := [:recoveredBlock157Arg1 | 
    | recoveredBlock157Local1 recoveredBlock157Local2 recoveredBlock157Stack0 recoveredBlock157Stack1 recoveredBlock157Stack2 recoveredBlock157Stack3 recoveredBlock157Stack4 recoveredBlock157Stack5 recoveredBlock157PC recoveredBlock157Step recoveredBlock157Done recoveredBlock157Result |
    recoveredBlock157Stack0 := self.
    recoveredBlock157PC := 164.
    recoveredBlock157Done := false.
    [recoveredBlock157Done not] whileTrue: [
        recoveredBlock157Step := recoveredBlock157PC.
        recoveredBlock157Step = 164 ifTrue: [
            recoveredBlock157Stack1 := recoveredLocal5.
            recoveredBlock157PC := 167.
        ].
        recoveredBlock157Step = 167 ifTrue: [
            recoveredBlock157Stack2 := recoveredArg3.
            recoveredBlock157PC := 170.
        ].
        recoveredBlock157Step = 170 ifTrue: [
            recoveredBlock157Stack3 := 1.
            recoveredBlock157PC := 172.
        ].
        recoveredBlock157Step = 172 ifTrue: [
            recoveredBlock157Stack2 := (recoveredBlock157Stack2) max: (recoveredBlock157Stack3).
            recoveredBlock157PC := 174.
        ].
        recoveredBlock157Step = 174 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) at: (recoveredBlock157Stack2).
            recoveredBlock157PC := 175.
        ].
        recoveredBlock157Step = 175 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) isAlphaNumeric.
            recoveredBlock157PC := 177.
        ].
        recoveredBlock157Step = 177 ifTrue: [
            (recoveredBlock157Stack1) ifTrue: [recoveredBlock157PC := 194] ifFalse: [recoveredBlock157PC := 180].
        ].
        recoveredBlock157Step = 180 ifTrue: [
            recoveredBlock157Stack1 := recoveredLocal5.
            recoveredBlock157PC := 183.
        ].
        recoveredBlock157Step = 183 ifTrue: [
            recoveredBlock157Stack2 := recoveredArg3.
            recoveredBlock157PC := 186.
        ].
        recoveredBlock157Step = 186 ifTrue: [
            recoveredBlock157Stack2 := (recoveredBlock157Stack2) + (1).
            recoveredBlock157PC := 187.
        ].
        recoveredBlock157Step = 187 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) at: (recoveredBlock157Stack2).
            recoveredBlock157PC := 188.
        ].
        recoveredBlock157Step = 188 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) isAlphaNumeric.
            recoveredBlock157PC := 190.
        ].
        recoveredBlock157Step = 190 ifTrue: [
            (recoveredBlock157Stack1) ifTrue: [recoveredBlock157PC := 202] ifFalse: [recoveredBlock157PC := 194].
        ].
        recoveredBlock157Step = 194 ifTrue: [
            recoveredBlock157Stack1 := recoveredBlock157Arg1.
            recoveredBlock157PC := 195.
        ].
        recoveredBlock157Step = 195 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) key.
            recoveredBlock157PC := 197.
        ].
        recoveredBlock157Step = 197 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) x.
            recoveredBlock157PC := 199.
        ].
        recoveredBlock157Step = 199 ifTrue: [
            recoveredBlock157PC := 208.
        ].
        recoveredBlock157Step = 202 ifTrue: [
            recoveredBlock157Stack1 := recoveredBlock157Arg1.
            recoveredBlock157PC := 203.
        ].
        recoveredBlock157Step = 203 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) key.
            recoveredBlock157PC := 205.
        ].
        recoveredBlock157Step = 205 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) x.
            recoveredBlock157PC := 207.
        ].
        recoveredBlock157Step = 207 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) + (-1).
            recoveredBlock157PC := 208.
        ].
        recoveredBlock157Step = 208 ifTrue: [
            recoveredBlock157Local2 := recoveredBlock157Stack1.
            recoveredBlock157PC := 209.
        ].
        recoveredBlock157Step = 209 ifTrue: [
            recoveredBlock157Stack1 := recoveredLocal5.
            recoveredBlock157PC := 212.
        ].
        recoveredBlock157Step = 212 ifTrue: [
            recoveredBlock157Stack2 := recoveredArg3.
            recoveredBlock157PC := 215.
        ].
        recoveredBlock157Step = 215 ifTrue: [
            recoveredBlock157Stack3 := 1.
            recoveredBlock157PC := 217.
        ].
        recoveredBlock157Step = 217 ifTrue: [
            recoveredBlock157Stack2 := (recoveredBlock157Stack2) max: (recoveredBlock157Stack3).
            recoveredBlock157PC := 219.
        ].
        recoveredBlock157Step = 219 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) at: (recoveredBlock157Stack2).
            recoveredBlock157PC := 220.
        ].
        recoveredBlock157Step = 220 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) isAlphaNumeric.
            recoveredBlock157PC := 222.
        ].
        recoveredBlock157Step = 222 ifTrue: [
            (recoveredBlock157Stack1) ifTrue: [recoveredBlock157PC := 226] ifFalse: [recoveredBlock157PC := 248].
        ].
        recoveredBlock157Step = 226 ifTrue: [
            recoveredBlock157Stack1 := recoveredLocal5.
            recoveredBlock157PC := 229.
        ].
        recoveredBlock157Step = 229 ifTrue: [
            recoveredBlock157Stack2 := recoveredArg3.
            recoveredBlock157PC := 232.
        ].
        recoveredBlock157Step = 232 ifTrue: [
            recoveredBlock157Stack2 := (recoveredBlock157Stack2) + (1).
            recoveredBlock157PC := 233.
        ].
        recoveredBlock157Step = 233 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) at: (recoveredBlock157Stack2).
            recoveredBlock157PC := 234.
        ].
        recoveredBlock157Step = 234 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) isAlphaNumeric.
            recoveredBlock157PC := 236.
        ].
        recoveredBlock157Step = 236 ifTrue: [
            (recoveredBlock157Stack1) ifTrue: [recoveredBlock157PC := 240] ifFalse: [recoveredBlock157PC := 248].
        ].
        recoveredBlock157Step = 240 ifTrue: [
            recoveredBlock157Stack1 := recoveredBlock157Arg1.
            recoveredBlock157PC := 241.
        ].
        recoveredBlock157Step = 241 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) key.
            recoveredBlock157PC := 243.
        ].
        recoveredBlock157Step = 243 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) y.
            recoveredBlock157PC := 245.
        ].
        recoveredBlock157Step = 245 ifTrue: [
            recoveredBlock157PC := 254.
        ].
        recoveredBlock157Step = 248 ifTrue: [
            recoveredBlock157Stack1 := recoveredBlock157Arg1.
            recoveredBlock157PC := 249.
        ].
        recoveredBlock157Step = 249 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) key.
            recoveredBlock157PC := 251.
        ].
        recoveredBlock157Step = 251 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) y.
            recoveredBlock157PC := 253.
        ].
        recoveredBlock157Step = 253 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) + (-1).
            recoveredBlock157PC := 254.
        ].
        recoveredBlock157Step = 254 ifTrue: [
            recoveredBlock157Local1 := recoveredBlock157Stack1.
            recoveredBlock157PC := 255.
        ].
        recoveredBlock157Step = 255 ifTrue: [
            recoveredBlock157Stack1 := Association.
            recoveredBlock157PC := 257.
        ].
        recoveredBlock157Step = 257 ifTrue: [
            recoveredBlock157Stack2 := recoveredBlock157Local2.
            recoveredBlock157PC := 258.
        ].
        recoveredBlock157Step = 258 ifTrue: [
            recoveredBlock157Stack3 := recoveredArg3.
            recoveredBlock157PC := 261.
        ].
        recoveredBlock157Step = 261 ifTrue: [
            recoveredBlock157Stack2 := (recoveredBlock157Stack2) > (recoveredBlock157Stack3).
            recoveredBlock157PC := 262.
        ].
        recoveredBlock157Step = 262 ifTrue: [
            (recoveredBlock157Stack2) ifTrue: [recoveredBlock157PC := 266] ifFalse: [recoveredBlock157PC := 278].
        ].
        recoveredBlock157Step = 266 ifTrue: [
            recoveredBlock157Stack2 := recoveredBlock157Arg1.
            recoveredBlock157PC := 267.
        ].
        recoveredBlock157Step = 267 ifTrue: [
            recoveredBlock157Stack2 := (recoveredBlock157Stack2) key.
            recoveredBlock157PC := 269.
        ].
        recoveredBlock157Step = 269 ifTrue: [
            recoveredBlock157Stack2 := (recoveredBlock157Stack2) x.
            recoveredBlock157PC := 271.
        ].
        recoveredBlock157Step = 271 ifTrue: [
            recoveredBlock157Stack3 := recoveredLocal1.
            recoveredBlock157PC := 274.
        ].
        recoveredBlock157Step = 274 ifTrue: [
            recoveredBlock157Stack2 := (recoveredBlock157Stack2) + (recoveredBlock157Stack3).
            recoveredBlock157PC := 275.
        ].
        recoveredBlock157Step = 275 ifTrue: [
            recoveredBlock157PC := 283.
        ].
        recoveredBlock157Step = 278 ifTrue: [
            recoveredBlock157Stack2 := recoveredBlock157Arg1.
            recoveredBlock157PC := 279.
        ].
        recoveredBlock157Step = 279 ifTrue: [
            recoveredBlock157Stack2 := (recoveredBlock157Stack2) key.
            recoveredBlock157PC := 281.
        ].
        recoveredBlock157Step = 281 ifTrue: [
            recoveredBlock157Stack2 := (recoveredBlock157Stack2) x.
            recoveredBlock157PC := 283.
        ].
        recoveredBlock157Step = 283 ifTrue: [
            recoveredBlock157Stack3 := recoveredBlock157Local1.
            recoveredBlock157PC := 284.
        ].
        recoveredBlock157Step = 284 ifTrue: [
            recoveredBlock157Stack4 := recoveredArg3.
            recoveredBlock157PC := 287.
        ].
        recoveredBlock157Step = 287 ifTrue: [
            recoveredBlock157Stack3 := (recoveredBlock157Stack3) >= (recoveredBlock157Stack4).
            recoveredBlock157PC := 288.
        ].
        recoveredBlock157Step = 288 ifTrue: [
            (recoveredBlock157Stack3) ifTrue: [recoveredBlock157PC := 292] ifFalse: [recoveredBlock157PC := 304].
        ].
        recoveredBlock157Step = 292 ifTrue: [
            recoveredBlock157Stack3 := recoveredBlock157Arg1.
            recoveredBlock157PC := 293.
        ].
        recoveredBlock157Step = 293 ifTrue: [
            recoveredBlock157Stack3 := (recoveredBlock157Stack3) key.
            recoveredBlock157PC := 295.
        ].
        recoveredBlock157Step = 295 ifTrue: [
            recoveredBlock157Stack3 := (recoveredBlock157Stack3) y.
            recoveredBlock157PC := 297.
        ].
        recoveredBlock157Step = 297 ifTrue: [
            recoveredBlock157Stack4 := recoveredLocal1.
            recoveredBlock157PC := 300.
        ].
        recoveredBlock157Step = 300 ifTrue: [
            recoveredBlock157Stack3 := (recoveredBlock157Stack3) + (recoveredBlock157Stack4).
            recoveredBlock157PC := 301.
        ].
        recoveredBlock157Step = 301 ifTrue: [
            recoveredBlock157PC := 309.
        ].
        recoveredBlock157Step = 304 ifTrue: [
            recoveredBlock157Stack3 := recoveredBlock157Arg1.
            recoveredBlock157PC := 305.
        ].
        recoveredBlock157Step = 305 ifTrue: [
            recoveredBlock157Stack3 := (recoveredBlock157Stack3) key.
            recoveredBlock157PC := 307.
        ].
        recoveredBlock157Step = 307 ifTrue: [
            recoveredBlock157Stack3 := (recoveredBlock157Stack3) y.
            recoveredBlock157PC := 309.
        ].
        recoveredBlock157Step = 309 ifTrue: [
            recoveredBlock157Stack2 := (recoveredBlock157Stack2) @ (recoveredBlock157Stack3).
            recoveredBlock157PC := 311.
        ].
        recoveredBlock157Step = 311 ifTrue: [
            recoveredBlock157Stack3 := recoveredBlock157Arg1.
            recoveredBlock157PC := 312.
        ].
        recoveredBlock157Step = 312 ifTrue: [
            recoveredBlock157Stack3 := (recoveredBlock157Stack3) value.
            recoveredBlock157PC := 314.
        ].
        recoveredBlock157Step = 314 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) key: (recoveredBlock157Stack2) value: (recoveredBlock157Stack3).
            recoveredBlock157PC := 316.
        ].
        recoveredBlock157Step = 316 ifTrue: [
            recoveredBlock157Result := recoveredBlock157Stack1.
            recoveredBlock157Done := true.
        ].
    ].
    recoveredBlock157Result
].
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            (recoveredStack0) configureHScroll.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack5 := false.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            (recoveredStack0) drawTextRow1: (recoveredStack1) column1: (recoveredStack2) row2: (recoveredStack3) column2: (recoveredStack4) blanked: (recoveredStack5).
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            needsUpdate := recoveredStack0.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            modified := recoveredStack0.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ea080; bytecode file offset 0xee69a8"
!SGOSColorText methodsFor: 'recovered'!
insertLine: recoveredArg1 row: recoveredArg2 column: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := contents.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := contents.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := nodeColors.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := nodeColors.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeKey: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) verifyLimit: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := contents.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := contents.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) afterIndex: (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := needsUpdate.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) updateParseTree.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredPC := 308.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            needsUpdate := recoveredStack0.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := nodeColors.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack4 := [:recoveredBlock183Arg1 | 
    | recoveredBlock183Value0 recoveredBlock183Value1 recoveredBlock183Value2 recoveredBlock183Value3 recoveredBlock183Value4 |
    recoveredBlock183Value0 := recoveredBlock183Arg1.
    recoveredBlock183Value1 := (recoveredBlock183Value0) key.
    recoveredBlock183Value2 := (recoveredBlock183Value1) x.
    recoveredBlock183Value3 := recoveredLocal1.
    recoveredBlock183Value4 := (recoveredBlock183Value2) <= (recoveredBlock183Value3).
    recoveredBlock183Value4
].
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := (recoveredStack3) select: (recoveredStack4).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack4 := [:recoveredBlock202Arg1 | 
    | recoveredBlock202Value0 recoveredBlock202Value1 recoveredBlock202Value2 recoveredBlock202Value3 recoveredBlock202Value4 recoveredBlock202Value5 recoveredBlock202Value6 recoveredBlock202Value7 recoveredBlock202Value8 recoveredBlock202Value9 recoveredBlock202Value10 recoveredBlock202Value11 recoveredBlock202Value12 |
    recoveredBlock202Value0 := Association.
    recoveredBlock202Value1 := recoveredBlock202Arg1.
    recoveredBlock202Value2 := (recoveredBlock202Value1) key.
    recoveredBlock202Value3 := (recoveredBlock202Value2) x.
    recoveredBlock202Value4 := recoveredBlock202Arg1.
    recoveredBlock202Value5 := (recoveredBlock202Value4) key.
    recoveredBlock202Value6 := (recoveredBlock202Value5) y.
    recoveredBlock202Value7 := recoveredLocal1.
    recoveredBlock202Value8 := (recoveredBlock202Value6) min: (recoveredBlock202Value7).
    recoveredBlock202Value9 := (recoveredBlock202Value3) @ (recoveredBlock202Value8).
    recoveredBlock202Value10 := recoveredBlock202Arg1.
    recoveredBlock202Value11 := (recoveredBlock202Value10) value.
    recoveredBlock202Value12 := (recoveredBlock202Value0) key: (recoveredBlock202Value9) value: (recoveredBlock202Value11).
    recoveredBlock202Value12
].
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack3 := [:recoveredBlock243Arg1 | 
    | recoveredBlock243Value0 recoveredBlock243Value1 recoveredBlock243Value2 recoveredBlock243Value3 recoveredBlock243Value4 |
    recoveredBlock243Value0 := recoveredBlock243Arg1.
    recoveredBlock243Value1 := (recoveredBlock243Value0) key.
    recoveredBlock243Value2 := (recoveredBlock243Value1) y.
    recoveredBlock243Value3 := recoveredLocal1.
    recoveredBlock243Value4 := (recoveredBlock243Value2) > (recoveredBlock243Value3).
    recoveredBlock243Value4
].
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack3 := [:recoveredBlock262Arg1 | 
    | recoveredBlock262Value0 recoveredBlock262Value1 recoveredBlock262Value2 recoveredBlock262Value3 recoveredBlock262Value4 recoveredBlock262Value5 recoveredBlock262Value6 recoveredBlock262Value7 recoveredBlock262Value8 recoveredBlock262Value9 recoveredBlock262Value10 recoveredBlock262Value11 recoveredBlock262Value12 recoveredBlock262Value13 recoveredBlock262Value14 recoveredBlock262Value15 |
    recoveredBlock262Value0 := Association.
    recoveredBlock262Value1 := recoveredBlock262Arg1.
    recoveredBlock262Value2 := (recoveredBlock262Value1) key.
    recoveredBlock262Value3 := (recoveredBlock262Value2) x.
    recoveredBlock262Value4 := recoveredLocal1.
    recoveredBlock262Value5 := (recoveredBlock262Value3) - (recoveredBlock262Value4).
    recoveredBlock262Value6 := (recoveredBlock262Value5) max: (1).
    recoveredBlock262Value7 := recoveredBlock262Arg1.
    recoveredBlock262Value8 := (recoveredBlock262Value7) key.
    recoveredBlock262Value9 := (recoveredBlock262Value8) y.
    recoveredBlock262Value10 := recoveredLocal1.
    recoveredBlock262Value11 := (recoveredBlock262Value9) - (recoveredBlock262Value10).
    recoveredBlock262Value12 := (recoveredBlock262Value6) @ (recoveredBlock262Value11).
    recoveredBlock262Value13 := recoveredBlock262Arg1.
    recoveredBlock262Value14 := (recoveredBlock262Value13) value.
    recoveredBlock262Value15 := (recoveredBlock262Value0) key: (recoveredBlock262Value12) value: (recoveredBlock262Value14).
    recoveredBlock262Value15
].
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack1) configureHScroll.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            (recoveredStack0) configureVScroll.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack0 := insetY.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack2 := topIndex.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack2 := fontHeight.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 347] ifFalse: [recoveredPC := 338].
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := fontHeight.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack2 := fontHeight.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack3 := insetX.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack5 := (recoveredStack5) clipWidth.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack6 := insetX.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack6 := (recoveredStack6) clipHeight.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack7 := insetY.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (recoveredStack7).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            (recoveredStack0) scrollWindow: (recoveredStack1) y: (recoveredStack2) left: (recoveredStack3) top: (recoveredStack4) right: (recoveredStack5) bottom: (recoveredStack6).
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            (recoveredStack0) drawTextRow1: (recoveredStack1) column1: (recoveredStack2) row2: (recoveredStack3) column2: (recoveredStack4) blanked: (recoveredStack5).
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            (recoveredStack0) update.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            modified := recoveredStack0.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20622fe8; bytecode file offset 0xf1f910"
!SGOSColorText methodsFor: 'recovered'!
deleteRow1: recoveredArg1 column1: recoveredArg2 row2: recoveredArg3 column2: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := contents.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := contents.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := contents.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := contents.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := nodeColors.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := nodeColors.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeKey: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredPC := 155.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := nodeColors.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeKey: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack4 := recoveredLocal8.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredLocal6 := recoveredStack3.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := contents.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 348] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 348] ifFalse: [recoveredPC := 216].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := nodeColors.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack4 := [:recoveredBlock224Arg1 | 
    | recoveredBlock224Value0 recoveredBlock224Value1 recoveredBlock224Value2 recoveredBlock224Value3 recoveredBlock224Value4 |
    recoveredBlock224Value0 := recoveredBlock224Arg1.
    recoveredBlock224Value1 := (recoveredBlock224Value0) key.
    recoveredBlock224Value2 := (recoveredBlock224Value1) x.
    recoveredBlock224Value3 := recoveredArg2.
    recoveredBlock224Value4 := (recoveredBlock224Value2) <= (recoveredBlock224Value3).
    recoveredBlock224Value4
].
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack3 := (recoveredStack3) select: (recoveredStack4).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack4 := [:recoveredBlock242Arg1 | 
    | recoveredBlock242Value0 recoveredBlock242Value1 recoveredBlock242Value2 recoveredBlock242Value3 recoveredBlock242Value4 recoveredBlock242Value5 recoveredBlock242Value6 recoveredBlock242Value7 recoveredBlock242Value8 recoveredBlock242Value9 recoveredBlock242Value10 recoveredBlock242Value11 recoveredBlock242Value12 |
    recoveredBlock242Value0 := Association.
    recoveredBlock242Value1 := recoveredBlock242Arg1.
    recoveredBlock242Value2 := (recoveredBlock242Value1) key.
    recoveredBlock242Value3 := (recoveredBlock242Value2) x.
    recoveredBlock242Value4 := recoveredBlock242Arg1.
    recoveredBlock242Value5 := (recoveredBlock242Value4) key.
    recoveredBlock242Value6 := (recoveredBlock242Value5) y.
    recoveredBlock242Value7 := recoveredArg2.
    recoveredBlock242Value8 := (recoveredBlock242Value6) min: (recoveredBlock242Value7).
    recoveredBlock242Value9 := (recoveredBlock242Value3) @ (recoveredBlock242Value8).
    recoveredBlock242Value10 := recoveredBlock242Arg1.
    recoveredBlock242Value11 := (recoveredBlock242Value10) value.
    recoveredBlock242Value12 := (recoveredBlock242Value0) key: (recoveredBlock242Value9) value: (recoveredBlock242Value11).
    recoveredBlock242Value12
].
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack5 := [:recoveredBlock278Arg1 | 
    | recoveredBlock278Value0 recoveredBlock278Value1 recoveredBlock278Value2 recoveredBlock278Value3 recoveredBlock278Value4 |
    recoveredBlock278Value0 := recoveredBlock278Arg1.
    recoveredBlock278Value1 := (recoveredBlock278Value0) key.
    recoveredBlock278Value2 := (recoveredBlock278Value1) y.
    recoveredBlock278Value3 := recoveredArg4.
    recoveredBlock278Value4 := (recoveredBlock278Value2) > (recoveredBlock278Value3).
    recoveredBlock278Value4
].
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack4 := (recoveredStack4) select: (recoveredStack5).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack5 := [:recoveredBlock296Arg1 | 
    | recoveredBlock296Value0 recoveredBlock296Value1 recoveredBlock296Value2 recoveredBlock296Value3 recoveredBlock296Value4 recoveredBlock296Value5 recoveredBlock296Value6 recoveredBlock296Value7 recoveredBlock296Value8 recoveredBlock296Value9 recoveredBlock296Value10 recoveredBlock296Value11 recoveredBlock296Value12 recoveredBlock296Value13 recoveredBlock296Value14 recoveredBlock296Value15 recoveredBlock296Value16 recoveredBlock296Value17 recoveredBlock296Value18 recoveredBlock296Value19 |
    recoveredBlock296Value0 := Association.
    recoveredBlock296Value1 := recoveredBlock296Arg1.
    recoveredBlock296Value2 := (recoveredBlock296Value1) key.
    recoveredBlock296Value3 := (recoveredBlock296Value2) x.
    recoveredBlock296Value4 := recoveredArg4.
    recoveredBlock296Value5 := (recoveredBlock296Value3) - (recoveredBlock296Value4).
    recoveredBlock296Value6 := (recoveredBlock296Value5) max: (1).
    recoveredBlock296Value7 := recoveredArg2.
    recoveredBlock296Value8 := (recoveredBlock296Value6) + (recoveredBlock296Value7).
    recoveredBlock296Value9 := recoveredBlock296Arg1.
    recoveredBlock296Value10 := (recoveredBlock296Value9) key.
    recoveredBlock296Value11 := (recoveredBlock296Value10) y.
    recoveredBlock296Value12 := recoveredArg4.
    recoveredBlock296Value13 := (recoveredBlock296Value11) - (recoveredBlock296Value12).
    recoveredBlock296Value14 := recoveredArg2.
    recoveredBlock296Value15 := (recoveredBlock296Value13) + (recoveredBlock296Value14).
    recoveredBlock296Value16 := (recoveredBlock296Value8) @ (recoveredBlock296Value15).
    recoveredBlock296Value17 := recoveredBlock296Arg1.
    recoveredBlock296Value18 := (recoveredBlock296Value17) value.
    recoveredBlock296Value19 := (recoveredBlock296Value0) key: (recoveredBlock296Value16) value: (recoveredBlock296Value18).
    recoveredBlock296Value19
].
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack4 := (recoveredStack4) collect: (recoveredStack5).
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack3 := topIndex.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack2 := (recoveredStack2) <= (recoveredStack3).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 358] ifFalse: [recoveredPC := 365].
        ].
        recoveredStep = 358 ifTrue: [
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := topIndex.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 374] ifFalse: [recoveredPC := 407].
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := topIndex.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack2 := fontHeight.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            topIndex := recoveredStack1.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := caret.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack2 := caret.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack3 := caret.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            (recoveredStack1) x: (recoveredStack2) y: (recoveredStack3).
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredPC := 443.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack2 := contents.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack2 := (recoveredStack2) removeAtIndex: (recoveredStack3).
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredLocal9 := recoveredStack2.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack2 := nodeColors.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 443] ifFalse: [recoveredPC := 434].
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack2 := nodeColors.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            (recoveredStack2) removeKey: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            (recoveredStack1 isInteger) ifTrue: [(recoveredStack1 > 0) ifTrue: [recoveredStack1 := recoveredStack1 - 1. recoveredPC := 418] ifFalse: [recoveredPC := 453]] ifFalse: [recoveredPC := 446].
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 418] ifFalse: [recoveredPC := 453].
        ].
        recoveredStep = 453 ifTrue: [
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            (recoveredStack0) configureVScroll.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 462] ifFalse: [recoveredPC := 465].
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            (recoveredStack0) configureHScroll.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 472] ifFalse: [recoveredPC := 478].
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            (recoveredStack0) redraw.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredPC := 548.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack4 := recoveredLocal10.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            (recoveredStack0) drawTextRow1: (recoveredStack1) column1: (recoveredStack2) row2: (recoveredStack3) column2: (recoveredStack4) blanked: (recoveredStack5).
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack0 := insetY.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack2 := topIndex.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack2 := fontHeight.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack3 := fontHeight.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack3 := insetX.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack5 := (recoveredStack5) clipWidth.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack6 := insetX.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack6 := recoveredLocal5.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack7 := (recoveredStack7) clipHeight.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (recoveredStack7).
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack7 := insetY.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (recoveredStack7).
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            (recoveredStack0) scrollWindow: (recoveredStack1) y: (recoveredStack2) left: (recoveredStack3) top: (recoveredStack4) right: (recoveredStack5) bottom: (recoveredStack6).
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            (recoveredStack0) update.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            needsUpdate := recoveredStack0.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            modified := recoveredStack0.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20683d40; bytecode file offset 0xf80664"
!SGOSColorText methodsFor: 'recovered'!
drawText: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) useColorSyntax.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 8].
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
            recoveredStack0 := super drawText: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            highlightMode := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nodeColors.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) calculateNodeColors.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := topIndex.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) top.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := fontHeight.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := topIndex.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) bottom.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := fontHeight.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := contents.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) min: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := insetY.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := topIndex.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := fontHeight.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock84Local1 recoveredBlock84Local2 recoveredBlock84Local3 recoveredBlock84Local4 recoveredBlock84Local5 recoveredBlock84Local6 recoveredBlock84Local7 recoveredBlock84Local8 recoveredBlock84Local9 recoveredBlock84Local10 recoveredBlock84Local11 recoveredBlock84Local12 recoveredBlock84Stack0 recoveredBlock84Stack1 recoveredBlock84Stack2 recoveredBlock84Stack3 recoveredBlock84Stack4 recoveredBlock84Stack5 recoveredBlock84Stack6 recoveredBlock84Stack7 recoveredBlock84Stack8 recoveredBlock84Stack9 recoveredBlock84Stack10 recoveredBlock84PC recoveredBlock84Step recoveredBlock84Done recoveredBlock84Result |
    recoveredBlock84Stack0 := self.
    recoveredBlock84PC := 90.
    recoveredBlock84Done := false.
    [recoveredBlock84Done not] whileTrue: [
        recoveredBlock84Step := recoveredBlock84PC.
        recoveredBlock84Step = 90 ifTrue: [
            recoveredBlock84Stack1 := startRow.
            recoveredBlock84PC := 92.
        ].
        recoveredBlock84Step = 92 ifTrue: [
            recoveredBlock84Stack2 := recoveredLocal2.
            recoveredBlock84PC := 95.
        ].
        recoveredBlock84Step = 95 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) < (recoveredBlock84Stack2).
            recoveredBlock84PC := 96.
        ].
        recoveredBlock84Step = 96 ifTrue: [
            (recoveredBlock84Stack1) ifTrue: [recoveredBlock84PC := 100] ifFalse: [recoveredBlock84PC := 117].
        ].
        recoveredBlock84Step = 100 ifTrue: [
            recoveredBlock84Stack1 := recoveredLocal2.
            recoveredBlock84PC := 103.
        ].
        recoveredBlock84Step = 103 ifTrue: [
            recoveredBlock84Stack2 := endRow.
            recoveredBlock84PC := 105.
        ].
        recoveredBlock84Step = 105 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) <= (recoveredBlock84Stack2).
            recoveredBlock84PC := 106.
        ].
        recoveredBlock84Step = 106 ifTrue: [
            (recoveredBlock84Stack1) ifTrue: [recoveredBlock84PC := 110] ifFalse: [recoveredBlock84PC := 117].
        ].
        recoveredBlock84Step = 110 ifTrue: [
            recoveredBlock84Stack1 := self.
            recoveredBlock84PC := 111.
        ].
        recoveredBlock84Step = 111 ifTrue: [
            recoveredBlock84Stack2 := true.
            recoveredBlock84PC := 112.
        ].
        recoveredBlock84Step = 112 ifTrue: [
            recoveredBlock84Stack3 := recoveredBlock84Stack2.
            recoveredBlock84PC := 113.
        ].
        recoveredBlock84Step = 113 ifTrue: [
            highlightMode := recoveredBlock84Stack3.
            recoveredBlock84PC := 115.
        ].
        recoveredBlock84Step = 115 ifTrue: [
            (recoveredBlock84Stack1) highlightMode: (recoveredBlock84Stack2).
            recoveredBlock84PC := 117.
        ].
        recoveredBlock84Step = 117 ifTrue: [
            recoveredBlock84Stack1 := recoveredLocal1.
            recoveredBlock84PC := 120.
        ].
        recoveredBlock84Step = 120 ifTrue: [
            recoveredBlock84Stack2 := recoveredLocal2.
            recoveredBlock84PC := 123.
        ].
        recoveredBlock84Step = 123 ifTrue: [
            recoveredBlock84Stack2 := (recoveredBlock84Stack2) + (-1).
            recoveredBlock84PC := 124.
        ].
        recoveredBlock84Step = 124 ifTrue: [
            recoveredBlock84PC := 1323.
        ].
        recoveredBlock84Step = 128 ifTrue: [
            recoveredBlock84Local12 := recoveredBlock84Stack3.
            recoveredBlock84PC := 131.
        ].
        recoveredBlock84Step = 131 ifTrue: [
            recoveredBlock84Stack3 := 1.
            recoveredBlock84PC := 133.
        ].
        recoveredBlock84Step = 133 ifTrue: [
            recoveredBlock84Local9 := recoveredBlock84Stack3.
            recoveredBlock84PC := 136.
        ].
        recoveredBlock84Step = 136 ifTrue: [
            recoveredBlock84Stack3 := insetX.
            recoveredBlock84PC := 138.
        ].
        recoveredBlock84Step = 138 ifTrue: [
            recoveredBlock84Local11 := recoveredBlock84Stack3.
            recoveredBlock84PC := 141.
        ].
        recoveredBlock84Step = 141 ifTrue: [
            recoveredBlock84Stack3 := contents.
            recoveredBlock84PC := 143.
        ].
        recoveredBlock84Step = 143 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Local12.
            recoveredBlock84PC := 146.
        ].
        recoveredBlock84Step = 146 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) at: (recoveredBlock84Stack4).
            recoveredBlock84PC := 148.
        ].
        recoveredBlock84Step = 148 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Stack3.
            recoveredBlock84PC := 149.
        ].
        recoveredBlock84Step = 149 ifTrue: [
            recoveredBlock84Local10 := recoveredBlock84Stack4.
            recoveredBlock84PC := 152.
        ].
        recoveredBlock84Step = 152 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) size.
            recoveredBlock84PC := 154.
        ].
        recoveredBlock84Step = 154 ifTrue: [
            recoveredBlock84Local8 := recoveredBlock84Stack3.
            recoveredBlock84PC := 157.
        ].
        recoveredBlock84Step = 157 ifTrue: [
            recoveredBlock84Stack3 := false.
            recoveredBlock84PC := 158.
        ].
        recoveredBlock84Step = 158 ifTrue: [
            recoveredBlock84Stack4 := nodeColors.
            recoveredBlock84PC := 160.
        ].
        recoveredBlock84Step = 160 ifTrue: [
            (recoveredBlock84Stack4 == nil) ifTrue: [recoveredBlock84PC := 179] ifFalse: [recoveredBlock84PC := 164].
        ].
        recoveredBlock84Step = 164 ifTrue: [
            recoveredBlock84PC := 165.
        ].
        recoveredBlock84Step = 165 ifTrue: [
            recoveredBlock84Stack3 := nodeColors.
            recoveredBlock84PC := 167.
        ].
        recoveredBlock84Step = 167 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Local10.
            recoveredBlock84PC := 170.
        ].
        recoveredBlock84Step = 170 ifTrue: [
            recoveredBlock84Stack5 := [].
            recoveredBlock84PC := 172.
        ].
        recoveredBlock84Step = 172 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) at: (recoveredBlock84Stack4) ifAbsent: (recoveredBlock84Stack5).
            recoveredBlock84PC := 174.
        ].
        recoveredBlock84Step = 174 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Stack3.
            recoveredBlock84PC := 175.
        ].
        recoveredBlock84Step = 175 ifTrue: [
            recoveredBlock84Local6 := recoveredBlock84Stack4.
            recoveredBlock84PC := 178.
        ].
        recoveredBlock84Step = 178 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) notNil.
            recoveredBlock84PC := 179.
        ].
        recoveredBlock84Step = 179 ifTrue: [
            recoveredBlock84Local7 := recoveredBlock84Stack3.
            recoveredBlock84PC := 182.
        ].
        recoveredBlock84Step = 182 ifTrue: [
            recoveredBlock84Stack3 := recoveredBlock84Local12.
            recoveredBlock84PC := 185.
        ].
        recoveredBlock84Step = 185 ifTrue: [
            recoveredBlock84Stack4 := startRow.
            recoveredBlock84PC := 187.
        ].
        recoveredBlock84Step = 187 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) = (recoveredBlock84Stack4).
            recoveredBlock84PC := 188.
        ].
        recoveredBlock84Step = 188 ifTrue: [
            (recoveredBlock84Stack3) ifTrue: [recoveredBlock84PC := 192] ifFalse: [recoveredBlock84PC := 700].
        ].
        recoveredBlock84Step = 192 ifTrue: [
            recoveredBlock84Stack3 := recoveredBlock84Local7.
            recoveredBlock84PC := 195.
        ].
        recoveredBlock84Step = 195 ifTrue: [
            (recoveredBlock84Stack3) ifTrue: [recoveredBlock84PC := 198] ifFalse: [recoveredBlock84PC := 628].
        ].
        recoveredBlock84Step = 198 ifTrue: [
            recoveredBlock84Stack3 := recoveredBlock84Local6.
            recoveredBlock84PC := 201.
        ].
        recoveredBlock84Step = 201 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) reverse.
            recoveredBlock84PC := 203.
        ].
        recoveredBlock84Step = 203 ifTrue: [
            recoveredBlock84Stack4 := [:recoveredBlock84Block203Arg1 | 
    | recoveredBlock84Block203Value0 recoveredBlock84Block203Value1 recoveredBlock84Block203Value2 recoveredBlock84Block203Value3 recoveredBlock84Block203Value4 |
    recoveredBlock84Block203Value0 := recoveredBlock84Block203Arg1.
    recoveredBlock84Block203Value1 := (recoveredBlock84Block203Value0) key.
    recoveredBlock84Block203Value2 := (recoveredBlock84Block203Value1) y.
    recoveredBlock84Block203Value3 := startColumn.
    recoveredBlock84Block203Value4 := (recoveredBlock84Block203Value2) < (recoveredBlock84Block203Value3).
    recoveredBlock84Block203Value4
].
            recoveredBlock84PC := 219.
        ].
        recoveredBlock84Step = 219 ifTrue: [
            recoveredBlock84Stack5 := [].
            recoveredBlock84PC := 221.
        ].
        recoveredBlock84Step = 221 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) detect: (recoveredBlock84Stack4) ifNone: (recoveredBlock84Stack5).
            recoveredBlock84PC := 223.
        ].
        recoveredBlock84Step = 223 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Stack3.
            recoveredBlock84PC := 224.
        ].
        recoveredBlock84Step = 224 ifTrue: [
            recoveredBlock84Local5 := recoveredBlock84Stack4.
            recoveredBlock84PC := 227.
        ].
        recoveredBlock84Step = 227 ifTrue: [
            (recoveredBlock84Stack3 == nil) ifTrue: [recoveredBlock84PC := 628] ifFalse: [recoveredBlock84PC := 230].
        ].
        recoveredBlock84Step = 230 ifTrue: [
            recoveredBlock84Stack3 := contents.
            recoveredBlock84PC := 232.
        ].
        recoveredBlock84Step = 232 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Local12.
            recoveredBlock84PC := 235.
        ].
        recoveredBlock84Step = 235 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) at: (recoveredBlock84Stack4).
            recoveredBlock84PC := 237.
        ].
        recoveredBlock84Step = 237 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Local9.
            recoveredBlock84PC := 240.
        ].
        recoveredBlock84Step = 240 ifTrue: [
            recoveredBlock84Stack5 := recoveredBlock84Local6.
            recoveredBlock84PC := 243.
        ].
        recoveredBlock84Step = 243 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) first.
            recoveredBlock84PC := 245.
        ].
        recoveredBlock84Step = 245 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) key.
            recoveredBlock84PC := 247.
        ].
        recoveredBlock84Step = 247 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) x.
            recoveredBlock84PC := 249.
        ].
        recoveredBlock84Step = 249 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) + (-1).
            recoveredBlock84PC := 250.
        ].
        recoveredBlock84Step = 250 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Local8.
            recoveredBlock84PC := 253.
        ].
        recoveredBlock84Step = 253 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) min: (recoveredBlock84Stack6).
            recoveredBlock84PC := 255.
        ].
        recoveredBlock84Step = 255 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Stack5.
            recoveredBlock84PC := 256.
        ].
        recoveredBlock84Step = 256 ifTrue: [
            recoveredBlock84Local3 := recoveredBlock84Stack6.
            recoveredBlock84PC := 259.
        ].
        recoveredBlock84Step = 259 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) copyFrom: (recoveredBlock84Stack4) to: (recoveredBlock84Stack5).
            recoveredBlock84PC := 261.
        ].
        recoveredBlock84Step = 261 ifTrue: [
            recoveredBlock84Local10 := recoveredBlock84Stack3.
            recoveredBlock84PC := 264.
        ].
        recoveredBlock84Step = 264 ifTrue: [
            recoveredBlock84Stack3 := self.
            recoveredBlock84PC := 265.
        ].
        recoveredBlock84Step = 265 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Local10.
            recoveredBlock84PC := 268.
        ].
        recoveredBlock84Step = 268 ifTrue: [
            recoveredBlock84Stack5 := recoveredBlock84Local11.
            recoveredBlock84PC := 271.
        ].
        recoveredBlock84Step = 271 ifTrue: [
            recoveredBlock84Stack6 := recoveredLocal3.
            recoveredBlock84PC := 274.
        ].
        recoveredBlock84Step = 274 ifTrue: [
            recoveredBlock84Stack7 := true.
            recoveredBlock84PC := 275.
        ].
        recoveredBlock84Step = 275 ifTrue: [
            (recoveredBlock84Stack3) drawText: (recoveredBlock84Stack4) x: (recoveredBlock84Stack5) y: (recoveredBlock84Stack6) blanked: (recoveredBlock84Stack7).
            recoveredBlock84PC := 278.
        ].
        recoveredBlock84Step = 278 ifTrue: [
            recoveredBlock84Stack3 := contents.
            recoveredBlock84PC := 280.
        ].
        recoveredBlock84Step = 280 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Local12.
            recoveredBlock84PC := 283.
        ].
        recoveredBlock84Step = 283 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) at: (recoveredBlock84Stack4).
            recoveredBlock84PC := 285.
        ].
        recoveredBlock84Step = 285 ifTrue: [
            recoveredBlock84Stack4 := 1.
            recoveredBlock84PC := 287.
        ].
        recoveredBlock84Step = 287 ifTrue: [
            recoveredBlock84Stack5 := recoveredBlock84Local3.
            recoveredBlock84PC := 290.
        ].
        recoveredBlock84Step = 290 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) copyFrom: (recoveredBlock84Stack4) to: (recoveredBlock84Stack5).
            recoveredBlock84PC := 292.
        ].
        recoveredBlock84Step = 292 ifTrue: [
            recoveredBlock84Local10 := recoveredBlock84Stack3.
            recoveredBlock84PC := 295.
        ].
        recoveredBlock84Step = 295 ifTrue: [
            recoveredBlock84Stack3 := insetX.
            recoveredBlock84PC := 297.
        ].
        recoveredBlock84Step = 297 ifTrue: [
            recoveredBlock84Stack4 := self.
            recoveredBlock84PC := 298.
        ].
        recoveredBlock84Step = 298 ifTrue: [
            recoveredBlock84Stack5 := recoveredBlock84Local10.
            recoveredBlock84PC := 301.
        ].
        recoveredBlock84Step = 301 ifTrue: [
            recoveredBlock84Stack4 := (recoveredBlock84Stack4) pixelWidth: (recoveredBlock84Stack5).
            recoveredBlock84PC := 303.
        ].
        recoveredBlock84Step = 303 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) + (recoveredBlock84Stack4).
            recoveredBlock84PC := 304.
        ].
        recoveredBlock84Step = 304 ifTrue: [
            recoveredBlock84Local11 := recoveredBlock84Stack3.
            recoveredBlock84PC := 307.
        ].
        recoveredBlock84Step = 307 ifTrue: [
            recoveredBlock84Stack3 := recoveredBlock84Local6.
            recoveredBlock84PC := 310.
        ].
        recoveredBlock84Step = 310 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Local5.
            recoveredBlock84PC := 313.
        ].
        recoveredBlock84Step = 313 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) indexOf: (recoveredBlock84Stack4).
            recoveredBlock84PC := 315.
        ].
        recoveredBlock84Step = 315 ifTrue: [
            recoveredBlock84Stack4 := 0.
            recoveredBlock84PC := 317.
        ].
        recoveredBlock84Step = 317 ifTrue: [
            recoveredBlock84PC := 593.
        ].
        recoveredBlock84Step = 320 ifTrue: [
            recoveredBlock84Local2 := recoveredBlock84Stack5.
            recoveredBlock84PC := 323.
        ].
        recoveredBlock84Step = 323 ifTrue: [
            recoveredBlock84Stack5 := recoveredBlock84Local6.
            recoveredBlock84PC := 326.
        ].
        recoveredBlock84Step = 326 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Local2.
            recoveredBlock84PC := 329.
        ].
        recoveredBlock84Step = 329 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) at: (recoveredBlock84Stack6).
            recoveredBlock84PC := 331.
        ].
        recoveredBlock84Step = 331 ifTrue: [
            recoveredBlock84Local1 := recoveredBlock84Stack5.
            recoveredBlock84PC := 334.
        ].
        recoveredBlock84Step = 334 ifTrue: [
            recoveredBlock84Stack5 := self.
            recoveredBlock84PC := 335.
        ].
        recoveredBlock84Step = 335 ifTrue: [
            recoveredBlock84Stack6 := [:recoveredBlock84Block335Arg1 | 
    | recoveredBlock84Block335Value0 recoveredBlock84Block335Value1 recoveredBlock84Block335Value2 recoveredBlock84Block335Value3 |
    recoveredBlock84Block335Value0 := recoveredBlock84Block335Arg1.
    recoveredBlock84Block335Value1 := recoveredBlock84Local1.
    recoveredBlock84Block335Value2 := (recoveredBlock84Block335Value1) value.
    recoveredBlock84Block335Value3 := (recoveredBlock84Block335Value0) setTextColor: (recoveredBlock84Block335Value2).
    recoveredBlock84Block335Value3
].
            recoveredBlock84PC := 351.
        ].
        recoveredBlock84Step = 351 ifTrue: [
            (recoveredBlock84Stack5) dcDo: (recoveredBlock84Stack6).
            recoveredBlock84PC := 353.
        ].
        recoveredBlock84Step = 353 ifTrue: [
            recoveredBlock84Stack5 := contents.
            recoveredBlock84PC := 355.
        ].
        recoveredBlock84Step = 355 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Local12.
            recoveredBlock84PC := 358.
        ].
        recoveredBlock84Step = 358 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) at: (recoveredBlock84Stack6).
            recoveredBlock84PC := 360.
        ].
        recoveredBlock84Step = 360 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Local1.
            recoveredBlock84PC := 363.
        ].
        recoveredBlock84Step = 363 ifTrue: [
            recoveredBlock84Stack6 := (recoveredBlock84Stack6) key.
            recoveredBlock84PC := 365.
        ].
        recoveredBlock84Step = 365 ifTrue: [
            recoveredBlock84Stack6 := (recoveredBlock84Stack6) x.
            recoveredBlock84PC := 367.
        ].
        recoveredBlock84Step = 367 ifTrue: [
            recoveredBlock84Stack7 := 1.
            recoveredBlock84PC := 369.
        ].
        recoveredBlock84Step = 369 ifTrue: [
            recoveredBlock84Stack6 := (recoveredBlock84Stack6) max: (recoveredBlock84Stack7).
            recoveredBlock84PC := 371.
        ].
        recoveredBlock84Step = 371 ifTrue: [
            recoveredBlock84Stack7 := recoveredBlock84Local1.
            recoveredBlock84PC := 374.
        ].
        recoveredBlock84Step = 374 ifTrue: [
            recoveredBlock84Stack7 := (recoveredBlock84Stack7) key.
            recoveredBlock84PC := 376.
        ].
        recoveredBlock84Step = 376 ifTrue: [
            recoveredBlock84Stack7 := (recoveredBlock84Stack7) y.
            recoveredBlock84PC := 378.
        ].
        recoveredBlock84Step = 378 ifTrue: [
            recoveredBlock84Stack8 := startColumn.
            recoveredBlock84PC := 380.
        ].
        recoveredBlock84Step = 380 ifTrue: [
            recoveredBlock84Stack7 := (recoveredBlock84Stack7) min: (recoveredBlock84Stack8).
            recoveredBlock84PC := 382.
        ].
        recoveredBlock84Step = 382 ifTrue: [
            recoveredBlock84Stack8 := recoveredBlock84Stack7.
            recoveredBlock84PC := 383.
        ].
        recoveredBlock84Step = 383 ifTrue: [
            recoveredBlock84Local3 := recoveredBlock84Stack8.
            recoveredBlock84PC := 386.
        ].
        recoveredBlock84Step = 386 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) copyFrom: (recoveredBlock84Stack6) to: (recoveredBlock84Stack7).
            recoveredBlock84PC := 388.
        ].
        recoveredBlock84Step = 388 ifTrue: [
            recoveredBlock84Local10 := recoveredBlock84Stack5.
            recoveredBlock84PC := 391.
        ].
        recoveredBlock84Step = 391 ifTrue: [
            recoveredBlock84Stack5 := self.
            recoveredBlock84PC := 392.
        ].
        recoveredBlock84Step = 392 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Local10.
            recoveredBlock84PC := 395.
        ].
        recoveredBlock84Step = 395 ifTrue: [
            recoveredBlock84Stack7 := recoveredBlock84Local11.
            recoveredBlock84PC := 398.
        ].
        recoveredBlock84Step = 398 ifTrue: [
            recoveredBlock84Stack8 := recoveredLocal3.
            recoveredBlock84PC := 401.
        ].
        recoveredBlock84Step = 401 ifTrue: [
            recoveredBlock84Stack9 := true.
            recoveredBlock84PC := 402.
        ].
        recoveredBlock84Step = 402 ifTrue: [
            (recoveredBlock84Stack5) drawText: (recoveredBlock84Stack6) x: (recoveredBlock84Stack7) y: (recoveredBlock84Stack8) blanked: (recoveredBlock84Stack9).
            recoveredBlock84PC := 405.
        ].
        recoveredBlock84Step = 405 ifTrue: [
            recoveredBlock84Stack5 := contents.
            recoveredBlock84PC := 407.
        ].
        recoveredBlock84Step = 407 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Local12.
            recoveredBlock84PC := 410.
        ].
        recoveredBlock84Step = 410 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) at: (recoveredBlock84Stack6).
            recoveredBlock84PC := 412.
        ].
        recoveredBlock84Step = 412 ifTrue: [
            recoveredBlock84Stack6 := 1.
            recoveredBlock84PC := 414.
        ].
        recoveredBlock84Step = 414 ifTrue: [
            recoveredBlock84Stack7 := recoveredBlock84Local3.
            recoveredBlock84PC := 417.
        ].
        recoveredBlock84Step = 417 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) copyFrom: (recoveredBlock84Stack6) to: (recoveredBlock84Stack7).
            recoveredBlock84PC := 419.
        ].
        recoveredBlock84Step = 419 ifTrue: [
            recoveredBlock84Local10 := recoveredBlock84Stack5.
            recoveredBlock84PC := 422.
        ].
        recoveredBlock84Step = 422 ifTrue: [
            recoveredBlock84Stack5 := insetX.
            recoveredBlock84PC := 424.
        ].
        recoveredBlock84Step = 424 ifTrue: [
            recoveredBlock84Stack6 := self.
            recoveredBlock84PC := 425.
        ].
        recoveredBlock84Step = 425 ifTrue: [
            recoveredBlock84Stack7 := recoveredBlock84Local10.
            recoveredBlock84PC := 428.
        ].
        recoveredBlock84Step = 428 ifTrue: [
            recoveredBlock84Stack6 := (recoveredBlock84Stack6) pixelWidth: (recoveredBlock84Stack7).
            recoveredBlock84PC := 430.
        ].
        recoveredBlock84Step = 430 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) + (recoveredBlock84Stack6).
            recoveredBlock84PC := 431.
        ].
        recoveredBlock84Step = 431 ifTrue: [
            recoveredBlock84Local11 := recoveredBlock84Stack5.
            recoveredBlock84PC := 434.
        ].
        recoveredBlock84Step = 434 ifTrue: [
            recoveredBlock84Stack5 := self.
            recoveredBlock84PC := 435.
        ].
        recoveredBlock84Step = 435 ifTrue: [
            recoveredBlock84Stack6 := [:recoveredBlock84Block435Arg1 | 
    | recoveredBlock84Block435Value0 recoveredBlock84Block435Value1 recoveredBlock84Block435Value2 |
    recoveredBlock84Block435Value0 := recoveredBlock84Block435Arg1.
    recoveredBlock84Block435Value1 := (self) foreground.
    recoveredBlock84Block435Value2 := (recoveredBlock84Block435Value0) setTextColor: (recoveredBlock84Block435Value1).
    recoveredBlock84Block435Value2
].
            recoveredBlock84PC := 449.
        ].
        recoveredBlock84Step = 449 ifTrue: [
            (recoveredBlock84Stack5) dcDo: (recoveredBlock84Stack6).
            recoveredBlock84PC := 451.
        ].
        recoveredBlock84Step = 451 ifTrue: [
            recoveredBlock84Stack5 := recoveredBlock84Local1.
            recoveredBlock84PC := 454.
        ].
        recoveredBlock84Step = 454 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) key.
            recoveredBlock84PC := 456.
        ].
        recoveredBlock84Step = 456 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) y.
            recoveredBlock84PC := 458.
        ].
        recoveredBlock84Step = 458 ifTrue: [
            recoveredBlock84Stack6 := startColumn.
            recoveredBlock84PC := 460.
        ].
        recoveredBlock84Step = 460 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) < (recoveredBlock84Stack6).
            recoveredBlock84PC := 461.
        ].
        recoveredBlock84Step = 461 ifTrue: [
            (recoveredBlock84Stack5) ifTrue: [recoveredBlock84PC := 464] ifFalse: [recoveredBlock84PC := 589].
        ].
        recoveredBlock84Step = 464 ifTrue: [
            recoveredBlock84Stack5 := contents.
            recoveredBlock84PC := 466.
        ].
        recoveredBlock84Step = 466 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Local12.
            recoveredBlock84PC := 469.
        ].
        recoveredBlock84Step = 469 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) at: (recoveredBlock84Stack6).
            recoveredBlock84PC := 471.
        ].
        recoveredBlock84Step = 471 ifTrue: [
            recoveredBlock84Local10 := recoveredBlock84Stack5.
            recoveredBlock84PC := 474.
        ].
        recoveredBlock84Step = 474 ifTrue: [
            recoveredBlock84Stack5 := recoveredBlock84Local10.
            recoveredBlock84PC := 477.
        ].
        recoveredBlock84Step = 477 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Local1.
            recoveredBlock84PC := 480.
        ].
        recoveredBlock84Step = 480 ifTrue: [
            recoveredBlock84Stack6 := (recoveredBlock84Stack6) key.
            recoveredBlock84PC := 482.
        ].
        recoveredBlock84Step = 482 ifTrue: [
            recoveredBlock84Stack6 := (recoveredBlock84Stack6) y.
            recoveredBlock84PC := 484.
        ].
        recoveredBlock84Step = 484 ifTrue: [
            recoveredBlock84Stack6 := (recoveredBlock84Stack6) + (1).
            recoveredBlock84PC := 485.
        ].
        recoveredBlock84Step = 485 ifTrue: [
            recoveredBlock84Stack7 := recoveredBlock84Local10.
            recoveredBlock84PC := 488.
        ].
        recoveredBlock84Step = 488 ifTrue: [
            recoveredBlock84Stack7 := (recoveredBlock84Stack7) size.
            recoveredBlock84PC := 490.
        ].
        recoveredBlock84Step = 490 ifTrue: [
            recoveredBlock84Stack6 := (recoveredBlock84Stack6) min: (recoveredBlock84Stack7).
            recoveredBlock84PC := 492.
        ].
        recoveredBlock84Step = 492 ifTrue: [
            recoveredBlock84Stack7 := recoveredBlock84Local2.
            recoveredBlock84PC := 495.
        ].
        recoveredBlock84Step = 495 ifTrue: [
            recoveredBlock84Stack8 := recoveredBlock84Local6.
            recoveredBlock84PC := 498.
        ].
        recoveredBlock84Step = 498 ifTrue: [
            recoveredBlock84Stack9 := recoveredBlock84Local5.
            recoveredBlock84PC := 501.
        ].
        recoveredBlock84Step = 501 ifTrue: [
            recoveredBlock84Stack8 := (recoveredBlock84Stack8) indexOf: (recoveredBlock84Stack9).
            recoveredBlock84PC := 503.
        ].
        recoveredBlock84Step = 503 ifTrue: [
            (recoveredBlock84Stack7 ~~ recoveredBlock84Stack8) ifTrue: [recoveredBlock84PC := 512] ifFalse: [recoveredBlock84PC := 506].
        ].
        recoveredBlock84Step = 506 ifTrue: [
            recoveredBlock84Stack7 := startColumn.
            recoveredBlock84PC := 508.
        ].
        recoveredBlock84Step = 508 ifTrue: [
            recoveredBlock84PC := 530.
        ].
        recoveredBlock84Step = 512 ifTrue: [
            recoveredBlock84Stack7 := recoveredBlock84Local6.
            recoveredBlock84PC := 515.
        ].
        recoveredBlock84Step = 515 ifTrue: [
            recoveredBlock84Stack8 := recoveredBlock84Local2.
            recoveredBlock84PC := 518.
        ].
        recoveredBlock84Step = 518 ifTrue: [
            recoveredBlock84Stack8 := (recoveredBlock84Stack8) + (1).
            recoveredBlock84PC := 519.
        ].
        recoveredBlock84Step = 519 ifTrue: [
            recoveredBlock84Stack7 := (recoveredBlock84Stack7) at: (recoveredBlock84Stack8).
            recoveredBlock84PC := 521.
        ].
        recoveredBlock84Step = 521 ifTrue: [
            recoveredBlock84Stack7 := (recoveredBlock84Stack7) key.
            recoveredBlock84PC := 523.
        ].
        recoveredBlock84Step = 523 ifTrue: [
            recoveredBlock84Stack7 := (recoveredBlock84Stack7) x.
            recoveredBlock84PC := 525.
        ].
        recoveredBlock84Step = 525 ifTrue: [
            recoveredBlock84Stack7 := (recoveredBlock84Stack7) + (-1).
            recoveredBlock84PC := 526.
        ].
        recoveredBlock84Step = 526 ifTrue: [
            recoveredBlock84Stack8 := startColumn.
            recoveredBlock84PC := 528.
        ].
        recoveredBlock84Step = 528 ifTrue: [
            recoveredBlock84Stack7 := (recoveredBlock84Stack7) min: (recoveredBlock84Stack8).
            recoveredBlock84PC := 530.
        ].
        recoveredBlock84Step = 530 ifTrue: [
            recoveredBlock84Stack8 := recoveredBlock84Local10.
            recoveredBlock84PC := 533.
        ].
        recoveredBlock84Step = 533 ifTrue: [
            recoveredBlock84Stack8 := (recoveredBlock84Stack8) size.
            recoveredBlock84PC := 535.
        ].
        recoveredBlock84Step = 535 ifTrue: [
            recoveredBlock84Stack7 := (recoveredBlock84Stack7) min: (recoveredBlock84Stack8).
            recoveredBlock84PC := 537.
        ].
        recoveredBlock84Step = 537 ifTrue: [
            recoveredBlock84Stack8 := recoveredBlock84Stack7.
            recoveredBlock84PC := 538.
        ].
        recoveredBlock84Step = 538 ifTrue: [
            recoveredBlock84Local3 := recoveredBlock84Stack8.
            recoveredBlock84PC := 541.
        ].
        recoveredBlock84Step = 541 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) copyFrom: (recoveredBlock84Stack6) to: (recoveredBlock84Stack7).
            recoveredBlock84PC := 543.
        ].
        recoveredBlock84Step = 543 ifTrue: [
            recoveredBlock84Local10 := recoveredBlock84Stack5.
            recoveredBlock84PC := 546.
        ].
        recoveredBlock84Step = 546 ifTrue: [
            recoveredBlock84Stack5 := self.
            recoveredBlock84PC := 547.
        ].
        recoveredBlock84Step = 547 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Local10.
            recoveredBlock84PC := 550.
        ].
        recoveredBlock84Step = 550 ifTrue: [
            recoveredBlock84Stack7 := recoveredBlock84Local11.
            recoveredBlock84PC := 553.
        ].
        recoveredBlock84Step = 553 ifTrue: [
            recoveredBlock84Stack8 := recoveredLocal3.
            recoveredBlock84PC := 556.
        ].
        recoveredBlock84Step = 556 ifTrue: [
            recoveredBlock84Stack9 := true.
            recoveredBlock84PC := 557.
        ].
        recoveredBlock84Step = 557 ifTrue: [
            (recoveredBlock84Stack5) drawText: (recoveredBlock84Stack6) x: (recoveredBlock84Stack7) y: (recoveredBlock84Stack8) blanked: (recoveredBlock84Stack9).
            recoveredBlock84PC := 560.
        ].
        recoveredBlock84Step = 560 ifTrue: [
            recoveredBlock84Stack5 := contents.
            recoveredBlock84PC := 562.
        ].
        recoveredBlock84Step = 562 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Local12.
            recoveredBlock84PC := 565.
        ].
        recoveredBlock84Step = 565 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) at: (recoveredBlock84Stack6).
            recoveredBlock84PC := 567.
        ].
        recoveredBlock84Step = 567 ifTrue: [
            recoveredBlock84Stack6 := 1.
            recoveredBlock84PC := 569.
        ].
        recoveredBlock84Step = 569 ifTrue: [
            recoveredBlock84Stack7 := recoveredBlock84Local3.
            recoveredBlock84PC := 572.
        ].
        recoveredBlock84Step = 572 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) copyFrom: (recoveredBlock84Stack6) to: (recoveredBlock84Stack7).
            recoveredBlock84PC := 574.
        ].
        recoveredBlock84Step = 574 ifTrue: [
            recoveredBlock84Local10 := recoveredBlock84Stack5.
            recoveredBlock84PC := 577.
        ].
        recoveredBlock84Step = 577 ifTrue: [
            recoveredBlock84Stack5 := insetX.
            recoveredBlock84PC := 579.
        ].
        recoveredBlock84Step = 579 ifTrue: [
            recoveredBlock84Stack6 := self.
            recoveredBlock84PC := 580.
        ].
        recoveredBlock84Step = 580 ifTrue: [
            recoveredBlock84Stack7 := recoveredBlock84Local10.
            recoveredBlock84PC := 583.
        ].
        recoveredBlock84Step = 583 ifTrue: [
            recoveredBlock84Stack6 := (recoveredBlock84Stack6) pixelWidth: (recoveredBlock84Stack7).
            recoveredBlock84PC := 585.
        ].
        recoveredBlock84Step = 585 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) + (recoveredBlock84Stack6).
            recoveredBlock84PC := 586.
        ].
        recoveredBlock84Step = 586 ifTrue: [
            recoveredBlock84Local11 := recoveredBlock84Stack5.
            recoveredBlock84PC := 589.
        ].
        recoveredBlock84Step = 589 ifTrue: [
            recoveredBlock84Stack5 := nil.
            recoveredBlock84PC := 590.
        ].
        recoveredBlock84Step = 590 ifTrue: [
            recoveredBlock84Local1 := recoveredBlock84Stack5.
            recoveredBlock84PC := 593.
        ].
        recoveredBlock84Step = 593 ifTrue: [
            (recoveredBlock84Stack3 isInteger and: [recoveredBlock84Stack4 isInteger]) ifTrue: [(recoveredBlock84Stack4 + 1 <= recoveredBlock84Stack3) ifTrue: [recoveredBlock84Stack4 := recoveredBlock84Stack4 + 1. recoveredBlock84Stack5 := recoveredBlock84Stack4. recoveredBlock84PC := 320] ifFalse: [recoveredBlock84PC := 624]] ifFalse: [recoveredBlock84PC := 597].
        ].
        recoveredBlock84Step = 597 ifTrue: [
            recoveredBlock84Local2 := recoveredBlock84Stack4.
            recoveredBlock84PC := 600.
        ].
        recoveredBlock84Step = 600 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Stack3.
            recoveredBlock84PC := 601.
        ].
        recoveredBlock84Step = 601 ifTrue: [
            recoveredBlock84Stack5 := recoveredBlock84Local2.
            recoveredBlock84PC := 604.
        ].
        recoveredBlock84Step = 604 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) + (1).
            recoveredBlock84PC := 605.
        ].
        recoveredBlock84Step = 605 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Stack5.
            recoveredBlock84PC := 606.
        ].
        recoveredBlock84Step = 606 ifTrue: [
            recoveredBlock84Local2 := recoveredBlock84Stack6.
            recoveredBlock84PC := 609.
        ].
        recoveredBlock84Step = 609 ifTrue: [
            recoveredBlock84Stack4 := (recoveredBlock84Stack4) < (recoveredBlock84Stack5).
            recoveredBlock84PC := 610.
        ].
        recoveredBlock84Step = 610 ifTrue: [
            (recoveredBlock84Stack4) ifTrue: [recoveredBlock84PC := 620] ifFalse: [recoveredBlock84PC := 614].
        ].
        recoveredBlock84Step = 614 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Local2.
            recoveredBlock84PC := 617.
        ].
        recoveredBlock84Step = 617 ifTrue: [
            recoveredBlock84PC := 323.
        ].
        recoveredBlock84Step = 620 ifTrue: [
            recoveredBlock84Stack4 := nil.
            recoveredBlock84PC := 621.
        ].
        recoveredBlock84Step = 621 ifTrue: [
            recoveredBlock84Local2 := recoveredBlock84Stack4.
            recoveredBlock84PC := 624.
        ].
        recoveredBlock84Step = 624 ifTrue: [
            recoveredBlock84PC := 625.
        ].
        recoveredBlock84Step = 625 ifTrue: [
            recoveredBlock84PC := 687.
        ].
        recoveredBlock84Step = 628 ifTrue: [
            recoveredBlock84Stack3 := contents.
            recoveredBlock84PC := 630.
        ].
        recoveredBlock84Step = 630 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Local12.
            recoveredBlock84PC := 633.
        ].
        recoveredBlock84Step = 633 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) at: (recoveredBlock84Stack4).
            recoveredBlock84PC := 635.
        ].
        recoveredBlock84Step = 635 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Local9.
            recoveredBlock84PC := 638.
        ].
        recoveredBlock84Step = 638 ifTrue: [
            recoveredBlock84Stack5 := startColumn.
            recoveredBlock84PC := 640.
        ].
        recoveredBlock84Step = 640 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) copyFrom: (recoveredBlock84Stack4) to: (recoveredBlock84Stack5).
            recoveredBlock84PC := 642.
        ].
        recoveredBlock84Step = 642 ifTrue: [
            recoveredBlock84Local10 := recoveredBlock84Stack3.
            recoveredBlock84PC := 645.
        ].
        recoveredBlock84Step = 645 ifTrue: [
            recoveredBlock84Stack3 := self.
            recoveredBlock84PC := 646.
        ].
        recoveredBlock84Step = 646 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Local10.
            recoveredBlock84PC := 649.
        ].
        recoveredBlock84Step = 649 ifTrue: [
            recoveredBlock84Stack5 := recoveredBlock84Local11.
            recoveredBlock84PC := 652.
        ].
        recoveredBlock84Step = 652 ifTrue: [
            recoveredBlock84Stack6 := recoveredLocal3.
            recoveredBlock84PC := 655.
        ].
        recoveredBlock84Step = 655 ifTrue: [
            recoveredBlock84Stack7 := true.
            recoveredBlock84PC := 656.
        ].
        recoveredBlock84Step = 656 ifTrue: [
            (recoveredBlock84Stack3) drawText: (recoveredBlock84Stack4) x: (recoveredBlock84Stack5) y: (recoveredBlock84Stack6) blanked: (recoveredBlock84Stack7).
            recoveredBlock84PC := 659.
        ].
        recoveredBlock84Step = 659 ifTrue: [
            recoveredBlock84Stack3 := contents.
            recoveredBlock84PC := 661.
        ].
        recoveredBlock84Step = 661 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Local12.
            recoveredBlock84PC := 664.
        ].
        recoveredBlock84Step = 664 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) at: (recoveredBlock84Stack4).
            recoveredBlock84PC := 666.
        ].
        recoveredBlock84Step = 666 ifTrue: [
            recoveredBlock84Stack4 := 1.
            recoveredBlock84PC := 668.
        ].
        recoveredBlock84Step = 668 ifTrue: [
            recoveredBlock84Stack5 := startColumn.
            recoveredBlock84PC := 670.
        ].
        recoveredBlock84Step = 670 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) copyFrom: (recoveredBlock84Stack4) to: (recoveredBlock84Stack5).
            recoveredBlock84PC := 672.
        ].
        recoveredBlock84Step = 672 ifTrue: [
            recoveredBlock84Local10 := recoveredBlock84Stack3.
            recoveredBlock84PC := 675.
        ].
        recoveredBlock84Step = 675 ifTrue: [
            recoveredBlock84Stack3 := insetX.
            recoveredBlock84PC := 677.
        ].
        recoveredBlock84Step = 677 ifTrue: [
            recoveredBlock84Stack4 := self.
            recoveredBlock84PC := 678.
        ].
        recoveredBlock84Step = 678 ifTrue: [
            recoveredBlock84Stack5 := recoveredBlock84Local10.
            recoveredBlock84PC := 681.
        ].
        recoveredBlock84Step = 681 ifTrue: [
            recoveredBlock84Stack4 := (recoveredBlock84Stack4) pixelWidth: (recoveredBlock84Stack5).
            recoveredBlock84PC := 683.
        ].
        recoveredBlock84Step = 683 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) + (recoveredBlock84Stack4).
            recoveredBlock84PC := 684.
        ].
        recoveredBlock84Step = 684 ifTrue: [
            recoveredBlock84Local11 := recoveredBlock84Stack3.
            recoveredBlock84PC := 687.
        ].
        recoveredBlock84Step = 687 ifTrue: [
            recoveredBlock84Stack3 := self.
            recoveredBlock84PC := 688.
        ].
        recoveredBlock84Step = 688 ifTrue: [
            recoveredBlock84Stack4 := true.
            recoveredBlock84PC := 689.
        ].
        recoveredBlock84Step = 689 ifTrue: [
            recoveredBlock84Stack5 := recoveredBlock84Stack4.
            recoveredBlock84PC := 690.
        ].
        recoveredBlock84Step = 690 ifTrue: [
            highlightMode := recoveredBlock84Stack5.
            recoveredBlock84PC := 692.
        ].
        recoveredBlock84Step = 692 ifTrue: [
            (recoveredBlock84Stack3) highlightMode: (recoveredBlock84Stack4).
            recoveredBlock84PC := 694.
        ].
        recoveredBlock84Step = 694 ifTrue: [
            recoveredBlock84Stack3 := startColumn.
            recoveredBlock84PC := 696.
        ].
        recoveredBlock84Step = 696 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) + (1).
            recoveredBlock84PC := 697.
        ].
        recoveredBlock84Step = 697 ifTrue: [
            recoveredBlock84Local9 := recoveredBlock84Stack3.
            recoveredBlock84PC := 700.
        ].
        recoveredBlock84Step = 700 ifTrue: [
            recoveredBlock84Stack3 := recoveredBlock84Local12.
            recoveredBlock84PC := 703.
        ].
        recoveredBlock84Step = 703 ifTrue: [
            recoveredBlock84Stack4 := endRow.
            recoveredBlock84PC := 705.
        ].
        recoveredBlock84Step = 705 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) = (recoveredBlock84Stack4).
            recoveredBlock84PC := 706.
        ].
        recoveredBlock84Step = 706 ifTrue: [
            (recoveredBlock84Stack3) ifTrue: [recoveredBlock84PC := 710] ifFalse: [recoveredBlock84PC := 795].
        ].
        recoveredBlock84Step = 710 ifTrue: [
            recoveredBlock84Stack3 := contents.
            recoveredBlock84PC := 712.
        ].
        recoveredBlock84Step = 712 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Local12.
            recoveredBlock84PC := 715.
        ].
        recoveredBlock84Step = 715 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) at: (recoveredBlock84Stack4).
            recoveredBlock84PC := 717.
        ].
        recoveredBlock84Step = 717 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Local9.
            recoveredBlock84PC := 720.
        ].
        recoveredBlock84Step = 720 ifTrue: [
            recoveredBlock84Stack5 := endColumn.
            recoveredBlock84PC := 722.
        ].
        recoveredBlock84Step = 722 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) copyFrom: (recoveredBlock84Stack4) to: (recoveredBlock84Stack5).
            recoveredBlock84PC := 724.
        ].
        recoveredBlock84Step = 724 ifTrue: [
            recoveredBlock84Local10 := recoveredBlock84Stack3.
            recoveredBlock84PC := 727.
        ].
        recoveredBlock84Step = 727 ifTrue: [
            recoveredBlock84Stack3 := self.
            recoveredBlock84PC := 728.
        ].
        recoveredBlock84Step = 728 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Stack3.
            recoveredBlock84PC := 729.
        ].
        recoveredBlock84Step = 729 ifTrue: [
            recoveredBlock84Stack5 := recoveredBlock84Local10.
            recoveredBlock84PC := 732.
        ].
        recoveredBlock84Step = 732 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Local11.
            recoveredBlock84PC := 735.
        ].
        recoveredBlock84Step = 735 ifTrue: [
            recoveredBlock84Stack7 := recoveredLocal3.
            recoveredBlock84PC := 738.
        ].
        recoveredBlock84Step = 738 ifTrue: [
            recoveredBlock84Stack8 := true.
            recoveredBlock84PC := 739.
        ].
        recoveredBlock84Step = 739 ifTrue: [
            (recoveredBlock84Stack4) drawText: (recoveredBlock84Stack5) x: (recoveredBlock84Stack6) y: (recoveredBlock84Stack7) blanked: (recoveredBlock84Stack8).
            recoveredBlock84PC := 742.
        ].
        recoveredBlock84Step = 742 ifTrue: [
            recoveredBlock84Stack4 := false.
            recoveredBlock84PC := 743.
        ].
        recoveredBlock84Step = 743 ifTrue: [
            recoveredBlock84Stack5 := recoveredBlock84Stack4.
            recoveredBlock84PC := 744.
        ].
        recoveredBlock84Step = 744 ifTrue: [
            highlightMode := recoveredBlock84Stack5.
            recoveredBlock84PC := 746.
        ].
        recoveredBlock84Step = 746 ifTrue: [
            (recoveredBlock84Stack3) highlightMode: (recoveredBlock84Stack4).
            recoveredBlock84PC := 748.
        ].
        recoveredBlock84Step = 748 ifTrue: [
            recoveredBlock84Stack3 := contents.
            recoveredBlock84PC := 750.
        ].
        recoveredBlock84Step = 750 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Local12.
            recoveredBlock84PC := 753.
        ].
        recoveredBlock84Step = 753 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) at: (recoveredBlock84Stack4).
            recoveredBlock84PC := 755.
        ].
        recoveredBlock84Step = 755 ifTrue: [
            recoveredBlock84Local10 := recoveredBlock84Stack3.
            recoveredBlock84PC := 758.
        ].
        recoveredBlock84Step = 758 ifTrue: [
            recoveredBlock84Stack3 := recoveredBlock84Local10.
            recoveredBlock84PC := 761.
        ].
        recoveredBlock84Step = 761 ifTrue: [
            recoveredBlock84Stack4 := 1.
            recoveredBlock84PC := 763.
        ].
        recoveredBlock84Step = 763 ifTrue: [
            recoveredBlock84Stack5 := endColumn.
            recoveredBlock84PC := 765.
        ].
        recoveredBlock84Step = 765 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Local10.
            recoveredBlock84PC := 768.
        ].
        recoveredBlock84Step = 768 ifTrue: [
            recoveredBlock84Stack6 := (recoveredBlock84Stack6) size.
            recoveredBlock84PC := 770.
        ].
        recoveredBlock84Step = 770 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) min: (recoveredBlock84Stack6).
            recoveredBlock84PC := 772.
        ].
        recoveredBlock84Step = 772 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) copyFrom: (recoveredBlock84Stack4) to: (recoveredBlock84Stack5).
            recoveredBlock84PC := 774.
        ].
        recoveredBlock84Step = 774 ifTrue: [
            recoveredBlock84Local10 := recoveredBlock84Stack3.
            recoveredBlock84PC := 777.
        ].
        recoveredBlock84Step = 777 ifTrue: [
            recoveredBlock84Stack3 := insetX.
            recoveredBlock84PC := 779.
        ].
        recoveredBlock84Step = 779 ifTrue: [
            recoveredBlock84Stack4 := self.
            recoveredBlock84PC := 780.
        ].
        recoveredBlock84Step = 780 ifTrue: [
            recoveredBlock84Stack5 := recoveredBlock84Local10.
            recoveredBlock84PC := 783.
        ].
        recoveredBlock84Step = 783 ifTrue: [
            recoveredBlock84Stack4 := (recoveredBlock84Stack4) pixelWidth: (recoveredBlock84Stack5).
            recoveredBlock84PC := 785.
        ].
        recoveredBlock84Step = 785 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) + (recoveredBlock84Stack4).
            recoveredBlock84PC := 786.
        ].
        recoveredBlock84Step = 786 ifTrue: [
            recoveredBlock84Local11 := recoveredBlock84Stack3.
            recoveredBlock84PC := 789.
        ].
        recoveredBlock84Step = 789 ifTrue: [
            recoveredBlock84Stack3 := endColumn.
            recoveredBlock84PC := 791.
        ].
        recoveredBlock84Step = 791 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) + (1).
            recoveredBlock84PC := 792.
        ].
        recoveredBlock84Step = 792 ifTrue: [
            recoveredBlock84Local9 := recoveredBlock84Stack3.
            recoveredBlock84PC := 795.
        ].
        recoveredBlock84Step = 795 ifTrue: [
            recoveredBlock84Stack3 := highlightMode.
            recoveredBlock84PC := 797.
        ].
        recoveredBlock84Step = 797 ifTrue: [
            (recoveredBlock84Stack3) ifTrue: [recoveredBlock84PC := 1232] ifFalse: [recoveredBlock84PC := 800].
        ].
        recoveredBlock84Step = 800 ifTrue: [
            recoveredBlock84Stack3 := recoveredBlock84Local7.
            recoveredBlock84PC := 803.
        ].
        recoveredBlock84Step = 803 ifTrue: [
            (recoveredBlock84Stack3) ifTrue: [recoveredBlock84PC := 806] ifFalse: [recoveredBlock84PC := 1232].
        ].
        recoveredBlock84Step = 806 ifTrue: [
            recoveredBlock84Stack3 := recoveredBlock84Local6.
            recoveredBlock84PC := 809.
        ].
        recoveredBlock84Step = 809 ifTrue: [
            recoveredBlock84Stack4 := [:recoveredBlock84Block809Arg1 | 
    | recoveredBlock84Block809Value0 recoveredBlock84Block809Value1 recoveredBlock84Block809Value2 recoveredBlock84Block809Value3 recoveredBlock84Block809Value4 |
    recoveredBlock84Block809Value0 := recoveredBlock84Block809Arg1.
    recoveredBlock84Block809Value1 := (recoveredBlock84Block809Value0) key.
    recoveredBlock84Block809Value2 := (recoveredBlock84Block809Value1) x.
    recoveredBlock84Block809Value3 := recoveredBlock84Local9.
    recoveredBlock84Block809Value4 := (recoveredBlock84Block809Value2) >= (recoveredBlock84Block809Value3).
    recoveredBlock84Block809Value4
].
            recoveredBlock84PC := 826.
        ].
        recoveredBlock84Step = 826 ifTrue: [
            recoveredBlock84Stack5 := [].
            recoveredBlock84PC := 828.
        ].
        recoveredBlock84Step = 828 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) detect: (recoveredBlock84Stack4) ifNone: (recoveredBlock84Stack5).
            recoveredBlock84PC := 830.
        ].
        recoveredBlock84Step = 830 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Stack3.
            recoveredBlock84PC := 831.
        ].
        recoveredBlock84Step = 831 ifTrue: [
            recoveredBlock84Local4 := recoveredBlock84Stack4.
            recoveredBlock84PC := 834.
        ].
        recoveredBlock84Step = 834 ifTrue: [
            (recoveredBlock84Stack3 == nil) ifTrue: [recoveredBlock84PC := 1232] ifFalse: [recoveredBlock84PC := 838].
        ].
        recoveredBlock84Step = 838 ifTrue: [
            recoveredBlock84Stack3 := contents.
            recoveredBlock84PC := 840.
        ].
        recoveredBlock84Step = 840 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Local12.
            recoveredBlock84PC := 843.
        ].
        recoveredBlock84Step = 843 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) at: (recoveredBlock84Stack4).
            recoveredBlock84PC := 845.
        ].
        recoveredBlock84Step = 845 ifTrue: [
            recoveredBlock84Local10 := recoveredBlock84Stack3.
            recoveredBlock84PC := 848.
        ].
        recoveredBlock84Step = 848 ifTrue: [
            recoveredBlock84Stack3 := recoveredBlock84Local10.
            recoveredBlock84PC := 851.
        ].
        recoveredBlock84Step = 851 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Local9.
            recoveredBlock84PC := 854.
        ].
        recoveredBlock84Step = 854 ifTrue: [
            recoveredBlock84Stack5 := recoveredBlock84Local4.
            recoveredBlock84PC := 857.
        ].
        recoveredBlock84Step = 857 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) key.
            recoveredBlock84PC := 859.
        ].
        recoveredBlock84Step = 859 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) x.
            recoveredBlock84PC := 861.
        ].
        recoveredBlock84Step = 861 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) + (-1).
            recoveredBlock84PC := 862.
        ].
        recoveredBlock84Step = 862 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Local8.
            recoveredBlock84PC := 865.
        ].
        recoveredBlock84Step = 865 ifTrue: [
            recoveredBlock84Stack7 := recoveredBlock84Local10.
            recoveredBlock84PC := 868.
        ].
        recoveredBlock84Step = 868 ifTrue: [
            recoveredBlock84Stack7 := (recoveredBlock84Stack7) size.
            recoveredBlock84PC := 870.
        ].
        recoveredBlock84Step = 870 ifTrue: [
            recoveredBlock84Stack6 := (recoveredBlock84Stack6) min: (recoveredBlock84Stack7).
            recoveredBlock84PC := 872.
        ].
        recoveredBlock84Step = 872 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) min: (recoveredBlock84Stack6).
            recoveredBlock84PC := 874.
        ].
        recoveredBlock84Step = 874 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Stack5.
            recoveredBlock84PC := 875.
        ].
        recoveredBlock84Step = 875 ifTrue: [
            recoveredBlock84Local3 := recoveredBlock84Stack6.
            recoveredBlock84PC := 878.
        ].
        recoveredBlock84Step = 878 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) copyFrom: (recoveredBlock84Stack4) to: (recoveredBlock84Stack5).
            recoveredBlock84PC := 880.
        ].
        recoveredBlock84Step = 880 ifTrue: [
            recoveredBlock84Local10 := recoveredBlock84Stack3.
            recoveredBlock84PC := 883.
        ].
        recoveredBlock84Step = 883 ifTrue: [
            recoveredBlock84Stack3 := self.
            recoveredBlock84PC := 884.
        ].
        recoveredBlock84Step = 884 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Local10.
            recoveredBlock84PC := 887.
        ].
        recoveredBlock84Step = 887 ifTrue: [
            recoveredBlock84Stack5 := recoveredBlock84Local11.
            recoveredBlock84PC := 890.
        ].
        recoveredBlock84Step = 890 ifTrue: [
            recoveredBlock84Stack6 := recoveredLocal3.
            recoveredBlock84PC := 893.
        ].
        recoveredBlock84Step = 893 ifTrue: [
            recoveredBlock84Stack7 := true.
            recoveredBlock84PC := 894.
        ].
        recoveredBlock84Step = 894 ifTrue: [
            (recoveredBlock84Stack3) drawText: (recoveredBlock84Stack4) x: (recoveredBlock84Stack5) y: (recoveredBlock84Stack6) blanked: (recoveredBlock84Stack7).
            recoveredBlock84PC := 897.
        ].
        recoveredBlock84Step = 897 ifTrue: [
            recoveredBlock84Stack3 := contents.
            recoveredBlock84PC := 899.
        ].
        recoveredBlock84Step = 899 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Local12.
            recoveredBlock84PC := 902.
        ].
        recoveredBlock84Step = 902 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) at: (recoveredBlock84Stack4).
            recoveredBlock84PC := 904.
        ].
        recoveredBlock84Step = 904 ifTrue: [
            recoveredBlock84Stack4 := 1.
            recoveredBlock84PC := 906.
        ].
        recoveredBlock84Step = 906 ifTrue: [
            recoveredBlock84Stack5 := recoveredBlock84Local3.
            recoveredBlock84PC := 909.
        ].
        recoveredBlock84Step = 909 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) copyFrom: (recoveredBlock84Stack4) to: (recoveredBlock84Stack5).
            recoveredBlock84PC := 911.
        ].
        recoveredBlock84Step = 911 ifTrue: [
            recoveredBlock84Local10 := recoveredBlock84Stack3.
            recoveredBlock84PC := 914.
        ].
        recoveredBlock84Step = 914 ifTrue: [
            recoveredBlock84Stack3 := insetX.
            recoveredBlock84PC := 916.
        ].
        recoveredBlock84Step = 916 ifTrue: [
            recoveredBlock84Stack4 := self.
            recoveredBlock84PC := 917.
        ].
        recoveredBlock84Step = 917 ifTrue: [
            recoveredBlock84Stack5 := recoveredBlock84Local10.
            recoveredBlock84PC := 920.
        ].
        recoveredBlock84Step = 920 ifTrue: [
            recoveredBlock84Stack4 := (recoveredBlock84Stack4) pixelWidth: (recoveredBlock84Stack5).
            recoveredBlock84PC := 922.
        ].
        recoveredBlock84Step = 922 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) + (recoveredBlock84Stack4).
            recoveredBlock84PC := 923.
        ].
        recoveredBlock84Step = 923 ifTrue: [
            recoveredBlock84Local11 := recoveredBlock84Stack3.
            recoveredBlock84PC := 926.
        ].
        recoveredBlock84Step = 926 ifTrue: [
            recoveredBlock84Stack3 := recoveredBlock84Local6.
            recoveredBlock84PC := 929.
        ].
        recoveredBlock84Step = 929 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) size.
            recoveredBlock84PC := 931.
        ].
        recoveredBlock84Step = 931 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Local6.
            recoveredBlock84PC := 934.
        ].
        recoveredBlock84Step = 934 ifTrue: [
            recoveredBlock84Stack5 := recoveredBlock84Local4.
            recoveredBlock84PC := 937.
        ].
        recoveredBlock84Step = 937 ifTrue: [
            recoveredBlock84Stack4 := (recoveredBlock84Stack4) indexOf: (recoveredBlock84Stack5).
            recoveredBlock84PC := 939.
        ].
        recoveredBlock84Step = 939 ifTrue: [
            recoveredBlock84Stack4 := (recoveredBlock84Stack4) + (-1).
            recoveredBlock84PC := 940.
        ].
        recoveredBlock84Step = 940 ifTrue: [
            recoveredBlock84PC := 1197.
        ].
        recoveredBlock84Step = 944 ifTrue: [
            recoveredBlock84Local2 := recoveredBlock84Stack5.
            recoveredBlock84PC := 947.
        ].
        recoveredBlock84Step = 947 ifTrue: [
            recoveredBlock84Stack5 := recoveredBlock84Local6.
            recoveredBlock84PC := 950.
        ].
        recoveredBlock84Step = 950 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Local2.
            recoveredBlock84PC := 953.
        ].
        recoveredBlock84Step = 953 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) at: (recoveredBlock84Stack6).
            recoveredBlock84PC := 955.
        ].
        recoveredBlock84Step = 955 ifTrue: [
            recoveredBlock84Local1 := recoveredBlock84Stack5.
            recoveredBlock84PC := 958.
        ].
        recoveredBlock84Step = 958 ifTrue: [
            recoveredBlock84Stack5 := self.
            recoveredBlock84PC := 959.
        ].
        recoveredBlock84Step = 959 ifTrue: [
            recoveredBlock84Stack6 := [:recoveredBlock84Block959Arg1 | 
    | recoveredBlock84Block959Value0 recoveredBlock84Block959Value1 recoveredBlock84Block959Value2 recoveredBlock84Block959Value3 |
    recoveredBlock84Block959Value0 := recoveredBlock84Block959Arg1.
    recoveredBlock84Block959Value1 := recoveredBlock84Local1.
    recoveredBlock84Block959Value2 := (recoveredBlock84Block959Value1) value.
    recoveredBlock84Block959Value3 := (recoveredBlock84Block959Value0) setTextColor: (recoveredBlock84Block959Value2).
    recoveredBlock84Block959Value3
].
            recoveredBlock84PC := 975.
        ].
        recoveredBlock84Step = 975 ifTrue: [
            (recoveredBlock84Stack5) dcDo: (recoveredBlock84Stack6).
            recoveredBlock84PC := 977.
        ].
        recoveredBlock84Step = 977 ifTrue: [
            recoveredBlock84Stack5 := contents.
            recoveredBlock84PC := 979.
        ].
        recoveredBlock84Step = 979 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Local12.
            recoveredBlock84PC := 982.
        ].
        recoveredBlock84Step = 982 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) at: (recoveredBlock84Stack6).
            recoveredBlock84PC := 984.
        ].
        recoveredBlock84Step = 984 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Local1.
            recoveredBlock84PC := 987.
        ].
        recoveredBlock84Step = 987 ifTrue: [
            recoveredBlock84Stack6 := (recoveredBlock84Stack6) key.
            recoveredBlock84PC := 989.
        ].
        recoveredBlock84Step = 989 ifTrue: [
            recoveredBlock84Stack6 := (recoveredBlock84Stack6) x.
            recoveredBlock84PC := 991.
        ].
        recoveredBlock84Step = 991 ifTrue: [
            recoveredBlock84Stack7 := 1.
            recoveredBlock84PC := 993.
        ].
        recoveredBlock84Step = 993 ifTrue: [
            recoveredBlock84Stack6 := (recoveredBlock84Stack6) max: (recoveredBlock84Stack7).
            recoveredBlock84PC := 995.
        ].
        recoveredBlock84Step = 995 ifTrue: [
            recoveredBlock84Stack7 := recoveredBlock84Local1.
            recoveredBlock84PC := 998.
        ].
        recoveredBlock84Step = 998 ifTrue: [
            recoveredBlock84Stack7 := (recoveredBlock84Stack7) key.
            recoveredBlock84PC := 1000.
        ].
        recoveredBlock84Step = 1000 ifTrue: [
            recoveredBlock84Stack7 := (recoveredBlock84Stack7) y.
            recoveredBlock84PC := 1002.
        ].
        recoveredBlock84Step = 1002 ifTrue: [
            recoveredBlock84Stack8 := recoveredBlock84Local8.
            recoveredBlock84PC := 1005.
        ].
        recoveredBlock84Step = 1005 ifTrue: [
            recoveredBlock84Stack7 := (recoveredBlock84Stack7) min: (recoveredBlock84Stack8).
            recoveredBlock84PC := 1007.
        ].
        recoveredBlock84Step = 1007 ifTrue: [
            recoveredBlock84Stack8 := recoveredBlock84Stack7.
            recoveredBlock84PC := 1008.
        ].
        recoveredBlock84Step = 1008 ifTrue: [
            recoveredBlock84Local3 := recoveredBlock84Stack8.
            recoveredBlock84PC := 1011.
        ].
        recoveredBlock84Step = 1011 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) copyFrom: (recoveredBlock84Stack6) to: (recoveredBlock84Stack7).
            recoveredBlock84PC := 1013.
        ].
        recoveredBlock84Step = 1013 ifTrue: [
            recoveredBlock84Local10 := recoveredBlock84Stack5.
            recoveredBlock84PC := 1016.
        ].
        recoveredBlock84Step = 1016 ifTrue: [
            recoveredBlock84Stack5 := self.
            recoveredBlock84PC := 1017.
        ].
        recoveredBlock84Step = 1017 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Local10.
            recoveredBlock84PC := 1020.
        ].
        recoveredBlock84Step = 1020 ifTrue: [
            recoveredBlock84Stack7 := recoveredBlock84Local11.
            recoveredBlock84PC := 1023.
        ].
        recoveredBlock84Step = 1023 ifTrue: [
            recoveredBlock84Stack8 := recoveredLocal3.
            recoveredBlock84PC := 1026.
        ].
        recoveredBlock84Step = 1026 ifTrue: [
            recoveredBlock84Stack9 := true.
            recoveredBlock84PC := 1027.
        ].
        recoveredBlock84Step = 1027 ifTrue: [
            (recoveredBlock84Stack5) drawText: (recoveredBlock84Stack6) x: (recoveredBlock84Stack7) y: (recoveredBlock84Stack8) blanked: (recoveredBlock84Stack9).
            recoveredBlock84PC := 1030.
        ].
        recoveredBlock84Step = 1030 ifTrue: [
            recoveredBlock84Stack5 := contents.
            recoveredBlock84PC := 1032.
        ].
        recoveredBlock84Step = 1032 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Local12.
            recoveredBlock84PC := 1035.
        ].
        recoveredBlock84Step = 1035 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) at: (recoveredBlock84Stack6).
            recoveredBlock84PC := 1037.
        ].
        recoveredBlock84Step = 1037 ifTrue: [
            recoveredBlock84Stack6 := 1.
            recoveredBlock84PC := 1039.
        ].
        recoveredBlock84Step = 1039 ifTrue: [
            recoveredBlock84Stack7 := recoveredBlock84Local3.
            recoveredBlock84PC := 1042.
        ].
        recoveredBlock84Step = 1042 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) copyFrom: (recoveredBlock84Stack6) to: (recoveredBlock84Stack7).
            recoveredBlock84PC := 1044.
        ].
        recoveredBlock84Step = 1044 ifTrue: [
            recoveredBlock84Local10 := recoveredBlock84Stack5.
            recoveredBlock84PC := 1047.
        ].
        recoveredBlock84Step = 1047 ifTrue: [
            recoveredBlock84Stack5 := insetX.
            recoveredBlock84PC := 1049.
        ].
        recoveredBlock84Step = 1049 ifTrue: [
            recoveredBlock84Stack6 := self.
            recoveredBlock84PC := 1050.
        ].
        recoveredBlock84Step = 1050 ifTrue: [
            recoveredBlock84Stack7 := recoveredBlock84Local10.
            recoveredBlock84PC := 1053.
        ].
        recoveredBlock84Step = 1053 ifTrue: [
            recoveredBlock84Stack6 := (recoveredBlock84Stack6) pixelWidth: (recoveredBlock84Stack7).
            recoveredBlock84PC := 1055.
        ].
        recoveredBlock84Step = 1055 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) + (recoveredBlock84Stack6).
            recoveredBlock84PC := 1056.
        ].
        recoveredBlock84Step = 1056 ifTrue: [
            recoveredBlock84Local11 := recoveredBlock84Stack5.
            recoveredBlock84PC := 1059.
        ].
        recoveredBlock84Step = 1059 ifTrue: [
            recoveredBlock84Stack5 := self.
            recoveredBlock84PC := 1060.
        ].
        recoveredBlock84Step = 1060 ifTrue: [
            recoveredBlock84Stack6 := [:recoveredBlock84Block1060Arg1 | 
    | recoveredBlock84Block1060Value0 recoveredBlock84Block1060Value1 recoveredBlock84Block1060Value2 |
    recoveredBlock84Block1060Value0 := recoveredBlock84Block1060Arg1.
    recoveredBlock84Block1060Value1 := (self) foreground.
    recoveredBlock84Block1060Value2 := (recoveredBlock84Block1060Value0) setTextColor: (recoveredBlock84Block1060Value1).
    recoveredBlock84Block1060Value2
].
            recoveredBlock84PC := 1073.
        ].
        recoveredBlock84Step = 1073 ifTrue: [
            (recoveredBlock84Stack5) dcDo: (recoveredBlock84Stack6).
            recoveredBlock84PC := 1075.
        ].
        recoveredBlock84Step = 1075 ifTrue: [
            recoveredBlock84Stack5 := recoveredBlock84Local1.
            recoveredBlock84PC := 1078.
        ].
        recoveredBlock84Step = 1078 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) key.
            recoveredBlock84PC := 1080.
        ].
        recoveredBlock84Step = 1080 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) y.
            recoveredBlock84PC := 1082.
        ].
        recoveredBlock84Step = 1082 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Local8.
            recoveredBlock84PC := 1085.
        ].
        recoveredBlock84Step = 1085 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) < (recoveredBlock84Stack6).
            recoveredBlock84PC := 1086.
        ].
        recoveredBlock84Step = 1086 ifTrue: [
            (recoveredBlock84Stack5) ifTrue: [recoveredBlock84PC := 1090] ifFalse: [recoveredBlock84PC := 1193].
        ].
        recoveredBlock84Step = 1090 ifTrue: [
            recoveredBlock84Stack5 := contents.
            recoveredBlock84PC := 1092.
        ].
        recoveredBlock84Step = 1092 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Local12.
            recoveredBlock84PC := 1095.
        ].
        recoveredBlock84Step = 1095 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) at: (recoveredBlock84Stack6).
            recoveredBlock84PC := 1097.
        ].
        recoveredBlock84Step = 1097 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Local1.
            recoveredBlock84PC := 1100.
        ].
        recoveredBlock84Step = 1100 ifTrue: [
            recoveredBlock84Stack6 := (recoveredBlock84Stack6) key.
            recoveredBlock84PC := 1102.
        ].
        recoveredBlock84Step = 1102 ifTrue: [
            recoveredBlock84Stack6 := (recoveredBlock84Stack6) y.
            recoveredBlock84PC := 1104.
        ].
        recoveredBlock84Step = 1104 ifTrue: [
            recoveredBlock84Stack6 := (recoveredBlock84Stack6) + (1).
            recoveredBlock84PC := 1105.
        ].
        recoveredBlock84Step = 1105 ifTrue: [
            recoveredBlock84Stack7 := recoveredBlock84Local2.
            recoveredBlock84PC := 1108.
        ].
        recoveredBlock84Step = 1108 ifTrue: [
            recoveredBlock84Stack8 := recoveredBlock84Local6.
            recoveredBlock84PC := 1111.
        ].
        recoveredBlock84Step = 1111 ifTrue: [
            recoveredBlock84Stack8 := (recoveredBlock84Stack8) size.
            recoveredBlock84PC := 1113.
        ].
        recoveredBlock84Step = 1113 ifTrue: [
            (recoveredBlock84Stack7 ~~ recoveredBlock84Stack8) ifTrue: [recoveredBlock84PC := 1122] ifFalse: [recoveredBlock84PC := 1116].
        ].
        recoveredBlock84Step = 1116 ifTrue: [
            recoveredBlock84Stack7 := recoveredBlock84Local8.
            recoveredBlock84PC := 1119.
        ].
        recoveredBlock84Step = 1119 ifTrue: [
            recoveredBlock84PC := 1141.
        ].
        recoveredBlock84Step = 1122 ifTrue: [
            recoveredBlock84Stack7 := recoveredBlock84Local6.
            recoveredBlock84PC := 1125.
        ].
        recoveredBlock84Step = 1125 ifTrue: [
            recoveredBlock84Stack8 := recoveredBlock84Local2.
            recoveredBlock84PC := 1128.
        ].
        recoveredBlock84Step = 1128 ifTrue: [
            recoveredBlock84Stack8 := (recoveredBlock84Stack8) + (1).
            recoveredBlock84PC := 1129.
        ].
        recoveredBlock84Step = 1129 ifTrue: [
            recoveredBlock84Stack7 := (recoveredBlock84Stack7) at: (recoveredBlock84Stack8).
            recoveredBlock84PC := 1131.
        ].
        recoveredBlock84Step = 1131 ifTrue: [
            recoveredBlock84Stack7 := (recoveredBlock84Stack7) key.
            recoveredBlock84PC := 1133.
        ].
        recoveredBlock84Step = 1133 ifTrue: [
            recoveredBlock84Stack7 := (recoveredBlock84Stack7) x.
            recoveredBlock84PC := 1135.
        ].
        recoveredBlock84Step = 1135 ifTrue: [
            recoveredBlock84Stack7 := (recoveredBlock84Stack7) + (-1).
            recoveredBlock84PC := 1136.
        ].
        recoveredBlock84Step = 1136 ifTrue: [
            recoveredBlock84Stack8 := recoveredBlock84Local8.
            recoveredBlock84PC := 1139.
        ].
        recoveredBlock84Step = 1139 ifTrue: [
            recoveredBlock84Stack7 := (recoveredBlock84Stack7) min: (recoveredBlock84Stack8).
            recoveredBlock84PC := 1141.
        ].
        recoveredBlock84Step = 1141 ifTrue: [
            recoveredBlock84Stack8 := recoveredBlock84Stack7.
            recoveredBlock84PC := 1142.
        ].
        recoveredBlock84Step = 1142 ifTrue: [
            recoveredBlock84Local3 := recoveredBlock84Stack8.
            recoveredBlock84PC := 1145.
        ].
        recoveredBlock84Step = 1145 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) copyFrom: (recoveredBlock84Stack6) to: (recoveredBlock84Stack7).
            recoveredBlock84PC := 1147.
        ].
        recoveredBlock84Step = 1147 ifTrue: [
            recoveredBlock84Local10 := recoveredBlock84Stack5.
            recoveredBlock84PC := 1150.
        ].
        recoveredBlock84Step = 1150 ifTrue: [
            recoveredBlock84Stack5 := self.
            recoveredBlock84PC := 1151.
        ].
        recoveredBlock84Step = 1151 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Local10.
            recoveredBlock84PC := 1154.
        ].
        recoveredBlock84Step = 1154 ifTrue: [
            recoveredBlock84Stack7 := recoveredBlock84Local11.
            recoveredBlock84PC := 1157.
        ].
        recoveredBlock84Step = 1157 ifTrue: [
            recoveredBlock84Stack8 := recoveredLocal3.
            recoveredBlock84PC := 1160.
        ].
        recoveredBlock84Step = 1160 ifTrue: [
            recoveredBlock84Stack9 := true.
            recoveredBlock84PC := 1161.
        ].
        recoveredBlock84Step = 1161 ifTrue: [
            (recoveredBlock84Stack5) drawText: (recoveredBlock84Stack6) x: (recoveredBlock84Stack7) y: (recoveredBlock84Stack8) blanked: (recoveredBlock84Stack9).
            recoveredBlock84PC := 1164.
        ].
        recoveredBlock84Step = 1164 ifTrue: [
            recoveredBlock84Stack5 := contents.
            recoveredBlock84PC := 1166.
        ].
        recoveredBlock84Step = 1166 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Local12.
            recoveredBlock84PC := 1169.
        ].
        recoveredBlock84Step = 1169 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) at: (recoveredBlock84Stack6).
            recoveredBlock84PC := 1171.
        ].
        recoveredBlock84Step = 1171 ifTrue: [
            recoveredBlock84Stack6 := 1.
            recoveredBlock84PC := 1173.
        ].
        recoveredBlock84Step = 1173 ifTrue: [
            recoveredBlock84Stack7 := recoveredBlock84Local3.
            recoveredBlock84PC := 1176.
        ].
        recoveredBlock84Step = 1176 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) copyFrom: (recoveredBlock84Stack6) to: (recoveredBlock84Stack7).
            recoveredBlock84PC := 1178.
        ].
        recoveredBlock84Step = 1178 ifTrue: [
            recoveredBlock84Local10 := recoveredBlock84Stack5.
            recoveredBlock84PC := 1181.
        ].
        recoveredBlock84Step = 1181 ifTrue: [
            recoveredBlock84Stack5 := insetX.
            recoveredBlock84PC := 1183.
        ].
        recoveredBlock84Step = 1183 ifTrue: [
            recoveredBlock84Stack6 := self.
            recoveredBlock84PC := 1184.
        ].
        recoveredBlock84Step = 1184 ifTrue: [
            recoveredBlock84Stack7 := recoveredBlock84Local10.
            recoveredBlock84PC := 1187.
        ].
        recoveredBlock84Step = 1187 ifTrue: [
            recoveredBlock84Stack6 := (recoveredBlock84Stack6) pixelWidth: (recoveredBlock84Stack7).
            recoveredBlock84PC := 1189.
        ].
        recoveredBlock84Step = 1189 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) + (recoveredBlock84Stack6).
            recoveredBlock84PC := 1190.
        ].
        recoveredBlock84Step = 1190 ifTrue: [
            recoveredBlock84Local11 := recoveredBlock84Stack5.
            recoveredBlock84PC := 1193.
        ].
        recoveredBlock84Step = 1193 ifTrue: [
            recoveredBlock84Stack5 := nil.
            recoveredBlock84PC := 1194.
        ].
        recoveredBlock84Step = 1194 ifTrue: [
            recoveredBlock84Local1 := recoveredBlock84Stack5.
            recoveredBlock84PC := 1197.
        ].
        recoveredBlock84Step = 1197 ifTrue: [
            (recoveredBlock84Stack3 isInteger and: [recoveredBlock84Stack4 isInteger]) ifTrue: [(recoveredBlock84Stack4 + 1 <= recoveredBlock84Stack3) ifTrue: [recoveredBlock84Stack4 := recoveredBlock84Stack4 + 1. recoveredBlock84Stack5 := recoveredBlock84Stack4. recoveredBlock84PC := 944] ifFalse: [recoveredBlock84PC := 1228]] ifFalse: [recoveredBlock84PC := 1201].
        ].
        recoveredBlock84Step = 1201 ifTrue: [
            recoveredBlock84Local2 := recoveredBlock84Stack4.
            recoveredBlock84PC := 1204.
        ].
        recoveredBlock84Step = 1204 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Stack3.
            recoveredBlock84PC := 1205.
        ].
        recoveredBlock84Step = 1205 ifTrue: [
            recoveredBlock84Stack5 := recoveredBlock84Local2.
            recoveredBlock84PC := 1208.
        ].
        recoveredBlock84Step = 1208 ifTrue: [
            recoveredBlock84Stack5 := (recoveredBlock84Stack5) + (1).
            recoveredBlock84PC := 1209.
        ].
        recoveredBlock84Step = 1209 ifTrue: [
            recoveredBlock84Stack6 := recoveredBlock84Stack5.
            recoveredBlock84PC := 1210.
        ].
        recoveredBlock84Step = 1210 ifTrue: [
            recoveredBlock84Local2 := recoveredBlock84Stack6.
            recoveredBlock84PC := 1213.
        ].
        recoveredBlock84Step = 1213 ifTrue: [
            recoveredBlock84Stack4 := (recoveredBlock84Stack4) < (recoveredBlock84Stack5).
            recoveredBlock84PC := 1214.
        ].
        recoveredBlock84Step = 1214 ifTrue: [
            (recoveredBlock84Stack4) ifTrue: [recoveredBlock84PC := 1224] ifFalse: [recoveredBlock84PC := 1218].
        ].
        recoveredBlock84Step = 1218 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Local2.
            recoveredBlock84PC := 1221.
        ].
        recoveredBlock84Step = 1221 ifTrue: [
            recoveredBlock84PC := 947.
        ].
        recoveredBlock84Step = 1224 ifTrue: [
            recoveredBlock84Stack4 := nil.
            recoveredBlock84PC := 1225.
        ].
        recoveredBlock84Step = 1225 ifTrue: [
            recoveredBlock84Local2 := recoveredBlock84Stack4.
            recoveredBlock84PC := 1228.
        ].
        recoveredBlock84Step = 1228 ifTrue: [
            recoveredBlock84PC := 1229.
        ].
        recoveredBlock84Step = 1229 ifTrue: [
            recoveredBlock84PC := 1278.
        ].
        recoveredBlock84Step = 1232 ifTrue: [
            recoveredBlock84Stack3 := recoveredBlock84Local10.
            recoveredBlock84PC := 1235.
        ].
        recoveredBlock84Step = 1235 ifTrue: [
            recoveredBlock84Stack4 := contents.
            recoveredBlock84PC := 1237.
        ].
        recoveredBlock84Step = 1237 ifTrue: [
            recoveredBlock84Stack5 := recoveredBlock84Local12.
            recoveredBlock84PC := 1240.
        ].
        recoveredBlock84Step = 1240 ifTrue: [
            recoveredBlock84Stack4 := (recoveredBlock84Stack4) at: (recoveredBlock84Stack5).
            recoveredBlock84PC := 1242.
        ].
        recoveredBlock84Step = 1242 ifTrue: [
            (recoveredBlock84Stack3 == recoveredBlock84Stack4) ifTrue: [recoveredBlock84PC := 1264] ifFalse: [recoveredBlock84PC := 1246].
        ].
        recoveredBlock84Step = 1246 ifTrue: [
            recoveredBlock84Stack3 := contents.
            recoveredBlock84PC := 1248.
        ].
        recoveredBlock84Step = 1248 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Local12.
            recoveredBlock84PC := 1251.
        ].
        recoveredBlock84Step = 1251 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) at: (recoveredBlock84Stack4).
            recoveredBlock84PC := 1253.
        ].
        recoveredBlock84Step = 1253 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Local9.
            recoveredBlock84PC := 1256.
        ].
        recoveredBlock84Step = 1256 ifTrue: [
            recoveredBlock84Stack5 := recoveredBlock84Local8.
            recoveredBlock84PC := 1259.
        ].
        recoveredBlock84Step = 1259 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) copyFrom: (recoveredBlock84Stack4) to: (recoveredBlock84Stack5).
            recoveredBlock84PC := 1261.
        ].
        recoveredBlock84Step = 1261 ifTrue: [
            recoveredBlock84Local10 := recoveredBlock84Stack3.
            recoveredBlock84PC := 1264.
        ].
        recoveredBlock84Step = 1264 ifTrue: [
            recoveredBlock84Stack3 := self.
            recoveredBlock84PC := 1265.
        ].
        recoveredBlock84Step = 1265 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Local10.
            recoveredBlock84PC := 1268.
        ].
        recoveredBlock84Step = 1268 ifTrue: [
            recoveredBlock84Stack5 := recoveredBlock84Local11.
            recoveredBlock84PC := 1271.
        ].
        recoveredBlock84Step = 1271 ifTrue: [
            recoveredBlock84Stack6 := recoveredLocal3.
            recoveredBlock84PC := 1274.
        ].
        recoveredBlock84Step = 1274 ifTrue: [
            recoveredBlock84Stack7 := true.
            recoveredBlock84PC := 1275.
        ].
        recoveredBlock84Step = 1275 ifTrue: [
            (recoveredBlock84Stack3) drawText: (recoveredBlock84Stack4) x: (recoveredBlock84Stack5) y: (recoveredBlock84Stack6) blanked: (recoveredBlock84Stack7).
            recoveredBlock84PC := 1278.
        ].
        recoveredBlock84Step = 1278 ifTrue: [
            recoveredBlock84Stack3 := recoveredLocal3.
            recoveredBlock84PC := 1281.
        ].
        recoveredBlock84Step = 1281 ifTrue: [
            recoveredBlock84Stack4 := fontHeight.
            recoveredBlock84PC := 1283.
        ].
        recoveredBlock84Step = 1283 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) + (recoveredBlock84Stack4).
            recoveredBlock84PC := 1284.
        ].
        recoveredBlock84Step = 1284 ifTrue: [
            recoveredLocal3 := recoveredBlock84Stack3.
            recoveredBlock84PC := 1287.
        ].
        recoveredBlock84Step = 1287 ifTrue: [
            recoveredBlock84Stack3 := nil.
            recoveredBlock84PC := 1288.
        ].
        recoveredBlock84Step = 1288 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Stack3.
            recoveredBlock84PC := 1289.
        ].
        recoveredBlock84Step = 1289 ifTrue: [
            recoveredBlock84Local11 := recoveredBlock84Stack4.
            recoveredBlock84PC := 1292.
        ].
        recoveredBlock84Step = 1292 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Stack3.
            recoveredBlock84PC := 1293.
        ].
        recoveredBlock84Step = 1293 ifTrue: [
            recoveredBlock84Local10 := recoveredBlock84Stack4.
            recoveredBlock84PC := 1296.
        ].
        recoveredBlock84Step = 1296 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Stack3.
            recoveredBlock84PC := 1297.
        ].
        recoveredBlock84Step = 1297 ifTrue: [
            recoveredBlock84Local9 := recoveredBlock84Stack4.
            recoveredBlock84PC := 1300.
        ].
        recoveredBlock84Step = 1300 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Stack3.
            recoveredBlock84PC := 1301.
        ].
        recoveredBlock84Step = 1301 ifTrue: [
            recoveredBlock84Local8 := recoveredBlock84Stack4.
            recoveredBlock84PC := 1304.
        ].
        recoveredBlock84Step = 1304 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Stack3.
            recoveredBlock84PC := 1305.
        ].
        recoveredBlock84Step = 1305 ifTrue: [
            recoveredBlock84Local7 := recoveredBlock84Stack4.
            recoveredBlock84PC := 1308.
        ].
        recoveredBlock84Step = 1308 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Stack3.
            recoveredBlock84PC := 1309.
        ].
        recoveredBlock84Step = 1309 ifTrue: [
            recoveredBlock84Local6 := recoveredBlock84Stack4.
            recoveredBlock84PC := 1312.
        ].
        recoveredBlock84Step = 1312 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Stack3.
            recoveredBlock84PC := 1313.
        ].
        recoveredBlock84Step = 1313 ifTrue: [
            recoveredBlock84Local5 := recoveredBlock84Stack4.
            recoveredBlock84PC := 1316.
        ].
        recoveredBlock84Step = 1316 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Stack3.
            recoveredBlock84PC := 1317.
        ].
        recoveredBlock84Step = 1317 ifTrue: [
            recoveredBlock84Local4 := recoveredBlock84Stack4.
            recoveredBlock84PC := 1320.
        ].
        recoveredBlock84Step = 1320 ifTrue: [
            recoveredBlock84Local3 := recoveredBlock84Stack3.
            recoveredBlock84PC := 1323.
        ].
        recoveredBlock84Step = 1323 ifTrue: [
            (recoveredBlock84Stack1 isInteger and: [recoveredBlock84Stack2 isInteger]) ifTrue: [(recoveredBlock84Stack2 + 1 <= recoveredBlock84Stack1) ifTrue: [recoveredBlock84Stack2 := recoveredBlock84Stack2 + 1. recoveredBlock84Stack3 := recoveredBlock84Stack2. recoveredBlock84PC := 128] ifFalse: [recoveredBlock84PC := 1354]] ifFalse: [recoveredBlock84PC := 1327].
        ].
        recoveredBlock84Step = 1327 ifTrue: [
            recoveredBlock84Local12 := recoveredBlock84Stack2.
            recoveredBlock84PC := 1330.
        ].
        recoveredBlock84Step = 1330 ifTrue: [
            recoveredBlock84Stack2 := recoveredBlock84Stack1.
            recoveredBlock84PC := 1331.
        ].
        recoveredBlock84Step = 1331 ifTrue: [
            recoveredBlock84Stack3 := recoveredBlock84Local12.
            recoveredBlock84PC := 1334.
        ].
        recoveredBlock84Step = 1334 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) + (1).
            recoveredBlock84PC := 1335.
        ].
        recoveredBlock84Step = 1335 ifTrue: [
            recoveredBlock84Stack4 := recoveredBlock84Stack3.
            recoveredBlock84PC := 1336.
        ].
        recoveredBlock84Step = 1336 ifTrue: [
            recoveredBlock84Local12 := recoveredBlock84Stack4.
            recoveredBlock84PC := 1339.
        ].
        recoveredBlock84Step = 1339 ifTrue: [
            recoveredBlock84Stack2 := (recoveredBlock84Stack2) < (recoveredBlock84Stack3).
            recoveredBlock84PC := 1340.
        ].
        recoveredBlock84Step = 1340 ifTrue: [
            (recoveredBlock84Stack2) ifTrue: [recoveredBlock84PC := 1350] ifFalse: [recoveredBlock84PC := 1344].
        ].
        recoveredBlock84Step = 1344 ifTrue: [
            recoveredBlock84Stack2 := recoveredBlock84Local12.
            recoveredBlock84PC := 1347.
        ].
        recoveredBlock84Step = 1347 ifTrue: [
            recoveredBlock84PC := 131.
        ].
        recoveredBlock84Step = 1350 ifTrue: [
            recoveredBlock84Stack2 := nil.
            recoveredBlock84PC := 1351.
        ].
        recoveredBlock84Step = 1351 ifTrue: [
            recoveredBlock84Local12 := recoveredBlock84Stack2.
            recoveredBlock84PC := 1354.
        ].
        recoveredBlock84Step = 1354 ifTrue: [
            recoveredBlock84Result := recoveredBlock84Stack1.
            recoveredBlock84Done := true.
        ].
    ].
    recoveredBlock84Result
].
            recoveredPC := 1355.
        ].
        recoveredStep = 1355 ifTrue: [
            (recoveredStack0) graphicsDo: (recoveredStack1).
            recoveredPC := 1357.
        ].
        recoveredStep = 1357 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1358.
        ].
        recoveredStep = 1358 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2069f930; bytecode file offset 0xf9c260"
!SGOSColorText methodsFor: 'recovered'!
drawTextRow1: recoveredArg1 column1: recoveredArg2 row2: recoveredArg3 column2: recoveredArg4 blanked: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := highlightMode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) useColorSyntax.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack6 := recoveredArg5.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := super drawTextRow1: (recoveredStack2) column1: (recoveredStack3) row2: (recoveredStack4) column2: (recoveredStack5) blanked: (recoveredStack6).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := nodeColors.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) calculateNodeColors.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) topIndex.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal6 := recoveredStack3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) bottomIndex.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal5 := recoveredStack3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 119].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := contents.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock148Local1 recoveredBlock148Local2 recoveredBlock148Local3 recoveredBlock148Local4 recoveredBlock148Local5 recoveredBlock148Local6 recoveredBlock148Local7 recoveredBlock148Local8 recoveredBlock148Local9 recoveredBlock148Local10 recoveredBlock148Stack0 recoveredBlock148Stack1 recoveredBlock148Stack2 recoveredBlock148Stack3 recoveredBlock148Stack4 recoveredBlock148Stack5 recoveredBlock148Stack6 recoveredBlock148Stack7 recoveredBlock148Stack8 recoveredBlock148Stack9 recoveredBlock148Stack10 recoveredBlock148PC recoveredBlock148Step recoveredBlock148Done recoveredBlock148Result |
    recoveredBlock148Stack0 := self.
    recoveredBlock148PC := 154.
    recoveredBlock148Done := false.
    [recoveredBlock148Done not] whileTrue: [
        recoveredBlock148Step := recoveredBlock148PC.
        recoveredBlock148Step = 154 ifTrue: [
            recoveredBlock148Stack1 := contents.
            recoveredBlock148PC := 156.
        ].
        recoveredBlock148Step = 156 ifTrue: [
            recoveredBlock148Stack2 := recoveredLocal4.
            recoveredBlock148PC := 159.
        ].
        recoveredBlock148Step = 159 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) at: (recoveredBlock148Stack2).
            recoveredBlock148PC := 161.
        ].
        recoveredBlock148Step = 161 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Stack1.
            recoveredBlock148PC := 162.
        ].
        recoveredBlock148Step = 162 ifTrue: [
            recoveredLocal11 := recoveredBlock148Stack2.
            recoveredBlock148PC := 165.
        ].
        recoveredBlock148Step = 165 ifTrue: [
            recoveredLocal9 := recoveredBlock148Stack1.
            recoveredBlock148PC := 168.
        ].
        recoveredBlock148Step = 168 ifTrue: [
            recoveredBlock148Stack1 := false.
            recoveredBlock148PC := 169.
        ].
        recoveredBlock148Step = 169 ifTrue: [
            recoveredBlock148Stack2 := nodeColors.
            recoveredBlock148PC := 171.
        ].
        recoveredBlock148Step = 171 ifTrue: [
            (recoveredBlock148Stack2 == nil) ifTrue: [recoveredBlock148PC := 189] ifFalse: [recoveredBlock148PC := 174].
        ].
        recoveredBlock148Step = 174 ifTrue: [
            recoveredBlock148PC := 175.
        ].
        recoveredBlock148Step = 175 ifTrue: [
            recoveredBlock148Stack1 := nodeColors.
            recoveredBlock148PC := 177.
        ].
        recoveredBlock148Step = 177 ifTrue: [
            recoveredBlock148Stack2 := recoveredLocal11.
            recoveredBlock148PC := 180.
        ].
        recoveredBlock148Step = 180 ifTrue: [
            recoveredBlock148Stack3 := [].
            recoveredBlock148PC := 182.
        ].
        recoveredBlock148Step = 182 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) at: (recoveredBlock148Stack2) ifAbsent: (recoveredBlock148Stack3).
            recoveredBlock148PC := 184.
        ].
        recoveredBlock148Step = 184 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Stack1.
            recoveredBlock148PC := 185.
        ].
        recoveredBlock148Step = 185 ifTrue: [
            recoveredBlock148Local9 := recoveredBlock148Stack2.
            recoveredBlock148PC := 188.
        ].
        recoveredBlock148Step = 188 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) notNil.
            recoveredBlock148PC := 189.
        ].
        recoveredBlock148Step = 189 ifTrue: [
            recoveredBlock148Local10 := recoveredBlock148Stack1.
            recoveredBlock148PC := 192.
        ].
        recoveredBlock148Step = 192 ifTrue: [
            recoveredBlock148Stack1 := insetX.
            recoveredBlock148PC := 194.
        ].
        recoveredBlock148Step = 194 ifTrue: [
            recoveredBlock148Stack2 := self.
            recoveredBlock148PC := 195.
        ].
        recoveredBlock148Step = 195 ifTrue: [
            recoveredBlock148Stack3 := recoveredLocal11.
            recoveredBlock148PC := 198.
        ].
        recoveredBlock148Step = 198 ifTrue: [
            recoveredBlock148Stack4 := recoveredLocal3.
            recoveredBlock148PC := 201.
        ].
        recoveredBlock148Step = 201 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) pixelWidth: (recoveredBlock148Stack3) count: (recoveredBlock148Stack4).
            recoveredBlock148PC := 203.
        ].
        recoveredBlock148Step = 203 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) + (recoveredBlock148Stack2).
            recoveredBlock148PC := 204.
        ].
        recoveredBlock148Step = 204 ifTrue: [
            recoveredLocal8 := recoveredBlock148Stack1.
            recoveredBlock148PC := 207.
        ].
        recoveredBlock148Step = 207 ifTrue: [
            recoveredBlock148Stack1 := insetY.
            recoveredBlock148PC := 209.
        ].
        recoveredBlock148Step = 209 ifTrue: [
            recoveredBlock148Stack2 := recoveredLocal4.
            recoveredBlock148PC := 212.
        ].
        recoveredBlock148Step = 212 ifTrue: [
            recoveredBlock148Stack3 := topIndex.
            recoveredBlock148PC := 214.
        ].
        recoveredBlock148Step = 214 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) - (recoveredBlock148Stack3).
            recoveredBlock148PC := 215.
        ].
        recoveredBlock148Step = 215 ifTrue: [
            recoveredBlock148Stack3 := fontHeight.
            recoveredBlock148PC := 217.
        ].
        recoveredBlock148Step = 217 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) * (recoveredBlock148Stack3).
            recoveredBlock148PC := 218.
        ].
        recoveredBlock148Step = 218 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) + (recoveredBlock148Stack2).
            recoveredBlock148PC := 219.
        ].
        recoveredBlock148Step = 219 ifTrue: [
            recoveredLocal7 := recoveredBlock148Stack1.
            recoveredBlock148PC := 222.
        ].
        recoveredBlock148Step = 222 ifTrue: [
            recoveredBlock148Stack1 := recoveredLocal4.
            recoveredBlock148PC := 225.
        ].
        recoveredBlock148Step = 225 ifTrue: [
            recoveredBlock148Stack2 := recoveredLocal2.
            recoveredBlock148PC := 228.
        ].
        recoveredBlock148Step = 228 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) = (recoveredBlock148Stack2).
            recoveredBlock148PC := 229.
        ].
        recoveredBlock148Step = 229 ifTrue: [
            (recoveredBlock148Stack1) ifTrue: [recoveredBlock148PC := 232] ifFalse: [recoveredBlock148PC := 376].
        ].
        recoveredBlock148Step = 232 ifTrue: [
            recoveredBlock148Stack1 := recoveredLocal1.
            recoveredBlock148PC := 235.
        ].
        recoveredBlock148Step = 235 ifTrue: [
            recoveredBlock148Stack2 := recoveredLocal11.
            recoveredBlock148PC := 238.
        ].
        recoveredBlock148Step = 238 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) size.
            recoveredBlock148PC := 240.
        ].
        recoveredBlock148Step = 240 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) min: (recoveredBlock148Stack2).
            recoveredBlock148PC := 242.
        ].
        recoveredBlock148Step = 242 ifTrue: [
            recoveredBlock148Local6 := recoveredBlock148Stack1.
            recoveredBlock148PC := 245.
        ].
        recoveredBlock148Step = 245 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Local10.
            recoveredBlock148PC := 248.
        ].
        recoveredBlock148Step = 248 ifTrue: [
            (recoveredBlock148Stack1) ifTrue: [recoveredBlock148PC := 252] ifFalse: [recoveredBlock148PC := 338].
        ].
        recoveredBlock148Step = 252 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Local9.
            recoveredBlock148PC := 255.
        ].
        recoveredBlock148Step = 255 ifTrue: [
            recoveredBlock148Stack2 := [:recoveredBlock148Block255Arg1 | 
    | recoveredBlock148Block255Stack0 recoveredBlock148Block255Stack1 recoveredBlock148Block255Stack2 recoveredBlock148Block255Stack3 recoveredBlock148Block255Stack4 recoveredBlock148Block255PC recoveredBlock148Block255Step recoveredBlock148Block255Done recoveredBlock148Block255Result |
    recoveredBlock148Block255Stack0 := nil.
    recoveredBlock148Block255PC := 262.
    recoveredBlock148Block255Done := false.
    [recoveredBlock148Block255Done not] whileTrue: [
        recoveredBlock148Block255Step := recoveredBlock148Block255PC.
        recoveredBlock148Block255Step = 262 ifTrue: [
            recoveredBlock148Block255Stack1 := false.
            recoveredBlock148Block255PC := 263.
        ].
        recoveredBlock148Block255Step = 263 ifTrue: [
            recoveredBlock148Block255Stack2 := recoveredBlock148Block255Arg1.
            recoveredBlock148Block255PC := 264.
        ].
        recoveredBlock148Block255Step = 264 ifTrue: [
            recoveredBlock148Block255Stack2 := (recoveredBlock148Block255Stack2) key.
            recoveredBlock148Block255PC := 266.
        ].
        recoveredBlock148Block255Step = 266 ifTrue: [
            recoveredBlock148Block255Stack2 := (recoveredBlock148Block255Stack2) y.
            recoveredBlock148Block255PC := 268.
        ].
        recoveredBlock148Block255Step = 268 ifTrue: [
            recoveredBlock148Block255Stack3 := recoveredLocal3.
            recoveredBlock148Block255PC := 271.
        ].
        recoveredBlock148Block255Step = 271 ifTrue: [
            recoveredBlock148Block255Stack2 := (recoveredBlock148Block255Stack2) >= (recoveredBlock148Block255Stack3).
            recoveredBlock148Block255PC := 272.
        ].
        recoveredBlock148Block255Step = 272 ifTrue: [
            (recoveredBlock148Block255Stack2) ifTrue: [recoveredBlock148Block255PC := 276] ifFalse: [recoveredBlock148Block255PC := 286].
        ].
        recoveredBlock148Block255Step = 276 ifTrue: [
            recoveredBlock148Block255PC := 277.
        ].
        recoveredBlock148Block255Step = 277 ifTrue: [
            recoveredBlock148Block255Stack1 := recoveredBlock148Block255Arg1.
            recoveredBlock148Block255PC := 278.
        ].
        recoveredBlock148Block255Step = 278 ifTrue: [
            recoveredBlock148Block255Stack1 := (recoveredBlock148Block255Stack1) key.
            recoveredBlock148Block255PC := 280.
        ].
        recoveredBlock148Block255Step = 280 ifTrue: [
            recoveredBlock148Block255Stack1 := (recoveredBlock148Block255Stack1) x.
            recoveredBlock148Block255PC := 282.
        ].
        recoveredBlock148Block255Step = 282 ifTrue: [
            recoveredBlock148Block255Stack2 := recoveredBlock148Local6.
            recoveredBlock148Block255PC := 285.
        ].
        recoveredBlock148Block255Step = 285 ifTrue: [
            recoveredBlock148Block255Stack1 := (recoveredBlock148Block255Stack1) <= (recoveredBlock148Block255Stack2).
            recoveredBlock148Block255PC := 286.
        ].
        recoveredBlock148Block255Step = 286 ifTrue: [
            recoveredBlock148Block255Result := recoveredBlock148Block255Stack1.
            recoveredBlock148Block255Done := true.
        ].
    ].
    recoveredBlock148Block255Result
].
            recoveredBlock148PC := 287.
        ].
        recoveredBlock148Step = 287 ifTrue: [
            recoveredBlock148Stack3 := [].
            recoveredBlock148PC := 289.
        ].
        recoveredBlock148Step = 289 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) detect: (recoveredBlock148Stack2) ifNone: (recoveredBlock148Stack3).
            recoveredBlock148PC := 291.
        ].
        recoveredBlock148Step = 291 ifTrue: [
            recoveredBlock148Local8 := recoveredBlock148Stack1.
            recoveredBlock148PC := 294.
        ].
        recoveredBlock148Step = 294 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Local9.
            recoveredBlock148PC := 297.
        ].
        recoveredBlock148Step = 297 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) reverse.
            recoveredBlock148PC := 299.
        ].
        recoveredBlock148Step = 299 ifTrue: [
            recoveredBlock148Stack2 := [:recoveredBlock148Block299Arg1 | 
    | recoveredBlock148Block299Stack0 recoveredBlock148Block299Stack1 recoveredBlock148Block299Stack2 recoveredBlock148Block299Stack3 recoveredBlock148Block299Stack4 recoveredBlock148Block299PC recoveredBlock148Block299Step recoveredBlock148Block299Done recoveredBlock148Block299Result |
    recoveredBlock148Block299Stack0 := nil.
    recoveredBlock148Block299PC := 306.
    recoveredBlock148Block299Done := false.
    [recoveredBlock148Block299Done not] whileTrue: [
        recoveredBlock148Block299Step := recoveredBlock148Block299PC.
        recoveredBlock148Block299Step = 306 ifTrue: [
            recoveredBlock148Block299Stack1 := false.
            recoveredBlock148Block299PC := 307.
        ].
        recoveredBlock148Block299Step = 307 ifTrue: [
            recoveredBlock148Block299Stack2 := recoveredBlock148Block299Arg1.
            recoveredBlock148Block299PC := 308.
        ].
        recoveredBlock148Block299Step = 308 ifTrue: [
            recoveredBlock148Block299Stack2 := (recoveredBlock148Block299Stack2) key.
            recoveredBlock148Block299PC := 310.
        ].
        recoveredBlock148Block299Step = 310 ifTrue: [
            recoveredBlock148Block299Stack2 := (recoveredBlock148Block299Stack2) y.
            recoveredBlock148Block299PC := 312.
        ].
        recoveredBlock148Block299Step = 312 ifTrue: [
            recoveredBlock148Block299Stack3 := recoveredLocal3.
            recoveredBlock148Block299PC := 315.
        ].
        recoveredBlock148Block299Step = 315 ifTrue: [
            recoveredBlock148Block299Stack2 := (recoveredBlock148Block299Stack2) >= (recoveredBlock148Block299Stack3).
            recoveredBlock148Block299PC := 316.
        ].
        recoveredBlock148Block299Step = 316 ifTrue: [
            (recoveredBlock148Block299Stack2) ifTrue: [recoveredBlock148Block299PC := 320] ifFalse: [recoveredBlock148Block299PC := 330].
        ].
        recoveredBlock148Block299Step = 320 ifTrue: [
            recoveredBlock148Block299PC := 321.
        ].
        recoveredBlock148Block299Step = 321 ifTrue: [
            recoveredBlock148Block299Stack1 := recoveredBlock148Block299Arg1.
            recoveredBlock148Block299PC := 322.
        ].
        recoveredBlock148Block299Step = 322 ifTrue: [
            recoveredBlock148Block299Stack1 := (recoveredBlock148Block299Stack1) key.
            recoveredBlock148Block299PC := 324.
        ].
        recoveredBlock148Block299Step = 324 ifTrue: [
            recoveredBlock148Block299Stack1 := (recoveredBlock148Block299Stack1) x.
            recoveredBlock148Block299PC := 326.
        ].
        recoveredBlock148Block299Step = 326 ifTrue: [
            recoveredBlock148Block299Stack2 := recoveredBlock148Local6.
            recoveredBlock148Block299PC := 329.
        ].
        recoveredBlock148Block299Step = 329 ifTrue: [
            recoveredBlock148Block299Stack1 := (recoveredBlock148Block299Stack1) <= (recoveredBlock148Block299Stack2).
            recoveredBlock148Block299PC := 330.
        ].
        recoveredBlock148Block299Step = 330 ifTrue: [
            recoveredBlock148Block299Result := recoveredBlock148Block299Stack1.
            recoveredBlock148Block299Done := true.
        ].
    ].
    recoveredBlock148Block299Result
].
            recoveredBlock148PC := 331.
        ].
        recoveredBlock148Step = 331 ifTrue: [
            recoveredBlock148Stack3 := [].
            recoveredBlock148PC := 333.
        ].
        recoveredBlock148Step = 333 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) detect: (recoveredBlock148Stack2) ifNone: (recoveredBlock148Stack3).
            recoveredBlock148PC := 335.
        ].
        recoveredBlock148Step = 335 ifTrue: [
            recoveredBlock148Local7 := recoveredBlock148Stack1.
            recoveredBlock148PC := 338.
        ].
        recoveredBlock148Step = 338 ifTrue: [
            recoveredBlock148Stack1 := recoveredLocal3.
            recoveredBlock148PC := 341.
        ].
        recoveredBlock148Step = 341 ifTrue: [
            recoveredBlock148Stack2 := 0.
            recoveredBlock148PC := 343.
        ].
        recoveredBlock148Step = 343 ifTrue: [
            (recoveredBlock148Stack1 ~~ recoveredBlock148Stack2) ifTrue: [recoveredBlock148PC := 358] ifFalse: [recoveredBlock148PC := 346].
        ].
        recoveredBlock148Step = 346 ifTrue: [
            recoveredBlock148Stack1 := recoveredLocal1.
            recoveredBlock148PC := 349.
        ].
        recoveredBlock148Step = 349 ifTrue: [
            recoveredBlock148Stack2 := recoveredLocal11.
            recoveredBlock148PC := 352.
        ].
        recoveredBlock148Step = 352 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) size.
            recoveredBlock148PC := 354.
        ].
        recoveredBlock148Step = 354 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) = (recoveredBlock148Stack2).
            recoveredBlock148PC := 355.
        ].
        recoveredBlock148Step = 355 ifTrue: [
            (recoveredBlock148Stack1) ifTrue: [recoveredBlock148PC := 373] ifFalse: [recoveredBlock148PC := 358].
        ].
        recoveredBlock148Step = 358 ifTrue: [
            recoveredBlock148Stack1 := recoveredLocal11.
            recoveredBlock148PC := 361.
        ].
        recoveredBlock148Step = 361 ifTrue: [
            recoveredBlock148Stack2 := recoveredLocal3.
            recoveredBlock148PC := 364.
        ].
        recoveredBlock148Step = 364 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) + (1).
            recoveredBlock148PC := 365.
        ].
        recoveredBlock148Step = 365 ifTrue: [
            recoveredBlock148Stack3 := recoveredBlock148Local6.
            recoveredBlock148PC := 368.
        ].
        recoveredBlock148Step = 368 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) copyFrom: (recoveredBlock148Stack2) to: (recoveredBlock148Stack3).
            recoveredBlock148PC := 370.
        ].
        recoveredBlock148Step = 370 ifTrue: [
            recoveredLocal9 := recoveredBlock148Stack1.
            recoveredBlock148PC := 373.
        ].
        recoveredBlock148Step = 373 ifTrue: [
            recoveredBlock148PC := 467.
        ].
        recoveredBlock148Step = 376 ifTrue: [
            recoveredBlock148Stack1 := recoveredLocal11.
            recoveredBlock148PC := 379.
        ].
        recoveredBlock148Step = 379 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) size.
            recoveredBlock148PC := 381.
        ].
        recoveredBlock148Step = 381 ifTrue: [
            recoveredBlock148Local6 := recoveredBlock148Stack1.
            recoveredBlock148PC := 384.
        ].
        recoveredBlock148Step = 384 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Local10.
            recoveredBlock148PC := 387.
        ].
        recoveredBlock148Step = 387 ifTrue: [
            (recoveredBlock148Stack1) ifTrue: [recoveredBlock148PC := 390] ifFalse: [recoveredBlock148PC := 452].
        ].
        recoveredBlock148Step = 390 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Local9.
            recoveredBlock148PC := 393.
        ].
        recoveredBlock148Step = 393 ifTrue: [
            recoveredBlock148Stack2 := [:recoveredBlock148Block393Arg1 | 
    | recoveredBlock148Block393Stack0 recoveredBlock148Block393Stack1 recoveredBlock148Block393Stack2 recoveredBlock148Block393Stack3 recoveredBlock148Block393Stack4 recoveredBlock148Block393PC recoveredBlock148Block393Step recoveredBlock148Block393Done recoveredBlock148Block393Result |
    recoveredBlock148Block393Stack0 := nil.
    recoveredBlock148Block393PC := 400.
    recoveredBlock148Block393Done := false.
    [recoveredBlock148Block393Done not] whileTrue: [
        recoveredBlock148Block393Step := recoveredBlock148Block393PC.
        recoveredBlock148Block393Step = 400 ifTrue: [
            recoveredBlock148Block393Stack1 := false.
            recoveredBlock148Block393PC := 401.
        ].
        recoveredBlock148Block393Step = 401 ifTrue: [
            recoveredBlock148Block393Stack2 := recoveredBlock148Block393Arg1.
            recoveredBlock148Block393PC := 402.
        ].
        recoveredBlock148Block393Step = 402 ifTrue: [
            recoveredBlock148Block393Stack2 := (recoveredBlock148Block393Stack2) key.
            recoveredBlock148Block393PC := 404.
        ].
        recoveredBlock148Block393Step = 404 ifTrue: [
            recoveredBlock148Block393Stack2 := (recoveredBlock148Block393Stack2) y.
            recoveredBlock148Block393PC := 406.
        ].
        recoveredBlock148Block393Step = 406 ifTrue: [
            recoveredBlock148Block393Stack3 := recoveredLocal3.
            recoveredBlock148Block393PC := 409.
        ].
        recoveredBlock148Block393Step = 409 ifTrue: [
            recoveredBlock148Block393Stack2 := (recoveredBlock148Block393Stack2) >= (recoveredBlock148Block393Stack3).
            recoveredBlock148Block393PC := 410.
        ].
        recoveredBlock148Block393Step = 410 ifTrue: [
            (recoveredBlock148Block393Stack2) ifTrue: [recoveredBlock148Block393PC := 414] ifFalse: [recoveredBlock148Block393PC := 424].
        ].
        recoveredBlock148Block393Step = 414 ifTrue: [
            recoveredBlock148Block393PC := 415.
        ].
        recoveredBlock148Block393Step = 415 ifTrue: [
            recoveredBlock148Block393Stack1 := recoveredBlock148Block393Arg1.
            recoveredBlock148Block393PC := 416.
        ].
        recoveredBlock148Block393Step = 416 ifTrue: [
            recoveredBlock148Block393Stack1 := (recoveredBlock148Block393Stack1) key.
            recoveredBlock148Block393PC := 418.
        ].
        recoveredBlock148Block393Step = 418 ifTrue: [
            recoveredBlock148Block393Stack1 := (recoveredBlock148Block393Stack1) x.
            recoveredBlock148Block393PC := 420.
        ].
        recoveredBlock148Block393Step = 420 ifTrue: [
            recoveredBlock148Block393Stack2 := recoveredBlock148Local6.
            recoveredBlock148Block393PC := 423.
        ].
        recoveredBlock148Block393Step = 423 ifTrue: [
            recoveredBlock148Block393Stack1 := (recoveredBlock148Block393Stack1) <= (recoveredBlock148Block393Stack2).
            recoveredBlock148Block393PC := 424.
        ].
        recoveredBlock148Block393Step = 424 ifTrue: [
            recoveredBlock148Block393Result := recoveredBlock148Block393Stack1.
            recoveredBlock148Block393Done := true.
        ].
    ].
    recoveredBlock148Block393Result
].
            recoveredBlock148PC := 425.
        ].
        recoveredBlock148Step = 425 ifTrue: [
            recoveredBlock148Stack3 := [].
            recoveredBlock148PC := 427.
        ].
        recoveredBlock148Step = 427 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) detect: (recoveredBlock148Stack2) ifNone: (recoveredBlock148Stack3).
            recoveredBlock148PC := 429.
        ].
        recoveredBlock148Step = 429 ifTrue: [
            recoveredBlock148Local8 := recoveredBlock148Stack1.
            recoveredBlock148PC := 432.
        ].
        recoveredBlock148Step = 432 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Local9.
            recoveredBlock148PC := 435.
        ].
        recoveredBlock148Step = 435 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) isEmpty.
            recoveredBlock148PC := 437.
        ].
        recoveredBlock148Step = 437 ifTrue: [
            (recoveredBlock148Stack1) ifTrue: [recoveredBlock148PC := 440] ifFalse: [recoveredBlock148PC := 444].
        ].
        recoveredBlock148Step = 440 ifTrue: [
            recoveredBlock148Stack1 := nil.
            recoveredBlock148PC := 441.
        ].
        recoveredBlock148Step = 441 ifTrue: [
            recoveredBlock148PC := 449.
        ].
        recoveredBlock148Step = 444 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Local9.
            recoveredBlock148PC := 447.
        ].
        recoveredBlock148Step = 447 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) last.
            recoveredBlock148PC := 449.
        ].
        recoveredBlock148Step = 449 ifTrue: [
            recoveredBlock148Local7 := recoveredBlock148Stack1.
            recoveredBlock148PC := 452.
        ].
        recoveredBlock148Step = 452 ifTrue: [
            recoveredBlock148Stack1 := recoveredLocal11.
            recoveredBlock148PC := 455.
        ].
        recoveredBlock148Step = 455 ifTrue: [
            recoveredBlock148Stack2 := recoveredLocal3.
            recoveredBlock148PC := 458.
        ].
        recoveredBlock148Step = 458 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) + (1).
            recoveredBlock148PC := 459.
        ].
        recoveredBlock148Step = 459 ifTrue: [
            recoveredBlock148Stack3 := recoveredBlock148Local6.
            recoveredBlock148PC := 462.
        ].
        recoveredBlock148Step = 462 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) copyFrom: (recoveredBlock148Stack2) to: (recoveredBlock148Stack3).
            recoveredBlock148PC := 464.
        ].
        recoveredBlock148Step = 464 ifTrue: [
            recoveredLocal9 := recoveredBlock148Stack1.
            recoveredBlock148PC := 467.
        ].
        recoveredBlock148Step = 467 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Local10.
            recoveredBlock148PC := 470.
        ].
        recoveredBlock148Step = 470 ifTrue: [
            (recoveredBlock148Stack1) ifTrue: [recoveredBlock148PC := 474] ifFalse: [recoveredBlock148PC := 854].
        ].
        recoveredBlock148Step = 474 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Local8.
            recoveredBlock148PC := 477.
        ].
        recoveredBlock148Step = 477 ifTrue: [
            (recoveredBlock148Stack1 == nil) ifTrue: [recoveredBlock148PC := 854] ifFalse: [recoveredBlock148PC := 480].
        ].
        recoveredBlock148Step = 480 ifTrue: [
            recoveredBlock148Stack1 := recoveredLocal11.
            recoveredBlock148PC := 483.
        ].
        recoveredBlock148Step = 483 ifTrue: [
            recoveredBlock148Stack2 := recoveredLocal3.
            recoveredBlock148PC := 486.
        ].
        recoveredBlock148Step = 486 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) + (1).
            recoveredBlock148PC := 487.
        ].
        recoveredBlock148Step = 487 ifTrue: [
            recoveredBlock148Stack3 := recoveredBlock148Local8.
            recoveredBlock148PC := 490.
        ].
        recoveredBlock148Step = 490 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) key.
            recoveredBlock148PC := 492.
        ].
        recoveredBlock148Step = 492 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) x.
            recoveredBlock148PC := 494.
        ].
        recoveredBlock148Step = 494 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) + (-1).
            recoveredBlock148PC := 495.
        ].
        recoveredBlock148Step = 495 ifTrue: [
            recoveredBlock148Stack4 := recoveredBlock148Local6.
            recoveredBlock148PC := 498.
        ].
        recoveredBlock148Step = 498 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) min: (recoveredBlock148Stack4).
            recoveredBlock148PC := 500.
        ].
        recoveredBlock148Step = 500 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) copyFrom: (recoveredBlock148Stack2) to: (recoveredBlock148Stack3).
            recoveredBlock148PC := 502.
        ].
        recoveredBlock148Step = 502 ifTrue: [
            recoveredLocal9 := recoveredBlock148Stack1.
            recoveredBlock148PC := 505.
        ].
        recoveredBlock148Step = 505 ifTrue: [
            recoveredBlock148Stack1 := self.
            recoveredBlock148PC := 506.
        ].
        recoveredBlock148Step = 506 ifTrue: [
            recoveredBlock148Stack2 := recoveredLocal9.
            recoveredBlock148PC := 509.
        ].
        recoveredBlock148Step = 509 ifTrue: [
            recoveredBlock148Stack3 := recoveredLocal8.
            recoveredBlock148PC := 512.
        ].
        recoveredBlock148Step = 512 ifTrue: [
            recoveredBlock148Stack4 := recoveredLocal7.
            recoveredBlock148PC := 515.
        ].
        recoveredBlock148Step = 515 ifTrue: [
            recoveredBlock148Stack5 := recoveredArg5.
            recoveredBlock148PC := 518.
        ].
        recoveredBlock148Step = 518 ifTrue: [
            (recoveredBlock148Stack1) drawText: (recoveredBlock148Stack2) x: (recoveredBlock148Stack3) y: (recoveredBlock148Stack4) blanked: (recoveredBlock148Stack5).
            recoveredBlock148PC := 521.
        ].
        recoveredBlock148Step = 521 ifTrue: [
            recoveredBlock148Stack1 := recoveredLocal8.
            recoveredBlock148PC := 524.
        ].
        recoveredBlock148Step = 524 ifTrue: [
            recoveredBlock148Stack2 := self.
            recoveredBlock148PC := 525.
        ].
        recoveredBlock148Step = 525 ifTrue: [
            recoveredBlock148Stack3 := recoveredLocal9.
            recoveredBlock148PC := 528.
        ].
        recoveredBlock148Step = 528 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) pixelWidth: (recoveredBlock148Stack3).
            recoveredBlock148PC := 530.
        ].
        recoveredBlock148Step = 530 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) + (recoveredBlock148Stack2).
            recoveredBlock148PC := 531.
        ].
        recoveredBlock148Step = 531 ifTrue: [
            recoveredLocal8 := recoveredBlock148Stack1.
            recoveredBlock148PC := 534.
        ].
        recoveredBlock148Step = 534 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Local7.
            recoveredBlock148PC := 537.
        ].
        recoveredBlock148Step = 537 ifTrue: [
            (recoveredBlock148Stack1 ~~ nil) ifTrue: [recoveredBlock148PC := 548] ifFalse: [recoveredBlock148PC := 540].
        ].
        recoveredBlock148Step = 540 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Local9.
            recoveredBlock148PC := 543.
        ].
        recoveredBlock148Step = 543 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) size.
            recoveredBlock148PC := 545.
        ].
        recoveredBlock148Step = 545 ifTrue: [
            recoveredBlock148PC := 556.
        ].
        recoveredBlock148Step = 548 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Local9.
            recoveredBlock148PC := 551.
        ].
        recoveredBlock148Step = 551 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Local7.
            recoveredBlock148PC := 554.
        ].
        recoveredBlock148Step = 554 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) indexOf: (recoveredBlock148Stack2).
            recoveredBlock148PC := 556.
        ].
        recoveredBlock148Step = 556 ifTrue: [
            recoveredBlock148Local4 := recoveredBlock148Stack1.
            recoveredBlock148PC := 559.
        ].
        recoveredBlock148Step = 559 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Local4.
            recoveredBlock148PC := 562.
        ].
        recoveredBlock148Step = 562 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Local9.
            recoveredBlock148PC := 565.
        ].
        recoveredBlock148Step = 565 ifTrue: [
            recoveredBlock148Stack3 := recoveredBlock148Local8.
            recoveredBlock148PC := 568.
        ].
        recoveredBlock148Step = 568 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) indexOf: (recoveredBlock148Stack3).
            recoveredBlock148PC := 570.
        ].
        recoveredBlock148Step = 570 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) + (-1).
            recoveredBlock148PC := 571.
        ].
        recoveredBlock148Step = 571 ifTrue: [
            recoveredBlock148PC := 815.
        ].
        recoveredBlock148Step = 574 ifTrue: [
            recoveredBlock148Local3 := recoveredBlock148Stack3.
            recoveredBlock148PC := 577.
        ].
        recoveredBlock148Step = 577 ifTrue: [
            recoveredBlock148Stack3 := recoveredBlock148Local9.
            recoveredBlock148PC := 580.
        ].
        recoveredBlock148Step = 580 ifTrue: [
            recoveredBlock148Stack4 := recoveredBlock148Local3.
            recoveredBlock148PC := 583.
        ].
        recoveredBlock148Step = 583 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) at: (recoveredBlock148Stack4).
            recoveredBlock148PC := 585.
        ].
        recoveredBlock148Step = 585 ifTrue: [
            recoveredBlock148Local2 := recoveredBlock148Stack3.
            recoveredBlock148PC := 588.
        ].
        recoveredBlock148Step = 588 ifTrue: [
            recoveredBlock148Stack3 := self.
            recoveredBlock148PC := 589.
        ].
        recoveredBlock148Step = 589 ifTrue: [
            recoveredBlock148Stack4 := [:recoveredBlock148Block589Arg1 | 
    | recoveredBlock148Block589Value0 recoveredBlock148Block589Value1 recoveredBlock148Block589Value2 recoveredBlock148Block589Value3 |
    recoveredBlock148Block589Value0 := recoveredBlock148Block589Arg1.
    recoveredBlock148Block589Value1 := recoveredBlock148Local2.
    recoveredBlock148Block589Value2 := (recoveredBlock148Block589Value1) value.
    recoveredBlock148Block589Value3 := (recoveredBlock148Block589Value0) setTextColor: (recoveredBlock148Block589Value2).
    recoveredBlock148Block589Value3
].
            recoveredBlock148PC := 605.
        ].
        recoveredBlock148Step = 605 ifTrue: [
            (recoveredBlock148Stack3) dcDo: (recoveredBlock148Stack4).
            recoveredBlock148PC := 607.
        ].
        recoveredBlock148Step = 607 ifTrue: [
            recoveredBlock148Stack3 := recoveredLocal11.
            recoveredBlock148PC := 610.
        ].
        recoveredBlock148Step = 610 ifTrue: [
            recoveredBlock148Stack4 := recoveredBlock148Local2.
            recoveredBlock148PC := 613.
        ].
        recoveredBlock148Step = 613 ifTrue: [
            recoveredBlock148Stack4 := (recoveredBlock148Stack4) key.
            recoveredBlock148PC := 615.
        ].
        recoveredBlock148Step = 615 ifTrue: [
            recoveredBlock148Stack4 := (recoveredBlock148Stack4) x.
            recoveredBlock148PC := 617.
        ].
        recoveredBlock148Step = 617 ifTrue: [
            recoveredBlock148Stack5 := recoveredLocal3.
            recoveredBlock148PC := 620.
        ].
        recoveredBlock148Step = 620 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) + (1).
            recoveredBlock148PC := 621.
        ].
        recoveredBlock148Step = 621 ifTrue: [
            recoveredBlock148Stack4 := (recoveredBlock148Stack4) max: (recoveredBlock148Stack5).
            recoveredBlock148PC := 623.
        ].
        recoveredBlock148Step = 623 ifTrue: [
            recoveredBlock148Stack5 := recoveredBlock148Local2.
            recoveredBlock148PC := 626.
        ].
        recoveredBlock148Step = 626 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) key.
            recoveredBlock148PC := 628.
        ].
        recoveredBlock148Step = 628 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) y.
            recoveredBlock148PC := 630.
        ].
        recoveredBlock148Step = 630 ifTrue: [
            recoveredBlock148Stack6 := recoveredBlock148Local6.
            recoveredBlock148PC := 633.
        ].
        recoveredBlock148Step = 633 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) min: (recoveredBlock148Stack6).
            recoveredBlock148PC := 635.
        ].
        recoveredBlock148Step = 635 ifTrue: [
            recoveredBlock148Stack6 := recoveredBlock148Stack5.
            recoveredBlock148PC := 636.
        ].
        recoveredBlock148Step = 636 ifTrue: [
            recoveredBlock148Local5 := recoveredBlock148Stack6.
            recoveredBlock148PC := 639.
        ].
        recoveredBlock148Step = 639 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) copyFrom: (recoveredBlock148Stack4) to: (recoveredBlock148Stack5).
            recoveredBlock148PC := 641.
        ].
        recoveredBlock148Step = 641 ifTrue: [
            recoveredLocal9 := recoveredBlock148Stack3.
            recoveredBlock148PC := 644.
        ].
        recoveredBlock148Step = 644 ifTrue: [
            recoveredBlock148Stack3 := self.
            recoveredBlock148PC := 645.
        ].
        recoveredBlock148Step = 645 ifTrue: [
            recoveredBlock148Stack4 := recoveredLocal9.
            recoveredBlock148PC := 648.
        ].
        recoveredBlock148Step = 648 ifTrue: [
            recoveredBlock148Stack5 := recoveredLocal8.
            recoveredBlock148PC := 651.
        ].
        recoveredBlock148Step = 651 ifTrue: [
            recoveredBlock148Stack6 := recoveredLocal7.
            recoveredBlock148PC := 654.
        ].
        recoveredBlock148Step = 654 ifTrue: [
            recoveredBlock148Stack7 := recoveredArg5.
            recoveredBlock148PC := 657.
        ].
        recoveredBlock148Step = 657 ifTrue: [
            (recoveredBlock148Stack3) drawText: (recoveredBlock148Stack4) x: (recoveredBlock148Stack5) y: (recoveredBlock148Stack6) blanked: (recoveredBlock148Stack7).
            recoveredBlock148PC := 660.
        ].
        recoveredBlock148Step = 660 ifTrue: [
            recoveredBlock148Stack3 := recoveredLocal11.
            recoveredBlock148PC := 663.
        ].
        recoveredBlock148Step = 663 ifTrue: [
            recoveredBlock148Stack4 := 1.
            recoveredBlock148PC := 665.
        ].
        recoveredBlock148Step = 665 ifTrue: [
            recoveredBlock148Stack5 := recoveredBlock148Local5.
            recoveredBlock148PC := 668.
        ].
        recoveredBlock148Step = 668 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) copyFrom: (recoveredBlock148Stack4) to: (recoveredBlock148Stack5).
            recoveredBlock148PC := 670.
        ].
        recoveredBlock148Step = 670 ifTrue: [
            recoveredLocal9 := recoveredBlock148Stack3.
            recoveredBlock148PC := 673.
        ].
        recoveredBlock148Step = 673 ifTrue: [
            recoveredBlock148Stack3 := insetX.
            recoveredBlock148PC := 675.
        ].
        recoveredBlock148Step = 675 ifTrue: [
            recoveredBlock148Stack4 := self.
            recoveredBlock148PC := 676.
        ].
        recoveredBlock148Step = 676 ifTrue: [
            recoveredBlock148Stack5 := recoveredLocal9.
            recoveredBlock148PC := 679.
        ].
        recoveredBlock148Step = 679 ifTrue: [
            recoveredBlock148Stack4 := (recoveredBlock148Stack4) pixelWidth: (recoveredBlock148Stack5).
            recoveredBlock148PC := 681.
        ].
        recoveredBlock148Step = 681 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) + (recoveredBlock148Stack4).
            recoveredBlock148PC := 682.
        ].
        recoveredBlock148Step = 682 ifTrue: [
            recoveredLocal8 := recoveredBlock148Stack3.
            recoveredBlock148PC := 685.
        ].
        recoveredBlock148Step = 685 ifTrue: [
            recoveredBlock148Stack3 := self.
            recoveredBlock148PC := 686.
        ].
        recoveredBlock148Step = 686 ifTrue: [
            recoveredBlock148Stack4 := [:recoveredBlock148Block686Arg1 | 
    | recoveredBlock148Block686Value0 recoveredBlock148Block686Value1 recoveredBlock148Block686Value2 |
    recoveredBlock148Block686Value0 := recoveredBlock148Block686Arg1.
    recoveredBlock148Block686Value1 := (self) foreground.
    recoveredBlock148Block686Value2 := (recoveredBlock148Block686Value0) setTextColor: (recoveredBlock148Block686Value1).
    recoveredBlock148Block686Value2
].
            recoveredBlock148PC := 699.
        ].
        recoveredBlock148Step = 699 ifTrue: [
            (recoveredBlock148Stack3) dcDo: (recoveredBlock148Stack4).
            recoveredBlock148PC := 701.
        ].
        recoveredBlock148Step = 701 ifTrue: [
            recoveredBlock148Stack3 := recoveredBlock148Local2.
            recoveredBlock148PC := 704.
        ].
        recoveredBlock148Step = 704 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) key.
            recoveredBlock148PC := 706.
        ].
        recoveredBlock148Step = 706 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) y.
            recoveredBlock148PC := 708.
        ].
        recoveredBlock148Step = 708 ifTrue: [
            recoveredBlock148Stack4 := recoveredBlock148Local6.
            recoveredBlock148PC := 711.
        ].
        recoveredBlock148Step = 711 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) < (recoveredBlock148Stack4).
            recoveredBlock148PC := 712.
        ].
        recoveredBlock148Step = 712 ifTrue: [
            (recoveredBlock148Stack3) ifTrue: [recoveredBlock148PC := 716] ifFalse: [recoveredBlock148PC := 811].
        ].
        recoveredBlock148Step = 716 ifTrue: [
            recoveredBlock148Stack3 := recoveredLocal11.
            recoveredBlock148PC := 719.
        ].
        recoveredBlock148Step = 719 ifTrue: [
            recoveredBlock148Stack4 := recoveredBlock148Local2.
            recoveredBlock148PC := 722.
        ].
        recoveredBlock148Step = 722 ifTrue: [
            recoveredBlock148Stack4 := (recoveredBlock148Stack4) key.
            recoveredBlock148PC := 724.
        ].
        recoveredBlock148Step = 724 ifTrue: [
            recoveredBlock148Stack4 := (recoveredBlock148Stack4) y.
            recoveredBlock148PC := 726.
        ].
        recoveredBlock148Step = 726 ifTrue: [
            recoveredBlock148Stack4 := (recoveredBlock148Stack4) + (1).
            recoveredBlock148PC := 727.
        ].
        recoveredBlock148Step = 727 ifTrue: [
            recoveredBlock148Stack5 := recoveredBlock148Local3.
            recoveredBlock148PC := 730.
        ].
        recoveredBlock148Step = 730 ifTrue: [
            recoveredBlock148Stack6 := recoveredBlock148Local4.
            recoveredBlock148PC := 733.
        ].
        recoveredBlock148Step = 733 ifTrue: [
            (recoveredBlock148Stack5 ~~ recoveredBlock148Stack6) ifTrue: [recoveredBlock148PC := 742] ifFalse: [recoveredBlock148PC := 736].
        ].
        recoveredBlock148Step = 736 ifTrue: [
            recoveredBlock148Stack5 := recoveredBlock148Local6.
            recoveredBlock148PC := 739.
        ].
        recoveredBlock148Step = 739 ifTrue: [
            recoveredBlock148PC := 761.
        ].
        recoveredBlock148Step = 742 ifTrue: [
            recoveredBlock148Stack5 := recoveredBlock148Local9.
            recoveredBlock148PC := 745.
        ].
        recoveredBlock148Step = 745 ifTrue: [
            recoveredBlock148Stack6 := recoveredBlock148Local3.
            recoveredBlock148PC := 748.
        ].
        recoveredBlock148Step = 748 ifTrue: [
            recoveredBlock148Stack6 := (recoveredBlock148Stack6) + (1).
            recoveredBlock148PC := 749.
        ].
        recoveredBlock148Step = 749 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) at: (recoveredBlock148Stack6).
            recoveredBlock148PC := 751.
        ].
        recoveredBlock148Step = 751 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) key.
            recoveredBlock148PC := 753.
        ].
        recoveredBlock148Step = 753 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) x.
            recoveredBlock148PC := 755.
        ].
        recoveredBlock148Step = 755 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) + (-1).
            recoveredBlock148PC := 756.
        ].
        recoveredBlock148Step = 756 ifTrue: [
            recoveredBlock148Stack6 := recoveredBlock148Local6.
            recoveredBlock148PC := 759.
        ].
        recoveredBlock148Step = 759 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) min: (recoveredBlock148Stack6).
            recoveredBlock148PC := 761.
        ].
        recoveredBlock148Step = 761 ifTrue: [
            recoveredBlock148Stack6 := recoveredBlock148Stack5.
            recoveredBlock148PC := 762.
        ].
        recoveredBlock148Step = 762 ifTrue: [
            recoveredBlock148Local5 := recoveredBlock148Stack6.
            recoveredBlock148PC := 765.
        ].
        recoveredBlock148Step = 765 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) copyFrom: (recoveredBlock148Stack4) to: (recoveredBlock148Stack5).
            recoveredBlock148PC := 767.
        ].
        recoveredBlock148Step = 767 ifTrue: [
            recoveredLocal9 := recoveredBlock148Stack3.
            recoveredBlock148PC := 770.
        ].
        recoveredBlock148Step = 770 ifTrue: [
            recoveredBlock148Stack3 := self.
            recoveredBlock148PC := 771.
        ].
        recoveredBlock148Step = 771 ifTrue: [
            recoveredBlock148Stack4 := recoveredLocal9.
            recoveredBlock148PC := 774.
        ].
        recoveredBlock148Step = 774 ifTrue: [
            recoveredBlock148Stack5 := recoveredLocal8.
            recoveredBlock148PC := 777.
        ].
        recoveredBlock148Step = 777 ifTrue: [
            recoveredBlock148Stack6 := recoveredLocal7.
            recoveredBlock148PC := 780.
        ].
        recoveredBlock148Step = 780 ifTrue: [
            recoveredBlock148Stack7 := recoveredArg5.
            recoveredBlock148PC := 783.
        ].
        recoveredBlock148Step = 783 ifTrue: [
            (recoveredBlock148Stack3) drawText: (recoveredBlock148Stack4) x: (recoveredBlock148Stack5) y: (recoveredBlock148Stack6) blanked: (recoveredBlock148Stack7).
            recoveredBlock148PC := 786.
        ].
        recoveredBlock148Step = 786 ifTrue: [
            recoveredBlock148Stack3 := recoveredLocal11.
            recoveredBlock148PC := 789.
        ].
        recoveredBlock148Step = 789 ifTrue: [
            recoveredBlock148Stack4 := 1.
            recoveredBlock148PC := 791.
        ].
        recoveredBlock148Step = 791 ifTrue: [
            recoveredBlock148Stack5 := recoveredBlock148Local5.
            recoveredBlock148PC := 794.
        ].
        recoveredBlock148Step = 794 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) copyFrom: (recoveredBlock148Stack4) to: (recoveredBlock148Stack5).
            recoveredBlock148PC := 796.
        ].
        recoveredBlock148Step = 796 ifTrue: [
            recoveredLocal9 := recoveredBlock148Stack3.
            recoveredBlock148PC := 799.
        ].
        recoveredBlock148Step = 799 ifTrue: [
            recoveredBlock148Stack3 := insetX.
            recoveredBlock148PC := 801.
        ].
        recoveredBlock148Step = 801 ifTrue: [
            recoveredBlock148Stack4 := self.
            recoveredBlock148PC := 802.
        ].
        recoveredBlock148Step = 802 ifTrue: [
            recoveredBlock148Stack5 := recoveredLocal9.
            recoveredBlock148PC := 805.
        ].
        recoveredBlock148Step = 805 ifTrue: [
            recoveredBlock148Stack4 := (recoveredBlock148Stack4) pixelWidth: (recoveredBlock148Stack5).
            recoveredBlock148PC := 807.
        ].
        recoveredBlock148Step = 807 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) + (recoveredBlock148Stack4).
            recoveredBlock148PC := 808.
        ].
        recoveredBlock148Step = 808 ifTrue: [
            recoveredLocal8 := recoveredBlock148Stack3.
            recoveredBlock148PC := 811.
        ].
        recoveredBlock148Step = 811 ifTrue: [
            recoveredBlock148Stack3 := nil.
            recoveredBlock148PC := 812.
        ].
        recoveredBlock148Step = 812 ifTrue: [
            recoveredBlock148Local2 := recoveredBlock148Stack3.
            recoveredBlock148PC := 815.
        ].
        recoveredBlock148Step = 815 ifTrue: [
            (recoveredBlock148Stack1 isInteger and: [recoveredBlock148Stack2 isInteger]) ifTrue: [(recoveredBlock148Stack2 + 1 <= recoveredBlock148Stack1) ifTrue: [recoveredBlock148Stack2 := recoveredBlock148Stack2 + 1. recoveredBlock148Stack3 := recoveredBlock148Stack2. recoveredBlock148PC := 574] ifFalse: [recoveredBlock148PC := 846]] ifFalse: [recoveredBlock148PC := 819].
        ].
        recoveredBlock148Step = 819 ifTrue: [
            recoveredBlock148Local3 := recoveredBlock148Stack2.
            recoveredBlock148PC := 822.
        ].
        recoveredBlock148Step = 822 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Stack1.
            recoveredBlock148PC := 823.
        ].
        recoveredBlock148Step = 823 ifTrue: [
            recoveredBlock148Stack3 := recoveredBlock148Local3.
            recoveredBlock148PC := 826.
        ].
        recoveredBlock148Step = 826 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) + (1).
            recoveredBlock148PC := 827.
        ].
        recoveredBlock148Step = 827 ifTrue: [
            recoveredBlock148Stack4 := recoveredBlock148Stack3.
            recoveredBlock148PC := 828.
        ].
        recoveredBlock148Step = 828 ifTrue: [
            recoveredBlock148Local3 := recoveredBlock148Stack4.
            recoveredBlock148PC := 831.
        ].
        recoveredBlock148Step = 831 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) < (recoveredBlock148Stack3).
            recoveredBlock148PC := 832.
        ].
        recoveredBlock148Step = 832 ifTrue: [
            (recoveredBlock148Stack2) ifTrue: [recoveredBlock148PC := 842] ifFalse: [recoveredBlock148PC := 836].
        ].
        recoveredBlock148Step = 836 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Local3.
            recoveredBlock148PC := 839.
        ].
        recoveredBlock148Step = 839 ifTrue: [
            recoveredBlock148PC := 577.
        ].
        recoveredBlock148Step = 842 ifTrue: [
            recoveredBlock148Stack2 := nil.
            recoveredBlock148PC := 843.
        ].
        recoveredBlock148Step = 843 ifTrue: [
            recoveredBlock148Local3 := recoveredBlock148Stack2.
            recoveredBlock148PC := 846.
        ].
        recoveredBlock148Step = 846 ifTrue: [
            recoveredBlock148PC := 847.
        ].
        recoveredBlock148Step = 847 ifTrue: [
            recoveredBlock148Stack1 := nil.
            recoveredBlock148PC := 848.
        ].
        recoveredBlock148Step = 848 ifTrue: [
            recoveredBlock148Local4 := recoveredBlock148Stack1.
            recoveredBlock148PC := 851.
        ].
        recoveredBlock148Step = 851 ifTrue: [
            recoveredBlock148PC := 870.
        ].
        recoveredBlock148Step = 854 ifTrue: [
            recoveredBlock148Stack1 := self.
            recoveredBlock148PC := 855.
        ].
        recoveredBlock148Step = 855 ifTrue: [
            recoveredBlock148Stack2 := recoveredLocal9.
            recoveredBlock148PC := 858.
        ].
        recoveredBlock148Step = 858 ifTrue: [
            recoveredBlock148Stack3 := recoveredLocal8.
            recoveredBlock148PC := 861.
        ].
        recoveredBlock148Step = 861 ifTrue: [
            recoveredBlock148Stack4 := recoveredLocal7.
            recoveredBlock148PC := 864.
        ].
        recoveredBlock148Step = 864 ifTrue: [
            recoveredBlock148Stack5 := recoveredArg5.
            recoveredBlock148PC := 867.
        ].
        recoveredBlock148Step = 867 ifTrue: [
            (recoveredBlock148Stack1) drawText: (recoveredBlock148Stack2) x: (recoveredBlock148Stack3) y: (recoveredBlock148Stack4) blanked: (recoveredBlock148Stack5).
            recoveredBlock148PC := 870.
        ].
        recoveredBlock148Step = 870 ifTrue: [
            recoveredBlock148Stack1 := recoveredLocal7.
            recoveredBlock148PC := 873.
        ].
        recoveredBlock148Step = 873 ifTrue: [
            recoveredBlock148Stack2 := fontHeight.
            recoveredBlock148PC := 875.
        ].
        recoveredBlock148Step = 875 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) + (recoveredBlock148Stack2).
            recoveredBlock148PC := 876.
        ].
        recoveredBlock148Step = 876 ifTrue: [
            recoveredLocal7 := recoveredBlock148Stack1.
            recoveredBlock148PC := 879.
        ].
        recoveredBlock148Step = 879 ifTrue: [
            recoveredBlock148Stack1 := nil.
            recoveredBlock148PC := 880.
        ].
        recoveredBlock148Step = 880 ifTrue: [
            recoveredBlock148Stack2 := recoveredLocal4.
            recoveredBlock148PC := 883.
        ].
        recoveredBlock148Step = 883 ifTrue: [
            recoveredBlock148Stack3 := recoveredLocal2.
            recoveredBlock148PC := 886.
        ].
        recoveredBlock148Step = 886 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) = (recoveredBlock148Stack3).
            recoveredBlock148PC := 887.
        ].
        recoveredBlock148Step = 887 ifTrue: [
            (recoveredBlock148Stack2) ifTrue: [recoveredBlock148PC := 1864] ifFalse: [recoveredBlock148PC := 890].
        ].
        recoveredBlock148Step = 890 ifTrue: [
            recoveredBlock148PC := 891.
        ].
        recoveredBlock148Step = 891 ifTrue: [
            recoveredBlock148Stack1 := recoveredLocal2.
            recoveredBlock148PC := 894.
        ].
        recoveredBlock148Step = 894 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) + (-1).
            recoveredBlock148PC := 895.
        ].
        recoveredBlock148Step = 895 ifTrue: [
            recoveredBlock148Stack2 := recoveredLocal4.
            recoveredBlock148PC := 898.
        ].
        recoveredBlock148Step = 898 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) + (1).
            recoveredBlock148PC := 899.
        ].
        recoveredBlock148Step = 899 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) + (-1).
            recoveredBlock148PC := 900.
        ].
        recoveredBlock148Step = 900 ifTrue: [
            recoveredBlock148PC := 1347.
        ].
        recoveredBlock148Step = 904 ifTrue: [
            recoveredBlock148Local4 := recoveredBlock148Stack3.
            recoveredBlock148PC := 907.
        ].
        recoveredBlock148Step = 907 ifTrue: [
            recoveredBlock148Stack3 := insetX.
            recoveredBlock148PC := 909.
        ].
        recoveredBlock148Step = 909 ifTrue: [
            recoveredLocal8 := recoveredBlock148Stack3.
            recoveredBlock148PC := 912.
        ].
        recoveredBlock148Step = 912 ifTrue: [
            recoveredBlock148Stack3 := contents.
            recoveredBlock148PC := 914.
        ].
        recoveredBlock148Step = 914 ifTrue: [
            recoveredBlock148Stack4 := recoveredBlock148Local4.
            recoveredBlock148PC := 917.
        ].
        recoveredBlock148Step = 917 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) at: (recoveredBlock148Stack4).
            recoveredBlock148PC := 919.
        ].
        recoveredBlock148Step = 919 ifTrue: [
            recoveredLocal11 := recoveredBlock148Stack3.
            recoveredBlock148PC := 922.
        ].
        recoveredBlock148Step = 922 ifTrue: [
            recoveredBlock148Stack3 := false.
            recoveredBlock148PC := 923.
        ].
        recoveredBlock148Step = 923 ifTrue: [
            recoveredBlock148Stack4 := nodeColors.
            recoveredBlock148PC := 925.
        ].
        recoveredBlock148Step = 925 ifTrue: [
            (recoveredBlock148Stack4 == nil) ifTrue: [recoveredBlock148PC := 943] ifFalse: [recoveredBlock148PC := 928].
        ].
        recoveredBlock148Step = 928 ifTrue: [
            recoveredBlock148PC := 929.
        ].
        recoveredBlock148Step = 929 ifTrue: [
            recoveredBlock148Stack3 := nodeColors.
            recoveredBlock148PC := 931.
        ].
        recoveredBlock148Step = 931 ifTrue: [
            recoveredBlock148Stack4 := recoveredLocal11.
            recoveredBlock148PC := 934.
        ].
        recoveredBlock148Step = 934 ifTrue: [
            recoveredBlock148Stack5 := [].
            recoveredBlock148PC := 936.
        ].
        recoveredBlock148Step = 936 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) at: (recoveredBlock148Stack4) ifAbsent: (recoveredBlock148Stack5).
            recoveredBlock148PC := 938.
        ].
        recoveredBlock148Step = 938 ifTrue: [
            recoveredBlock148Stack4 := recoveredBlock148Stack3.
            recoveredBlock148PC := 939.
        ].
        recoveredBlock148Step = 939 ifTrue: [
            recoveredBlock148Local9 := recoveredBlock148Stack4.
            recoveredBlock148PC := 942.
        ].
        recoveredBlock148Step = 942 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) notNil.
            recoveredBlock148PC := 943.
        ].
        recoveredBlock148Step = 943 ifTrue: [
            recoveredBlock148Local10 := recoveredBlock148Stack3.
            recoveredBlock148PC := 946.
        ].
        recoveredBlock148Step = 946 ifTrue: [
            recoveredBlock148Stack3 := recoveredBlock148Local10.
            recoveredBlock148PC := 949.
        ].
        recoveredBlock148Step = 949 ifTrue: [
            (recoveredBlock148Stack3) ifTrue: [recoveredBlock148PC := 952] ifFalse: [recoveredBlock148PC := 1308].
        ].
        recoveredBlock148Step = 952 ifTrue: [
            recoveredBlock148Stack3 := recoveredBlock148Local9.
            recoveredBlock148PC := 955.
        ].
        recoveredBlock148Step = 955 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) notEmpty.
            recoveredBlock148PC := 957.
        ].
        recoveredBlock148Step = 957 ifTrue: [
            (recoveredBlock148Stack3) ifTrue: [recoveredBlock148PC := 960] ifFalse: [recoveredBlock148PC := 1308].
        ].
        recoveredBlock148Step = 960 ifTrue: [
            recoveredBlock148Stack3 := recoveredLocal11.
            recoveredBlock148PC := 963.
        ].
        recoveredBlock148Step = 963 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) size.
            recoveredBlock148PC := 965.
        ].
        recoveredBlock148Step = 965 ifTrue: [
            recoveredBlock148Local6 := recoveredBlock148Stack3.
            recoveredBlock148PC := 968.
        ].
        recoveredBlock148Step = 968 ifTrue: [
            recoveredBlock148Stack3 := recoveredLocal11.
            recoveredBlock148PC := 971.
        ].
        recoveredBlock148Step = 971 ifTrue: [
            recoveredBlock148Stack4 := 1.
            recoveredBlock148PC := 973.
        ].
        recoveredBlock148Step = 973 ifTrue: [
            recoveredBlock148Stack5 := recoveredBlock148Local9.
            recoveredBlock148PC := 976.
        ].
        recoveredBlock148Step = 976 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) first.
            recoveredBlock148PC := 978.
        ].
        recoveredBlock148Step = 978 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) key.
            recoveredBlock148PC := 980.
        ].
        recoveredBlock148Step = 980 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) x.
            recoveredBlock148PC := 982.
        ].
        recoveredBlock148Step = 982 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) + (-1).
            recoveredBlock148PC := 983.
        ].
        recoveredBlock148Step = 983 ifTrue: [
            recoveredBlock148Stack6 := recoveredBlock148Local6.
            recoveredBlock148PC := 986.
        ].
        recoveredBlock148Step = 986 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) min: (recoveredBlock148Stack6).
            recoveredBlock148PC := 988.
        ].
        recoveredBlock148Step = 988 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) copyFrom: (recoveredBlock148Stack4) to: (recoveredBlock148Stack5).
            recoveredBlock148PC := 990.
        ].
        recoveredBlock148Step = 990 ifTrue: [
            recoveredBlock148Local3 := recoveredBlock148Stack3.
            recoveredBlock148PC := 993.
        ].
        recoveredBlock148Step = 993 ifTrue: [
            recoveredBlock148Stack3 := self.
            recoveredBlock148PC := 994.
        ].
        recoveredBlock148Step = 994 ifTrue: [
            recoveredBlock148Stack4 := recoveredBlock148Local3.
            recoveredBlock148PC := 997.
        ].
        recoveredBlock148Step = 997 ifTrue: [
            recoveredBlock148Stack5 := recoveredLocal8.
            recoveredBlock148PC := 1000.
        ].
        recoveredBlock148Step = 1000 ifTrue: [
            recoveredBlock148Stack6 := recoveredLocal7.
            recoveredBlock148PC := 1003.
        ].
        recoveredBlock148Step = 1003 ifTrue: [
            recoveredBlock148Stack7 := recoveredArg5.
            recoveredBlock148PC := 1006.
        ].
        recoveredBlock148Step = 1006 ifTrue: [
            (recoveredBlock148Stack3) drawText: (recoveredBlock148Stack4) x: (recoveredBlock148Stack5) y: (recoveredBlock148Stack6) blanked: (recoveredBlock148Stack7).
            recoveredBlock148PC := 1009.
        ].
        recoveredBlock148Step = 1009 ifTrue: [
            recoveredBlock148Stack3 := recoveredLocal8.
            recoveredBlock148PC := 1012.
        ].
        recoveredBlock148Step = 1012 ifTrue: [
            recoveredBlock148Stack4 := self.
            recoveredBlock148PC := 1013.
        ].
        recoveredBlock148Step = 1013 ifTrue: [
            recoveredBlock148Stack5 := recoveredBlock148Local3.
            recoveredBlock148PC := 1016.
        ].
        recoveredBlock148Step = 1016 ifTrue: [
            recoveredBlock148Stack4 := (recoveredBlock148Stack4) pixelWidth: (recoveredBlock148Stack5).
            recoveredBlock148PC := 1018.
        ].
        recoveredBlock148Step = 1018 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) + (recoveredBlock148Stack4).
            recoveredBlock148PC := 1019.
        ].
        recoveredBlock148Step = 1019 ifTrue: [
            recoveredLocal8 := recoveredBlock148Stack3.
            recoveredBlock148PC := 1022.
        ].
        recoveredBlock148Step = 1022 ifTrue: [
            recoveredBlock148Stack3 := recoveredBlock148Local9.
            recoveredBlock148PC := 1025.
        ].
        recoveredBlock148Step = 1025 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) size.
            recoveredBlock148PC := 1027.
        ].
        recoveredBlock148Step = 1027 ifTrue: [
            recoveredBlock148Stack4 := 0.
            recoveredBlock148PC := 1029.
        ].
        recoveredBlock148Step = 1029 ifTrue: [
            recoveredBlock148PC := 1273.
        ].
        recoveredBlock148Step = 1032 ifTrue: [
            recoveredBlock148Local2 := recoveredBlock148Stack5.
            recoveredBlock148PC := 1035.
        ].
        recoveredBlock148Step = 1035 ifTrue: [
            recoveredBlock148Stack5 := recoveredBlock148Local9.
            recoveredBlock148PC := 1038.
        ].
        recoveredBlock148Step = 1038 ifTrue: [
            recoveredBlock148Stack6 := recoveredBlock148Local2.
            recoveredBlock148PC := 1041.
        ].
        recoveredBlock148Step = 1041 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) at: (recoveredBlock148Stack6).
            recoveredBlock148PC := 1043.
        ].
        recoveredBlock148Step = 1043 ifTrue: [
            recoveredBlock148Local1 := recoveredBlock148Stack5.
            recoveredBlock148PC := 1046.
        ].
        recoveredBlock148Step = 1046 ifTrue: [
            recoveredBlock148Stack5 := self.
            recoveredBlock148PC := 1047.
        ].
        recoveredBlock148Step = 1047 ifTrue: [
            recoveredBlock148Stack6 := [:recoveredBlock148Block1047Arg1 | 
    | recoveredBlock148Block1047Value0 recoveredBlock148Block1047Value1 recoveredBlock148Block1047Value2 recoveredBlock148Block1047Value3 |
    recoveredBlock148Block1047Value0 := recoveredBlock148Block1047Arg1.
    recoveredBlock148Block1047Value1 := recoveredBlock148Local1.
    recoveredBlock148Block1047Value2 := (recoveredBlock148Block1047Value1) value.
    recoveredBlock148Block1047Value3 := (recoveredBlock148Block1047Value0) setTextColor: (recoveredBlock148Block1047Value2).
    recoveredBlock148Block1047Value3
].
            recoveredBlock148PC := 1063.
        ].
        recoveredBlock148Step = 1063 ifTrue: [
            (recoveredBlock148Stack5) dcDo: (recoveredBlock148Stack6).
            recoveredBlock148PC := 1065.
        ].
        recoveredBlock148Step = 1065 ifTrue: [
            recoveredBlock148Stack5 := recoveredLocal11.
            recoveredBlock148PC := 1068.
        ].
        recoveredBlock148Step = 1068 ifTrue: [
            recoveredBlock148Stack6 := recoveredBlock148Local1.
            recoveredBlock148PC := 1071.
        ].
        recoveredBlock148Step = 1071 ifTrue: [
            recoveredBlock148Stack6 := (recoveredBlock148Stack6) key.
            recoveredBlock148PC := 1073.
        ].
        recoveredBlock148Step = 1073 ifTrue: [
            recoveredBlock148Stack6 := (recoveredBlock148Stack6) x.
            recoveredBlock148PC := 1075.
        ].
        recoveredBlock148Step = 1075 ifTrue: [
            recoveredBlock148Stack7 := 1.
            recoveredBlock148PC := 1077.
        ].
        recoveredBlock148Step = 1077 ifTrue: [
            recoveredBlock148Stack6 := (recoveredBlock148Stack6) max: (recoveredBlock148Stack7).
            recoveredBlock148PC := 1079.
        ].
        recoveredBlock148Step = 1079 ifTrue: [
            recoveredBlock148Stack7 := recoveredBlock148Local1.
            recoveredBlock148PC := 1082.
        ].
        recoveredBlock148Step = 1082 ifTrue: [
            recoveredBlock148Stack7 := (recoveredBlock148Stack7) key.
            recoveredBlock148PC := 1084.
        ].
        recoveredBlock148Step = 1084 ifTrue: [
            recoveredBlock148Stack7 := (recoveredBlock148Stack7) y.
            recoveredBlock148PC := 1086.
        ].
        recoveredBlock148Step = 1086 ifTrue: [
            recoveredBlock148Stack8 := recoveredBlock148Local6.
            recoveredBlock148PC := 1089.
        ].
        recoveredBlock148Step = 1089 ifTrue: [
            recoveredBlock148Stack7 := (recoveredBlock148Stack7) min: (recoveredBlock148Stack8).
            recoveredBlock148PC := 1091.
        ].
        recoveredBlock148Step = 1091 ifTrue: [
            recoveredBlock148Stack8 := recoveredBlock148Stack7.
            recoveredBlock148PC := 1092.
        ].
        recoveredBlock148Step = 1092 ifTrue: [
            recoveredBlock148Local5 := recoveredBlock148Stack8.
            recoveredBlock148PC := 1095.
        ].
        recoveredBlock148Step = 1095 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) copyFrom: (recoveredBlock148Stack6) to: (recoveredBlock148Stack7).
            recoveredBlock148PC := 1097.
        ].
        recoveredBlock148Step = 1097 ifTrue: [
            recoveredBlock148Local3 := recoveredBlock148Stack5.
            recoveredBlock148PC := 1100.
        ].
        recoveredBlock148Step = 1100 ifTrue: [
            recoveredBlock148Stack5 := self.
            recoveredBlock148PC := 1101.
        ].
        recoveredBlock148Step = 1101 ifTrue: [
            recoveredBlock148Stack6 := recoveredBlock148Local3.
            recoveredBlock148PC := 1104.
        ].
        recoveredBlock148Step = 1104 ifTrue: [
            recoveredBlock148Stack7 := recoveredLocal8.
            recoveredBlock148PC := 1107.
        ].
        recoveredBlock148Step = 1107 ifTrue: [
            recoveredBlock148Stack8 := recoveredLocal7.
            recoveredBlock148PC := 1110.
        ].
        recoveredBlock148Step = 1110 ifTrue: [
            recoveredBlock148Stack9 := recoveredArg5.
            recoveredBlock148PC := 1113.
        ].
        recoveredBlock148Step = 1113 ifTrue: [
            (recoveredBlock148Stack5) drawText: (recoveredBlock148Stack6) x: (recoveredBlock148Stack7) y: (recoveredBlock148Stack8) blanked: (recoveredBlock148Stack9).
            recoveredBlock148PC := 1116.
        ].
        recoveredBlock148Step = 1116 ifTrue: [
            recoveredBlock148Stack5 := recoveredLocal11.
            recoveredBlock148PC := 1119.
        ].
        recoveredBlock148Step = 1119 ifTrue: [
            recoveredBlock148Stack6 := 1.
            recoveredBlock148PC := 1121.
        ].
        recoveredBlock148Step = 1121 ifTrue: [
            recoveredBlock148Stack7 := recoveredBlock148Local5.
            recoveredBlock148PC := 1124.
        ].
        recoveredBlock148Step = 1124 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) copyFrom: (recoveredBlock148Stack6) to: (recoveredBlock148Stack7).
            recoveredBlock148PC := 1126.
        ].
        recoveredBlock148Step = 1126 ifTrue: [
            recoveredBlock148Local3 := recoveredBlock148Stack5.
            recoveredBlock148PC := 1129.
        ].
        recoveredBlock148Step = 1129 ifTrue: [
            recoveredBlock148Stack5 := insetX.
            recoveredBlock148PC := 1131.
        ].
        recoveredBlock148Step = 1131 ifTrue: [
            recoveredBlock148Stack6 := self.
            recoveredBlock148PC := 1132.
        ].
        recoveredBlock148Step = 1132 ifTrue: [
            recoveredBlock148Stack7 := recoveredBlock148Local3.
            recoveredBlock148PC := 1135.
        ].
        recoveredBlock148Step = 1135 ifTrue: [
            recoveredBlock148Stack6 := (recoveredBlock148Stack6) pixelWidth: (recoveredBlock148Stack7).
            recoveredBlock148PC := 1137.
        ].
        recoveredBlock148Step = 1137 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) + (recoveredBlock148Stack6).
            recoveredBlock148PC := 1138.
        ].
        recoveredBlock148Step = 1138 ifTrue: [
            recoveredLocal8 := recoveredBlock148Stack5.
            recoveredBlock148PC := 1141.
        ].
        recoveredBlock148Step = 1141 ifTrue: [
            recoveredBlock148Stack5 := self.
            recoveredBlock148PC := 1142.
        ].
        recoveredBlock148Step = 1142 ifTrue: [
            recoveredBlock148Stack6 := [:recoveredBlock148Block1142Arg1 | 
    | recoveredBlock148Block1142Value0 recoveredBlock148Block1142Value1 recoveredBlock148Block1142Value2 |
    recoveredBlock148Block1142Value0 := recoveredBlock148Block1142Arg1.
    recoveredBlock148Block1142Value1 := (self) foreground.
    recoveredBlock148Block1142Value2 := (recoveredBlock148Block1142Value0) setTextColor: (recoveredBlock148Block1142Value1).
    recoveredBlock148Block1142Value2
].
            recoveredBlock148PC := 1155.
        ].
        recoveredBlock148Step = 1155 ifTrue: [
            (recoveredBlock148Stack5) dcDo: (recoveredBlock148Stack6).
            recoveredBlock148PC := 1157.
        ].
        recoveredBlock148Step = 1157 ifTrue: [
            recoveredBlock148Stack5 := recoveredBlock148Local1.
            recoveredBlock148PC := 1160.
        ].
        recoveredBlock148Step = 1160 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) key.
            recoveredBlock148PC := 1162.
        ].
        recoveredBlock148Step = 1162 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) y.
            recoveredBlock148PC := 1164.
        ].
        recoveredBlock148Step = 1164 ifTrue: [
            recoveredBlock148Stack6 := recoveredBlock148Local6.
            recoveredBlock148PC := 1167.
        ].
        recoveredBlock148Step = 1167 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) < (recoveredBlock148Stack6).
            recoveredBlock148PC := 1168.
        ].
        recoveredBlock148Step = 1168 ifTrue: [
            (recoveredBlock148Stack5) ifTrue: [recoveredBlock148PC := 1172] ifFalse: [recoveredBlock148PC := 1269].
        ].
        recoveredBlock148Step = 1172 ifTrue: [
            recoveredBlock148Stack5 := recoveredLocal11.
            recoveredBlock148PC := 1175.
        ].
        recoveredBlock148Step = 1175 ifTrue: [
            recoveredBlock148Stack6 := recoveredBlock148Local1.
            recoveredBlock148PC := 1178.
        ].
        recoveredBlock148Step = 1178 ifTrue: [
            recoveredBlock148Stack6 := (recoveredBlock148Stack6) key.
            recoveredBlock148PC := 1180.
        ].
        recoveredBlock148Step = 1180 ifTrue: [
            recoveredBlock148Stack6 := (recoveredBlock148Stack6) y.
            recoveredBlock148PC := 1182.
        ].
        recoveredBlock148Step = 1182 ifTrue: [
            recoveredBlock148Stack6 := (recoveredBlock148Stack6) + (1).
            recoveredBlock148PC := 1183.
        ].
        recoveredBlock148Step = 1183 ifTrue: [
            recoveredBlock148Stack7 := recoveredBlock148Local2.
            recoveredBlock148PC := 1186.
        ].
        recoveredBlock148Step = 1186 ifTrue: [
            recoveredBlock148Stack8 := recoveredBlock148Local9.
            recoveredBlock148PC := 1189.
        ].
        recoveredBlock148Step = 1189 ifTrue: [
            recoveredBlock148Stack8 := (recoveredBlock148Stack8) size.
            recoveredBlock148PC := 1191.
        ].
        recoveredBlock148Step = 1191 ifTrue: [
            (recoveredBlock148Stack7 ~~ recoveredBlock148Stack8) ifTrue: [recoveredBlock148PC := 1200] ifFalse: [recoveredBlock148PC := 1194].
        ].
        recoveredBlock148Step = 1194 ifTrue: [
            recoveredBlock148Stack7 := recoveredBlock148Local6.
            recoveredBlock148PC := 1197.
        ].
        recoveredBlock148Step = 1197 ifTrue: [
            recoveredBlock148PC := 1219.
        ].
        recoveredBlock148Step = 1200 ifTrue: [
            recoveredBlock148Stack7 := recoveredBlock148Local9.
            recoveredBlock148PC := 1203.
        ].
        recoveredBlock148Step = 1203 ifTrue: [
            recoveredBlock148Stack8 := recoveredBlock148Local2.
            recoveredBlock148PC := 1206.
        ].
        recoveredBlock148Step = 1206 ifTrue: [
            recoveredBlock148Stack8 := (recoveredBlock148Stack8) + (1).
            recoveredBlock148PC := 1207.
        ].
        recoveredBlock148Step = 1207 ifTrue: [
            recoveredBlock148Stack7 := (recoveredBlock148Stack7) at: (recoveredBlock148Stack8).
            recoveredBlock148PC := 1209.
        ].
        recoveredBlock148Step = 1209 ifTrue: [
            recoveredBlock148Stack7 := (recoveredBlock148Stack7) key.
            recoveredBlock148PC := 1211.
        ].
        recoveredBlock148Step = 1211 ifTrue: [
            recoveredBlock148Stack7 := (recoveredBlock148Stack7) x.
            recoveredBlock148PC := 1213.
        ].
        recoveredBlock148Step = 1213 ifTrue: [
            recoveredBlock148Stack7 := (recoveredBlock148Stack7) + (-1).
            recoveredBlock148PC := 1214.
        ].
        recoveredBlock148Step = 1214 ifTrue: [
            recoveredBlock148Stack8 := recoveredBlock148Local6.
            recoveredBlock148PC := 1217.
        ].
        recoveredBlock148Step = 1217 ifTrue: [
            recoveredBlock148Stack7 := (recoveredBlock148Stack7) min: (recoveredBlock148Stack8).
            recoveredBlock148PC := 1219.
        ].
        recoveredBlock148Step = 1219 ifTrue: [
            recoveredBlock148Stack8 := recoveredBlock148Stack7.
            recoveredBlock148PC := 1220.
        ].
        recoveredBlock148Step = 1220 ifTrue: [
            recoveredBlock148Local5 := recoveredBlock148Stack8.
            recoveredBlock148PC := 1223.
        ].
        recoveredBlock148Step = 1223 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) copyFrom: (recoveredBlock148Stack6) to: (recoveredBlock148Stack7).
            recoveredBlock148PC := 1225.
        ].
        recoveredBlock148Step = 1225 ifTrue: [
            recoveredBlock148Local3 := recoveredBlock148Stack5.
            recoveredBlock148PC := 1228.
        ].
        recoveredBlock148Step = 1228 ifTrue: [
            recoveredBlock148Stack5 := self.
            recoveredBlock148PC := 1229.
        ].
        recoveredBlock148Step = 1229 ifTrue: [
            recoveredBlock148Stack6 := recoveredBlock148Local3.
            recoveredBlock148PC := 1232.
        ].
        recoveredBlock148Step = 1232 ifTrue: [
            recoveredBlock148Stack7 := recoveredLocal8.
            recoveredBlock148PC := 1235.
        ].
        recoveredBlock148Step = 1235 ifTrue: [
            recoveredBlock148Stack8 := recoveredLocal7.
            recoveredBlock148PC := 1238.
        ].
        recoveredBlock148Step = 1238 ifTrue: [
            recoveredBlock148Stack9 := recoveredArg5.
            recoveredBlock148PC := 1241.
        ].
        recoveredBlock148Step = 1241 ifTrue: [
            (recoveredBlock148Stack5) drawText: (recoveredBlock148Stack6) x: (recoveredBlock148Stack7) y: (recoveredBlock148Stack8) blanked: (recoveredBlock148Stack9).
            recoveredBlock148PC := 1244.
        ].
        recoveredBlock148Step = 1244 ifTrue: [
            recoveredBlock148Stack5 := recoveredLocal11.
            recoveredBlock148PC := 1247.
        ].
        recoveredBlock148Step = 1247 ifTrue: [
            recoveredBlock148Stack6 := 1.
            recoveredBlock148PC := 1249.
        ].
        recoveredBlock148Step = 1249 ifTrue: [
            recoveredBlock148Stack7 := recoveredBlock148Local5.
            recoveredBlock148PC := 1252.
        ].
        recoveredBlock148Step = 1252 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) copyFrom: (recoveredBlock148Stack6) to: (recoveredBlock148Stack7).
            recoveredBlock148PC := 1254.
        ].
        recoveredBlock148Step = 1254 ifTrue: [
            recoveredBlock148Local3 := recoveredBlock148Stack5.
            recoveredBlock148PC := 1257.
        ].
        recoveredBlock148Step = 1257 ifTrue: [
            recoveredBlock148Stack5 := insetX.
            recoveredBlock148PC := 1259.
        ].
        recoveredBlock148Step = 1259 ifTrue: [
            recoveredBlock148Stack6 := self.
            recoveredBlock148PC := 1260.
        ].
        recoveredBlock148Step = 1260 ifTrue: [
            recoveredBlock148Stack7 := recoveredBlock148Local3.
            recoveredBlock148PC := 1263.
        ].
        recoveredBlock148Step = 1263 ifTrue: [
            recoveredBlock148Stack6 := (recoveredBlock148Stack6) pixelWidth: (recoveredBlock148Stack7).
            recoveredBlock148PC := 1265.
        ].
        recoveredBlock148Step = 1265 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) + (recoveredBlock148Stack6).
            recoveredBlock148PC := 1266.
        ].
        recoveredBlock148Step = 1266 ifTrue: [
            recoveredLocal8 := recoveredBlock148Stack5.
            recoveredBlock148PC := 1269.
        ].
        recoveredBlock148Step = 1269 ifTrue: [
            recoveredBlock148Stack5 := nil.
            recoveredBlock148PC := 1270.
        ].
        recoveredBlock148Step = 1270 ifTrue: [
            recoveredBlock148Local1 := recoveredBlock148Stack5.
            recoveredBlock148PC := 1273.
        ].
        recoveredBlock148Step = 1273 ifTrue: [
            (recoveredBlock148Stack3 isInteger and: [recoveredBlock148Stack4 isInteger]) ifTrue: [(recoveredBlock148Stack4 + 1 <= recoveredBlock148Stack3) ifTrue: [recoveredBlock148Stack4 := recoveredBlock148Stack4 + 1. recoveredBlock148Stack5 := recoveredBlock148Stack4. recoveredBlock148PC := 1032] ifFalse: [recoveredBlock148PC := 1304]] ifFalse: [recoveredBlock148PC := 1277].
        ].
        recoveredBlock148Step = 1277 ifTrue: [
            recoveredBlock148Local2 := recoveredBlock148Stack4.
            recoveredBlock148PC := 1280.
        ].
        recoveredBlock148Step = 1280 ifTrue: [
            recoveredBlock148Stack4 := recoveredBlock148Stack3.
            recoveredBlock148PC := 1281.
        ].
        recoveredBlock148Step = 1281 ifTrue: [
            recoveredBlock148Stack5 := recoveredBlock148Local2.
            recoveredBlock148PC := 1284.
        ].
        recoveredBlock148Step = 1284 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) + (1).
            recoveredBlock148PC := 1285.
        ].
        recoveredBlock148Step = 1285 ifTrue: [
            recoveredBlock148Stack6 := recoveredBlock148Stack5.
            recoveredBlock148PC := 1286.
        ].
        recoveredBlock148Step = 1286 ifTrue: [
            recoveredBlock148Local2 := recoveredBlock148Stack6.
            recoveredBlock148PC := 1289.
        ].
        recoveredBlock148Step = 1289 ifTrue: [
            recoveredBlock148Stack4 := (recoveredBlock148Stack4) < (recoveredBlock148Stack5).
            recoveredBlock148PC := 1290.
        ].
        recoveredBlock148Step = 1290 ifTrue: [
            (recoveredBlock148Stack4) ifTrue: [recoveredBlock148PC := 1300] ifFalse: [recoveredBlock148PC := 1294].
        ].
        recoveredBlock148Step = 1294 ifTrue: [
            recoveredBlock148Stack4 := recoveredBlock148Local2.
            recoveredBlock148PC := 1297.
        ].
        recoveredBlock148Step = 1297 ifTrue: [
            recoveredBlock148PC := 1035.
        ].
        recoveredBlock148Step = 1300 ifTrue: [
            recoveredBlock148Stack4 := nil.
            recoveredBlock148PC := 1301.
        ].
        recoveredBlock148Step = 1301 ifTrue: [
            recoveredBlock148Local2 := recoveredBlock148Stack4.
            recoveredBlock148PC := 1304.
        ].
        recoveredBlock148Step = 1304 ifTrue: [
            recoveredBlock148PC := 1305.
        ].
        recoveredBlock148Step = 1305 ifTrue: [
            recoveredBlock148PC := 1334.
        ].
        recoveredBlock148Step = 1308 ifTrue: [
            recoveredBlock148Stack3 := contents.
            recoveredBlock148PC := 1310.
        ].
        recoveredBlock148Step = 1310 ifTrue: [
            recoveredBlock148Stack4 := recoveredBlock148Local4.
            recoveredBlock148PC := 1313.
        ].
        recoveredBlock148Step = 1313 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) at: (recoveredBlock148Stack4).
            recoveredBlock148PC := 1315.
        ].
        recoveredBlock148Step = 1315 ifTrue: [
            recoveredBlock148Local3 := recoveredBlock148Stack3.
            recoveredBlock148PC := 1318.
        ].
        recoveredBlock148Step = 1318 ifTrue: [
            recoveredBlock148Stack3 := self.
            recoveredBlock148PC := 1319.
        ].
        recoveredBlock148Step = 1319 ifTrue: [
            recoveredBlock148Stack4 := recoveredBlock148Local3.
            recoveredBlock148PC := 1322.
        ].
        recoveredBlock148Step = 1322 ifTrue: [
            recoveredBlock148Stack5 := recoveredLocal8.
            recoveredBlock148PC := 1325.
        ].
        recoveredBlock148Step = 1325 ifTrue: [
            recoveredBlock148Stack6 := recoveredLocal7.
            recoveredBlock148PC := 1328.
        ].
        recoveredBlock148Step = 1328 ifTrue: [
            recoveredBlock148Stack7 := recoveredArg5.
            recoveredBlock148PC := 1331.
        ].
        recoveredBlock148Step = 1331 ifTrue: [
            (recoveredBlock148Stack3) drawText: (recoveredBlock148Stack4) x: (recoveredBlock148Stack5) y: (recoveredBlock148Stack6) blanked: (recoveredBlock148Stack7).
            recoveredBlock148PC := 1334.
        ].
        recoveredBlock148Step = 1334 ifTrue: [
            recoveredBlock148Stack3 := recoveredLocal7.
            recoveredBlock148PC := 1337.
        ].
        recoveredBlock148Step = 1337 ifTrue: [
            recoveredBlock148Stack4 := fontHeight.
            recoveredBlock148PC := 1339.
        ].
        recoveredBlock148Step = 1339 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) + (recoveredBlock148Stack4).
            recoveredBlock148PC := 1340.
        ].
        recoveredBlock148Step = 1340 ifTrue: [
            recoveredLocal7 := recoveredBlock148Stack3.
            recoveredBlock148PC := 1343.
        ].
        recoveredBlock148Step = 1343 ifTrue: [
            recoveredBlock148Stack3 := nil.
            recoveredBlock148PC := 1344.
        ].
        recoveredBlock148Step = 1344 ifTrue: [
            recoveredBlock148Local3 := recoveredBlock148Stack3.
            recoveredBlock148PC := 1347.
        ].
        recoveredBlock148Step = 1347 ifTrue: [
            (recoveredBlock148Stack1 isInteger and: [recoveredBlock148Stack2 isInteger]) ifTrue: [(recoveredBlock148Stack2 + 1 <= recoveredBlock148Stack1) ifTrue: [recoveredBlock148Stack2 := recoveredBlock148Stack2 + 1. recoveredBlock148Stack3 := recoveredBlock148Stack2. recoveredBlock148PC := 904] ifFalse: [recoveredBlock148PC := 1378]] ifFalse: [recoveredBlock148PC := 1351].
        ].
        recoveredBlock148Step = 1351 ifTrue: [
            recoveredBlock148Local4 := recoveredBlock148Stack2.
            recoveredBlock148PC := 1354.
        ].
        recoveredBlock148Step = 1354 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Stack1.
            recoveredBlock148PC := 1355.
        ].
        recoveredBlock148Step = 1355 ifTrue: [
            recoveredBlock148Stack3 := recoveredBlock148Local4.
            recoveredBlock148PC := 1358.
        ].
        recoveredBlock148Step = 1358 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) + (1).
            recoveredBlock148PC := 1359.
        ].
        recoveredBlock148Step = 1359 ifTrue: [
            recoveredBlock148Stack4 := recoveredBlock148Stack3.
            recoveredBlock148PC := 1360.
        ].
        recoveredBlock148Step = 1360 ifTrue: [
            recoveredBlock148Local4 := recoveredBlock148Stack4.
            recoveredBlock148PC := 1363.
        ].
        recoveredBlock148Step = 1363 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) < (recoveredBlock148Stack3).
            recoveredBlock148PC := 1364.
        ].
        recoveredBlock148Step = 1364 ifTrue: [
            (recoveredBlock148Stack2) ifTrue: [recoveredBlock148PC := 1374] ifFalse: [recoveredBlock148PC := 1368].
        ].
        recoveredBlock148Step = 1368 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Local4.
            recoveredBlock148PC := 1371.
        ].
        recoveredBlock148Step = 1371 ifTrue: [
            recoveredBlock148PC := 907.
        ].
        recoveredBlock148Step = 1374 ifTrue: [
            recoveredBlock148Stack2 := nil.
            recoveredBlock148PC := 1375.
        ].
        recoveredBlock148Step = 1375 ifTrue: [
            recoveredBlock148Local4 := recoveredBlock148Stack2.
            recoveredBlock148PC := 1378.
        ].
        recoveredBlock148Step = 1378 ifTrue: [
            recoveredBlock148PC := 1379.
        ].
        recoveredBlock148Step = 1379 ifTrue: [
            recoveredBlock148Stack1 := contents.
            recoveredBlock148PC := 1381.
        ].
        recoveredBlock148Step = 1381 ifTrue: [
            recoveredBlock148Stack2 := recoveredLocal2.
            recoveredBlock148PC := 1384.
        ].
        recoveredBlock148Step = 1384 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) at: (recoveredBlock148Stack2).
            recoveredBlock148PC := 1386.
        ].
        recoveredBlock148Step = 1386 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Stack1.
            recoveredBlock148PC := 1387.
        ].
        recoveredBlock148Step = 1387 ifTrue: [
            recoveredLocal11 := recoveredBlock148Stack2.
            recoveredBlock148PC := 1390.
        ].
        recoveredBlock148Step = 1390 ifTrue: [
            recoveredLocal10 := recoveredBlock148Stack1.
            recoveredBlock148PC := 1393.
        ].
        recoveredBlock148Step = 1393 ifTrue: [
            recoveredBlock148Stack1 := recoveredLocal11.
            recoveredBlock148PC := 1396.
        ].
        recoveredBlock148Step = 1396 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) size.
            recoveredBlock148PC := 1398.
        ].
        recoveredBlock148Step = 1398 ifTrue: [
            recoveredBlock148Local6 := recoveredBlock148Stack1.
            recoveredBlock148PC := 1401.
        ].
        recoveredBlock148Step = 1401 ifTrue: [
            recoveredBlock148Stack1 := insetX.
            recoveredBlock148PC := 1403.
        ].
        recoveredBlock148Step = 1403 ifTrue: [
            recoveredLocal8 := recoveredBlock148Stack1.
            recoveredBlock148PC := 1406.
        ].
        recoveredBlock148Step = 1406 ifTrue: [
            recoveredBlock148Stack1 := false.
            recoveredBlock148PC := 1407.
        ].
        recoveredBlock148Step = 1407 ifTrue: [
            recoveredBlock148Stack2 := nodeColors.
            recoveredBlock148PC := 1409.
        ].
        recoveredBlock148Step = 1409 ifTrue: [
            (recoveredBlock148Stack2 == nil) ifTrue: [recoveredBlock148PC := 1427] ifFalse: [recoveredBlock148PC := 1412].
        ].
        recoveredBlock148Step = 1412 ifTrue: [
            recoveredBlock148PC := 1413.
        ].
        recoveredBlock148Step = 1413 ifTrue: [
            recoveredBlock148Stack1 := nodeColors.
            recoveredBlock148PC := 1415.
        ].
        recoveredBlock148Step = 1415 ifTrue: [
            recoveredBlock148Stack2 := recoveredLocal11.
            recoveredBlock148PC := 1418.
        ].
        recoveredBlock148Step = 1418 ifTrue: [
            recoveredBlock148Stack3 := [].
            recoveredBlock148PC := 1420.
        ].
        recoveredBlock148Step = 1420 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) at: (recoveredBlock148Stack2) ifAbsent: (recoveredBlock148Stack3).
            recoveredBlock148PC := 1422.
        ].
        recoveredBlock148Step = 1422 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Stack1.
            recoveredBlock148PC := 1423.
        ].
        recoveredBlock148Step = 1423 ifTrue: [
            recoveredBlock148Local9 := recoveredBlock148Stack2.
            recoveredBlock148PC := 1426.
        ].
        recoveredBlock148Step = 1426 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) notNil.
            recoveredBlock148PC := 1427.
        ].
        recoveredBlock148Step = 1427 ifTrue: [
            recoveredBlock148Local10 := recoveredBlock148Stack1.
            recoveredBlock148PC := 1430.
        ].
        recoveredBlock148Step = 1430 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Local10.
            recoveredBlock148PC := 1433.
        ].
        recoveredBlock148Step = 1433 ifTrue: [
            (recoveredBlock148Stack1) ifTrue: [recoveredBlock148PC := 1436] ifFalse: [recoveredBlock148PC := 1828].
        ].
        recoveredBlock148Step = 1436 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Local9.
            recoveredBlock148PC := 1439.
        ].
        recoveredBlock148Step = 1439 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) reverse.
            recoveredBlock148PC := 1441.
        ].
        recoveredBlock148Step = 1441 ifTrue: [
            recoveredBlock148Stack2 := [:recoveredBlock148Block1441Arg1 | 
    | recoveredBlock148Block1441Value0 recoveredBlock148Block1441Value1 recoveredBlock148Block1441Value2 recoveredBlock148Block1441Value3 recoveredBlock148Block1441Value4 |
    recoveredBlock148Block1441Value0 := recoveredBlock148Block1441Arg1.
    recoveredBlock148Block1441Value1 := (recoveredBlock148Block1441Value0) key.
    recoveredBlock148Block1441Value2 := (recoveredBlock148Block1441Value1) x.
    recoveredBlock148Block1441Value3 := recoveredLocal1.
    recoveredBlock148Block1441Value4 := (recoveredBlock148Block1441Value2) <= (recoveredBlock148Block1441Value3).
    recoveredBlock148Block1441Value4
].
            recoveredBlock148PC := 1458.
        ].
        recoveredBlock148Step = 1458 ifTrue: [
            recoveredBlock148Stack3 := [].
            recoveredBlock148PC := 1460.
        ].
        recoveredBlock148Step = 1460 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) detect: (recoveredBlock148Stack2) ifNone: (recoveredBlock148Stack3).
            recoveredBlock148PC := 1462.
        ].
        recoveredBlock148Step = 1462 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Stack1.
            recoveredBlock148PC := 1463.
        ].
        recoveredBlock148Step = 1463 ifTrue: [
            recoveredBlock148Local7 := recoveredBlock148Stack2.
            recoveredBlock148PC := 1466.
        ].
        recoveredBlock148Step = 1466 ifTrue: [
            (recoveredBlock148Stack1 == nil) ifTrue: [recoveredBlock148PC := 1828] ifFalse: [recoveredBlock148PC := 1470].
        ].
        recoveredBlock148Step = 1470 ifTrue: [
            recoveredBlock148Stack1 := recoveredLocal11.
            recoveredBlock148PC := 1473.
        ].
        recoveredBlock148Step = 1473 ifTrue: [
            recoveredBlock148Stack2 := 1.
            recoveredBlock148PC := 1475.
        ].
        recoveredBlock148Step = 1475 ifTrue: [
            recoveredBlock148Stack3 := recoveredBlock148Local9.
            recoveredBlock148PC := 1478.
        ].
        recoveredBlock148Step = 1478 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) first.
            recoveredBlock148PC := 1480.
        ].
        recoveredBlock148Step = 1480 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) key.
            recoveredBlock148PC := 1482.
        ].
        recoveredBlock148Step = 1482 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) x.
            recoveredBlock148PC := 1484.
        ].
        recoveredBlock148Step = 1484 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) + (-1).
            recoveredBlock148PC := 1485.
        ].
        recoveredBlock148Step = 1485 ifTrue: [
            recoveredBlock148Stack4 := recoveredBlock148Local6.
            recoveredBlock148PC := 1488.
        ].
        recoveredBlock148Step = 1488 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) min: (recoveredBlock148Stack4).
            recoveredBlock148PC := 1490.
        ].
        recoveredBlock148Step = 1490 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) copyFrom: (recoveredBlock148Stack2) to: (recoveredBlock148Stack3).
            recoveredBlock148PC := 1492.
        ].
        recoveredBlock148Step = 1492 ifTrue: [
            recoveredBlock148Local4 := recoveredBlock148Stack1.
            recoveredBlock148PC := 1495.
        ].
        recoveredBlock148Step = 1495 ifTrue: [
            recoveredBlock148Stack1 := self.
            recoveredBlock148PC := 1496.
        ].
        recoveredBlock148Step = 1496 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Local4.
            recoveredBlock148PC := 1499.
        ].
        recoveredBlock148Step = 1499 ifTrue: [
            recoveredBlock148Stack3 := recoveredLocal8.
            recoveredBlock148PC := 1502.
        ].
        recoveredBlock148Step = 1502 ifTrue: [
            recoveredBlock148Stack4 := recoveredLocal7.
            recoveredBlock148PC := 1505.
        ].
        recoveredBlock148Step = 1505 ifTrue: [
            recoveredBlock148Stack5 := recoveredArg5.
            recoveredBlock148PC := 1508.
        ].
        recoveredBlock148Step = 1508 ifTrue: [
            (recoveredBlock148Stack1) drawText: (recoveredBlock148Stack2) x: (recoveredBlock148Stack3) y: (recoveredBlock148Stack4) blanked: (recoveredBlock148Stack5).
            recoveredBlock148PC := 1511.
        ].
        recoveredBlock148Step = 1511 ifTrue: [
            recoveredBlock148Stack1 := recoveredLocal8.
            recoveredBlock148PC := 1514.
        ].
        recoveredBlock148Step = 1514 ifTrue: [
            recoveredBlock148Stack2 := self.
            recoveredBlock148PC := 1515.
        ].
        recoveredBlock148Step = 1515 ifTrue: [
            recoveredBlock148Stack3 := recoveredBlock148Local4.
            recoveredBlock148PC := 1518.
        ].
        recoveredBlock148Step = 1518 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) pixelWidth: (recoveredBlock148Stack3).
            recoveredBlock148PC := 1520.
        ].
        recoveredBlock148Step = 1520 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) + (recoveredBlock148Stack2).
            recoveredBlock148PC := 1521.
        ].
        recoveredBlock148Step = 1521 ifTrue: [
            recoveredLocal8 := recoveredBlock148Stack1.
            recoveredBlock148PC := 1524.
        ].
        recoveredBlock148Step = 1524 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Local9.
            recoveredBlock148PC := 1527.
        ].
        recoveredBlock148Step = 1527 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Local7.
            recoveredBlock148PC := 1530.
        ].
        recoveredBlock148Step = 1530 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) indexOf: (recoveredBlock148Stack2).
            recoveredBlock148PC := 1532.
        ].
        recoveredBlock148Step = 1532 ifTrue: [
            recoveredBlock148Stack2 := 0.
            recoveredBlock148PC := 1534.
        ].
        recoveredBlock148Step = 1534 ifTrue: [
            recoveredBlock148PC := 1789.
        ].
        recoveredBlock148Step = 1538 ifTrue: [
            recoveredBlock148Local3 := recoveredBlock148Stack3.
            recoveredBlock148PC := 1541.
        ].
        recoveredBlock148Step = 1541 ifTrue: [
            recoveredBlock148Stack3 := recoveredBlock148Local9.
            recoveredBlock148PC := 1544.
        ].
        recoveredBlock148Step = 1544 ifTrue: [
            recoveredBlock148Stack4 := recoveredBlock148Local3.
            recoveredBlock148PC := 1547.
        ].
        recoveredBlock148Step = 1547 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) at: (recoveredBlock148Stack4).
            recoveredBlock148PC := 1549.
        ].
        recoveredBlock148Step = 1549 ifTrue: [
            recoveredBlock148Local2 := recoveredBlock148Stack3.
            recoveredBlock148PC := 1552.
        ].
        recoveredBlock148Step = 1552 ifTrue: [
            recoveredBlock148Stack3 := self.
            recoveredBlock148PC := 1553.
        ].
        recoveredBlock148Step = 1553 ifTrue: [
            recoveredBlock148Stack4 := [:recoveredBlock148Block1553Arg1 | 
    | recoveredBlock148Block1553Value0 recoveredBlock148Block1553Value1 recoveredBlock148Block1553Value2 recoveredBlock148Block1553Value3 |
    recoveredBlock148Block1553Value0 := recoveredBlock148Block1553Arg1.
    recoveredBlock148Block1553Value1 := recoveredBlock148Local2.
    recoveredBlock148Block1553Value2 := (recoveredBlock148Block1553Value1) value.
    recoveredBlock148Block1553Value3 := (recoveredBlock148Block1553Value0) setTextColor: (recoveredBlock148Block1553Value2).
    recoveredBlock148Block1553Value3
].
            recoveredBlock148PC := 1569.
        ].
        recoveredBlock148Step = 1569 ifTrue: [
            (recoveredBlock148Stack3) dcDo: (recoveredBlock148Stack4).
            recoveredBlock148PC := 1571.
        ].
        recoveredBlock148Step = 1571 ifTrue: [
            recoveredBlock148Stack3 := recoveredLocal11.
            recoveredBlock148PC := 1574.
        ].
        recoveredBlock148Step = 1574 ifTrue: [
            recoveredBlock148Stack4 := recoveredBlock148Local2.
            recoveredBlock148PC := 1577.
        ].
        recoveredBlock148Step = 1577 ifTrue: [
            recoveredBlock148Stack4 := (recoveredBlock148Stack4) key.
            recoveredBlock148PC := 1579.
        ].
        recoveredBlock148Step = 1579 ifTrue: [
            recoveredBlock148Stack4 := (recoveredBlock148Stack4) x.
            recoveredBlock148PC := 1581.
        ].
        recoveredBlock148Step = 1581 ifTrue: [
            recoveredBlock148Stack5 := 1.
            recoveredBlock148PC := 1583.
        ].
        recoveredBlock148Step = 1583 ifTrue: [
            recoveredBlock148Stack4 := (recoveredBlock148Stack4) max: (recoveredBlock148Stack5).
            recoveredBlock148PC := 1585.
        ].
        recoveredBlock148Step = 1585 ifTrue: [
            recoveredBlock148Stack5 := recoveredBlock148Local2.
            recoveredBlock148PC := 1588.
        ].
        recoveredBlock148Step = 1588 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) key.
            recoveredBlock148PC := 1590.
        ].
        recoveredBlock148Step = 1590 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) y.
            recoveredBlock148PC := 1592.
        ].
        recoveredBlock148Step = 1592 ifTrue: [
            recoveredBlock148Stack6 := recoveredLocal1.
            recoveredBlock148PC := 1595.
        ].
        recoveredBlock148Step = 1595 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) min: (recoveredBlock148Stack6).
            recoveredBlock148PC := 1597.
        ].
        recoveredBlock148Step = 1597 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) copyFrom: (recoveredBlock148Stack4) to: (recoveredBlock148Stack5).
            recoveredBlock148PC := 1599.
        ].
        recoveredBlock148Step = 1599 ifTrue: [
            recoveredBlock148Local4 := recoveredBlock148Stack3.
            recoveredBlock148PC := 1602.
        ].
        recoveredBlock148Step = 1602 ifTrue: [
            recoveredBlock148Stack3 := self.
            recoveredBlock148PC := 1603.
        ].
        recoveredBlock148Step = 1603 ifTrue: [
            recoveredBlock148Stack4 := recoveredBlock148Local4.
            recoveredBlock148PC := 1606.
        ].
        recoveredBlock148Step = 1606 ifTrue: [
            recoveredBlock148Stack5 := recoveredLocal8.
            recoveredBlock148PC := 1609.
        ].
        recoveredBlock148Step = 1609 ifTrue: [
            recoveredBlock148Stack6 := recoveredLocal7.
            recoveredBlock148PC := 1612.
        ].
        recoveredBlock148Step = 1612 ifTrue: [
            recoveredBlock148Stack7 := recoveredArg5.
            recoveredBlock148PC := 1615.
        ].
        recoveredBlock148Step = 1615 ifTrue: [
            (recoveredBlock148Stack3) drawText: (recoveredBlock148Stack4) x: (recoveredBlock148Stack5) y: (recoveredBlock148Stack6) blanked: (recoveredBlock148Stack7).
            recoveredBlock148PC := 1618.
        ].
        recoveredBlock148Step = 1618 ifTrue: [
            recoveredBlock148Stack3 := recoveredLocal11.
            recoveredBlock148PC := 1621.
        ].
        recoveredBlock148Step = 1621 ifTrue: [
            recoveredBlock148Stack4 := 1.
            recoveredBlock148PC := 1623.
        ].
        recoveredBlock148Step = 1623 ifTrue: [
            recoveredBlock148Stack5 := recoveredBlock148Local2.
            recoveredBlock148PC := 1626.
        ].
        recoveredBlock148Step = 1626 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) key.
            recoveredBlock148PC := 1628.
        ].
        recoveredBlock148Step = 1628 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) y.
            recoveredBlock148PC := 1630.
        ].
        recoveredBlock148Step = 1630 ifTrue: [
            recoveredBlock148Stack6 := recoveredLocal1.
            recoveredBlock148PC := 1633.
        ].
        recoveredBlock148Step = 1633 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) min: (recoveredBlock148Stack6).
            recoveredBlock148PC := 1635.
        ].
        recoveredBlock148Step = 1635 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) copyFrom: (recoveredBlock148Stack4) to: (recoveredBlock148Stack5).
            recoveredBlock148PC := 1637.
        ].
        recoveredBlock148Step = 1637 ifTrue: [
            recoveredBlock148Local4 := recoveredBlock148Stack3.
            recoveredBlock148PC := 1640.
        ].
        recoveredBlock148Step = 1640 ifTrue: [
            recoveredBlock148Stack3 := insetX.
            recoveredBlock148PC := 1642.
        ].
        recoveredBlock148Step = 1642 ifTrue: [
            recoveredBlock148Stack4 := self.
            recoveredBlock148PC := 1643.
        ].
        recoveredBlock148Step = 1643 ifTrue: [
            recoveredBlock148Stack5 := recoveredBlock148Local4.
            recoveredBlock148PC := 1646.
        ].
        recoveredBlock148Step = 1646 ifTrue: [
            recoveredBlock148Stack4 := (recoveredBlock148Stack4) pixelWidth: (recoveredBlock148Stack5).
            recoveredBlock148PC := 1648.
        ].
        recoveredBlock148Step = 1648 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) + (recoveredBlock148Stack4).
            recoveredBlock148PC := 1649.
        ].
        recoveredBlock148Step = 1649 ifTrue: [
            recoveredLocal8 := recoveredBlock148Stack3.
            recoveredBlock148PC := 1652.
        ].
        recoveredBlock148Step = 1652 ifTrue: [
            recoveredBlock148Stack3 := self.
            recoveredBlock148PC := 1653.
        ].
        recoveredBlock148Step = 1653 ifTrue: [
            recoveredBlock148Stack4 := [:recoveredBlock148Block1653Arg1 | 
    | recoveredBlock148Block1653Value0 recoveredBlock148Block1653Value1 recoveredBlock148Block1653Value2 |
    recoveredBlock148Block1653Value0 := recoveredBlock148Block1653Arg1.
    recoveredBlock148Block1653Value1 := (self) foreground.
    recoveredBlock148Block1653Value2 := (recoveredBlock148Block1653Value0) setTextColor: (recoveredBlock148Block1653Value1).
    recoveredBlock148Block1653Value2
].
            recoveredBlock148PC := 1667.
        ].
        recoveredBlock148Step = 1667 ifTrue: [
            (recoveredBlock148Stack3) dcDo: (recoveredBlock148Stack4).
            recoveredBlock148PC := 1669.
        ].
        recoveredBlock148Step = 1669 ifTrue: [
            recoveredBlock148Stack3 := recoveredBlock148Local2.
            recoveredBlock148PC := 1672.
        ].
        recoveredBlock148Step = 1672 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) key.
            recoveredBlock148PC := 1674.
        ].
        recoveredBlock148Step = 1674 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) y.
            recoveredBlock148PC := 1676.
        ].
        recoveredBlock148Step = 1676 ifTrue: [
            recoveredBlock148Stack4 := recoveredLocal1.
            recoveredBlock148PC := 1679.
        ].
        recoveredBlock148Step = 1679 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) < (recoveredBlock148Stack4).
            recoveredBlock148PC := 1680.
        ].
        recoveredBlock148Step = 1680 ifTrue: [
            (recoveredBlock148Stack3) ifTrue: [recoveredBlock148PC := 1684] ifFalse: [recoveredBlock148PC := 1785].
        ].
        recoveredBlock148Step = 1684 ifTrue: [
            recoveredBlock148Stack3 := recoveredLocal11.
            recoveredBlock148PC := 1687.
        ].
        recoveredBlock148Step = 1687 ifTrue: [
            recoveredBlock148Stack4 := recoveredBlock148Local2.
            recoveredBlock148PC := 1690.
        ].
        recoveredBlock148Step = 1690 ifTrue: [
            recoveredBlock148Stack4 := (recoveredBlock148Stack4) key.
            recoveredBlock148PC := 1692.
        ].
        recoveredBlock148Step = 1692 ifTrue: [
            recoveredBlock148Stack4 := (recoveredBlock148Stack4) y.
            recoveredBlock148PC := 1694.
        ].
        recoveredBlock148Step = 1694 ifTrue: [
            recoveredBlock148Stack4 := (recoveredBlock148Stack4) + (1).
            recoveredBlock148PC := 1695.
        ].
        recoveredBlock148Step = 1695 ifTrue: [
            recoveredBlock148Stack5 := recoveredBlock148Local3.
            recoveredBlock148PC := 1698.
        ].
        recoveredBlock148Step = 1698 ifTrue: [
            recoveredBlock148Stack6 := recoveredBlock148Local9.
            recoveredBlock148PC := 1701.
        ].
        recoveredBlock148Step = 1701 ifTrue: [
            recoveredBlock148Stack7 := recoveredBlock148Local7.
            recoveredBlock148PC := 1704.
        ].
        recoveredBlock148Step = 1704 ifTrue: [
            recoveredBlock148Stack6 := (recoveredBlock148Stack6) indexOf: (recoveredBlock148Stack7).
            recoveredBlock148PC := 1706.
        ].
        recoveredBlock148Step = 1706 ifTrue: [
            (recoveredBlock148Stack5 ~~ recoveredBlock148Stack6) ifTrue: [recoveredBlock148PC := 1716] ifFalse: [recoveredBlock148PC := 1710].
        ].
        recoveredBlock148Step = 1710 ifTrue: [
            recoveredBlock148Stack5 := recoveredLocal1.
            recoveredBlock148PC := 1713.
        ].
        recoveredBlock148Step = 1713 ifTrue: [
            recoveredBlock148PC := 1735.
        ].
        recoveredBlock148Step = 1716 ifTrue: [
            recoveredBlock148Stack5 := recoveredBlock148Local9.
            recoveredBlock148PC := 1719.
        ].
        recoveredBlock148Step = 1719 ifTrue: [
            recoveredBlock148Stack6 := recoveredBlock148Local3.
            recoveredBlock148PC := 1722.
        ].
        recoveredBlock148Step = 1722 ifTrue: [
            recoveredBlock148Stack6 := (recoveredBlock148Stack6) + (1).
            recoveredBlock148PC := 1723.
        ].
        recoveredBlock148Step = 1723 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) at: (recoveredBlock148Stack6).
            recoveredBlock148PC := 1725.
        ].
        recoveredBlock148Step = 1725 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) key.
            recoveredBlock148PC := 1727.
        ].
        recoveredBlock148Step = 1727 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) x.
            recoveredBlock148PC := 1729.
        ].
        recoveredBlock148Step = 1729 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) + (-1).
            recoveredBlock148PC := 1730.
        ].
        recoveredBlock148Step = 1730 ifTrue: [
            recoveredBlock148Stack6 := recoveredLocal1.
            recoveredBlock148PC := 1733.
        ].
        recoveredBlock148Step = 1733 ifTrue: [
            recoveredBlock148Stack5 := (recoveredBlock148Stack5) min: (recoveredBlock148Stack6).
            recoveredBlock148PC := 1735.
        ].
        recoveredBlock148Step = 1735 ifTrue: [
            recoveredBlock148Stack6 := recoveredBlock148Stack5.
            recoveredBlock148PC := 1736.
        ].
        recoveredBlock148Step = 1736 ifTrue: [
            recoveredBlock148Local5 := recoveredBlock148Stack6.
            recoveredBlock148PC := 1739.
        ].
        recoveredBlock148Step = 1739 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) copyFrom: (recoveredBlock148Stack4) to: (recoveredBlock148Stack5).
            recoveredBlock148PC := 1741.
        ].
        recoveredBlock148Step = 1741 ifTrue: [
            recoveredBlock148Local4 := recoveredBlock148Stack3.
            recoveredBlock148PC := 1744.
        ].
        recoveredBlock148Step = 1744 ifTrue: [
            recoveredBlock148Stack3 := self.
            recoveredBlock148PC := 1745.
        ].
        recoveredBlock148Step = 1745 ifTrue: [
            recoveredBlock148Stack4 := recoveredBlock148Local4.
            recoveredBlock148PC := 1748.
        ].
        recoveredBlock148Step = 1748 ifTrue: [
            recoveredBlock148Stack5 := recoveredLocal8.
            recoveredBlock148PC := 1751.
        ].
        recoveredBlock148Step = 1751 ifTrue: [
            recoveredBlock148Stack6 := recoveredLocal7.
            recoveredBlock148PC := 1754.
        ].
        recoveredBlock148Step = 1754 ifTrue: [
            recoveredBlock148Stack7 := recoveredArg5.
            recoveredBlock148PC := 1757.
        ].
        recoveredBlock148Step = 1757 ifTrue: [
            (recoveredBlock148Stack3) drawText: (recoveredBlock148Stack4) x: (recoveredBlock148Stack5) y: (recoveredBlock148Stack6) blanked: (recoveredBlock148Stack7).
            recoveredBlock148PC := 1760.
        ].
        recoveredBlock148Step = 1760 ifTrue: [
            recoveredBlock148Stack3 := recoveredLocal11.
            recoveredBlock148PC := 1763.
        ].
        recoveredBlock148Step = 1763 ifTrue: [
            recoveredBlock148Stack4 := 1.
            recoveredBlock148PC := 1765.
        ].
        recoveredBlock148Step = 1765 ifTrue: [
            recoveredBlock148Stack5 := recoveredBlock148Local5.
            recoveredBlock148PC := 1768.
        ].
        recoveredBlock148Step = 1768 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) copyFrom: (recoveredBlock148Stack4) to: (recoveredBlock148Stack5).
            recoveredBlock148PC := 1770.
        ].
        recoveredBlock148Step = 1770 ifTrue: [
            recoveredBlock148Local4 := recoveredBlock148Stack3.
            recoveredBlock148PC := 1773.
        ].
        recoveredBlock148Step = 1773 ifTrue: [
            recoveredBlock148Stack3 := insetX.
            recoveredBlock148PC := 1775.
        ].
        recoveredBlock148Step = 1775 ifTrue: [
            recoveredBlock148Stack4 := self.
            recoveredBlock148PC := 1776.
        ].
        recoveredBlock148Step = 1776 ifTrue: [
            recoveredBlock148Stack5 := recoveredBlock148Local4.
            recoveredBlock148PC := 1779.
        ].
        recoveredBlock148Step = 1779 ifTrue: [
            recoveredBlock148Stack4 := (recoveredBlock148Stack4) pixelWidth: (recoveredBlock148Stack5).
            recoveredBlock148PC := 1781.
        ].
        recoveredBlock148Step = 1781 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) + (recoveredBlock148Stack4).
            recoveredBlock148PC := 1782.
        ].
        recoveredBlock148Step = 1782 ifTrue: [
            recoveredLocal8 := recoveredBlock148Stack3.
            recoveredBlock148PC := 1785.
        ].
        recoveredBlock148Step = 1785 ifTrue: [
            recoveredBlock148Stack3 := nil.
            recoveredBlock148PC := 1786.
        ].
        recoveredBlock148Step = 1786 ifTrue: [
            recoveredBlock148Local2 := recoveredBlock148Stack3.
            recoveredBlock148PC := 1789.
        ].
        recoveredBlock148Step = 1789 ifTrue: [
            (recoveredBlock148Stack1 isInteger and: [recoveredBlock148Stack2 isInteger]) ifTrue: [(recoveredBlock148Stack2 + 1 <= recoveredBlock148Stack1) ifTrue: [recoveredBlock148Stack2 := recoveredBlock148Stack2 + 1. recoveredBlock148Stack3 := recoveredBlock148Stack2. recoveredBlock148PC := 1538] ifFalse: [recoveredBlock148PC := 1820]] ifFalse: [recoveredBlock148PC := 1793].
        ].
        recoveredBlock148Step = 1793 ifTrue: [
            recoveredBlock148Local3 := recoveredBlock148Stack2.
            recoveredBlock148PC := 1796.
        ].
        recoveredBlock148Step = 1796 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Stack1.
            recoveredBlock148PC := 1797.
        ].
        recoveredBlock148Step = 1797 ifTrue: [
            recoveredBlock148Stack3 := recoveredBlock148Local3.
            recoveredBlock148PC := 1800.
        ].
        recoveredBlock148Step = 1800 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) + (1).
            recoveredBlock148PC := 1801.
        ].
        recoveredBlock148Step = 1801 ifTrue: [
            recoveredBlock148Stack4 := recoveredBlock148Stack3.
            recoveredBlock148PC := 1802.
        ].
        recoveredBlock148Step = 1802 ifTrue: [
            recoveredBlock148Local3 := recoveredBlock148Stack4.
            recoveredBlock148PC := 1805.
        ].
        recoveredBlock148Step = 1805 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) < (recoveredBlock148Stack3).
            recoveredBlock148PC := 1806.
        ].
        recoveredBlock148Step = 1806 ifTrue: [
            (recoveredBlock148Stack2) ifTrue: [recoveredBlock148PC := 1816] ifFalse: [recoveredBlock148PC := 1810].
        ].
        recoveredBlock148Step = 1810 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Local3.
            recoveredBlock148PC := 1813.
        ].
        recoveredBlock148Step = 1813 ifTrue: [
            recoveredBlock148PC := 1541.
        ].
        recoveredBlock148Step = 1816 ifTrue: [
            recoveredBlock148Stack2 := nil.
            recoveredBlock148PC := 1817.
        ].
        recoveredBlock148Step = 1817 ifTrue: [
            recoveredBlock148Local3 := recoveredBlock148Stack2.
            recoveredBlock148PC := 1820.
        ].
        recoveredBlock148Step = 1820 ifTrue: [
            recoveredBlock148Stack2 := nil.
            recoveredBlock148PC := 1821.
        ].
        recoveredBlock148Step = 1821 ifTrue: [
            recoveredBlock148Local4 := recoveredBlock148Stack2.
            recoveredBlock148PC := 1824.
        ].
        recoveredBlock148Step = 1824 ifTrue: [
            recoveredBlock148PC := 1864.
        ].
        recoveredBlock148Step = 1828 ifTrue: [
            recoveredBlock148Stack1 := recoveredLocal11.
            recoveredBlock148PC := 1831.
        ].
        recoveredBlock148Step = 1831 ifTrue: [
            recoveredBlock148Stack2 := 1.
            recoveredBlock148PC := 1833.
        ].
        recoveredBlock148Step = 1833 ifTrue: [
            recoveredBlock148Stack3 := recoveredLocal1.
            recoveredBlock148PC := 1836.
        ].
        recoveredBlock148Step = 1836 ifTrue: [
            recoveredBlock148Stack4 := recoveredLocal11.
            recoveredBlock148PC := 1839.
        ].
        recoveredBlock148Step = 1839 ifTrue: [
            recoveredBlock148Stack4 := (recoveredBlock148Stack4) size.
            recoveredBlock148PC := 1841.
        ].
        recoveredBlock148Step = 1841 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) min: (recoveredBlock148Stack4).
            recoveredBlock148PC := 1843.
        ].
        recoveredBlock148Step = 1843 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) copyFrom: (recoveredBlock148Stack2) to: (recoveredBlock148Stack3).
            recoveredBlock148PC := 1845.
        ].
        recoveredBlock148Step = 1845 ifTrue: [
            recoveredLocal10 := recoveredBlock148Stack1.
            recoveredBlock148PC := 1848.
        ].
        recoveredBlock148Step = 1848 ifTrue: [
            recoveredBlock148Stack1 := self.
            recoveredBlock148PC := 1849.
        ].
        recoveredBlock148Step = 1849 ifTrue: [
            recoveredBlock148Stack2 := recoveredLocal10.
            recoveredBlock148PC := 1852.
        ].
        recoveredBlock148Step = 1852 ifTrue: [
            recoveredBlock148Stack3 := recoveredLocal8.
            recoveredBlock148PC := 1855.
        ].
        recoveredBlock148Step = 1855 ifTrue: [
            recoveredBlock148Stack4 := recoveredLocal7.
            recoveredBlock148PC := 1858.
        ].
        recoveredBlock148Step = 1858 ifTrue: [
            recoveredBlock148Stack5 := recoveredArg5.
            recoveredBlock148PC := 1861.
        ].
        recoveredBlock148Step = 1861 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) drawText: (recoveredBlock148Stack2) x: (recoveredBlock148Stack3) y: (recoveredBlock148Stack4) blanked: (recoveredBlock148Stack5).
            recoveredBlock148PC := 1864.
        ].
        recoveredBlock148Step = 1864 ifTrue: [
            recoveredBlock148Result := recoveredBlock148Stack1.
            recoveredBlock148Done := true.
        ].
    ].
    recoveredBlock148Result
].
            recoveredPC := 1865.
        ].
        recoveredStep = 1865 ifTrue: [
            (recoveredStack0) graphicsDo: (recoveredStack1).
            recoveredPC := 1867.
        ].
        recoveredStep = 1867 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1868.
        ].
        recoveredStep = 1868 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

