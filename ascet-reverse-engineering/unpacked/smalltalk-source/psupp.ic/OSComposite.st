"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20000050; bytecode file offset 0x153a14"
!OSComposite methodsFor: 'recovered'!
updateSubclass
    ^self
! !

"psupp.ic method 0x20000430; bytecode file offset 0x153ccc"
!OSComposite methodsFor: 'recovered'!
wmErasebkgnd: recoveredArg1 with: recoveredArg2
    ^true
! !

"psupp.ic method 0x20000e7c; bytecode file offset 0x154714"
!OSComposite methodsFor: 'recovered'!
size
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := children.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"psupp.ic method 0x20009874; bytecode file offset 0x15d148"
!OSComposite methodsFor: 'recovered'!
children
    | recoveredValue0 |
    recoveredValue0 := children.
    ^recoveredValue0
! !

"psupp.ic method 0x200098d8; bytecode file offset 0x15d1ac"
!OSComposite methodsFor: 'recovered'!
font
    | recoveredValue0 |
    recoveredValue0 := font.
    ^recoveredValue0
! !

"psupp.ic method 0x20009974; bytecode file offset 0x15d208"
!OSComposite methodsFor: 'recovered'!
tileBitmap
    | recoveredValue0 |
    recoveredValue0 := tileBitmap.
    ^recoveredValue0
! !

"psupp.ic method 0x200099b8; bytecode file offset 0x15d24c"
!OSComposite methodsFor: 'recovered'!
noBackground
    | recoveredValue0 |
    recoveredValue0 := noBackground.
    ^recoveredValue0
! !

"psupp.ic method 0x20009c94; bytecode file offset 0x15d540"
!OSComposite methodsFor: 'recovered'!
isComposite
    ^true
! !

"psupp.ic method 0x20009d30; bytecode file offset 0x15d65c"
!OSComposite methodsFor: 'recovered'!
isSubclassRequired
    ^false
! !

"psupp.ic method 0x2000a87c; bytecode file offset 0x15e120"
!OSComposite methodsFor: 'recovered'!
removeIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := children.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) removeAtIndex: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20019898; bytecode file offset 0x16d130"
!OSComposite methodsFor: 'recovered'!
tileBitmap: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tileBitmap := recoveredValue0.
    (self) redraw.
    ^self
! !

"psupp.ic method 0x2001a52c; bytecode file offset 0x16dddc"
!OSComposite methodsFor: 'recovered'!
indexOf: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := children.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) indexOf: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2001a544; bytecode file offset 0x16dddc"
!OSComposite methodsFor: 'recovered'!
remove: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := children.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) remove: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2001e25c; bytecode file offset 0x171af8"
!OSComposite methodsFor: 'recovered'!
children: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    children := recoveredValue0.
    ^self
! !

"psupp.ic method 0x2001e2d8; bytecode file offset 0x171b74"
!OSComposite methodsFor: 'recovered'!
noBackground: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    noBackground := recoveredValue0.
    ^self
! !

"psupp.ic method 0x20021e54; bytecode file offset 0x1756f4"
!OSComposite methodsFor: 'recovered'!
releaseChild
    (self) children: (nil).
    super releaseChild.
    ^self
! !

"psupp.ic method 0x20029180; bytecode file offset 0x17ca20"
!OSComposite methodsFor: 'recovered'!
font: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    font := recoveredValue1.
    super font: (recoveredValue0).
    (self) redraw.
    ^self
! !

"psupp.ic method 0x2002a1b0; bytecode file offset 0x17da50"
!OSComposite methodsFor: 'recovered'!
showIfNecessary
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := children.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block28020d0cArg1 | 
    | block28020d0cValue0 block28020d0cValue1 |
    block28020d0cValue0 := block28020d0cArg1.
    block28020d0cValue1 := (block28020d0cValue0) showIfNecessary.
    block28020d0cValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x2002b934; bytecode file offset 0x17f1f8"
!OSComposite methodsFor: 'recovered'!
wmRbuttondown: recoveredArg1 with: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) activateShell.
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
            recoveredStack0 := (recoveredStack0) menuShell.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) bringToTop.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := super wmRbuttondown: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x2002b950; bytecode file offset 0x17f1f8"
!OSComposite methodsFor: 'recovered'!
wmMbuttondown: recoveredArg1 with: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) activateShell.
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
            recoveredStack0 := (recoveredStack0) menuShell.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) bringToTop.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := super wmMbuttondown: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x2002bf7c; bytecode file offset 0x17f820"
!OSComposite methodsFor: 'recovered'!
isTabItem
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1G4CZE9'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) hooksKeys.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := children.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"psupp.ic method 0x2002c350; bytecode file offset 0x17fc04"
!OSComposite methodsFor: 'recovered'!
wmSize: recoveredArg1 with: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) hooksExpose.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) redrawAll.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x2002cd0c; bytecode file offset 0x1805bc"
!OSComposite methodsFor: 'recovered'!
callWindowProc: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := handle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := handle.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) defWindowProc: (recoveredStack2) wParam: (recoveredStack3) lParam: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"psupp.ic method 0x2002d400; bytecode file offset 0x180ca8"
!OSComposite methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    super initialize.
    recoveredValue0 := DefaultFont.
    font := recoveredValue0.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    children := recoveredValue2.
    noBackground := false.
    ^self
! !

"psupp.ic method 0x2002ed4c; bytecode file offset 0x1825f0"
!OSComposite methodsFor: 'recovered'!
resizeChildren
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := children.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block28020e2cArg1 | 
    | block28020e2cStack0 block28020e2cStack1 block28020e2cStack2 block28020e2cStack3 block28020e2cPC block28020e2cStep block28020e2cDone block28020e2cResult |
    block28020e2cStack0 := self.
    block28020e2cPC := 4.
    block28020e2cDone := false.
    [block28020e2cDone not] whileTrue: [
        block28020e2cStep := block28020e2cPC.
        block28020e2cStep = 4 ifTrue: [
            block28020e2cStack1 := nil.
            block28020e2cPC := 5.
        ].
        block28020e2cStep = 5 ifTrue: [
            block28020e2cStack2 := block28020e2cArg1.
            block28020e2cPC := 6.
        ].
        block28020e2cStep = 6 ifTrue: [
            block28020e2cStack2 := (block28020e2cStack2) isShell.
            block28020e2cPC := 7.
        ].
        block28020e2cStep = 7 ifTrue: [
            (block28020e2cStack2) ifTrue: [block28020e2cPC := 13] ifFalse: [block28020e2cPC := 10].
        ].
        block28020e2cStep = 10 ifTrue: [
            block28020e2cPC := 11.
        ].
        block28020e2cStep = 11 ifTrue: [
            block28020e2cStack1 := block28020e2cArg1.
            block28020e2cPC := 12.
        ].
        block28020e2cStep = 12 ifTrue: [
            block28020e2cStack1 := (block28020e2cStack1) resize.
            block28020e2cPC := 13.
        ].
        block28020e2cStep = 13 ifTrue: [
            block28020e2cResult := block28020e2cStack1.
            block28020e2cDone := true.
        ].
    ].
    block28020e2cResult
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x2002f0ec; bytecode file offset 0x182988"
!OSComposite methodsFor: 'recovered'!
add: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := children.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x2002fbe0; bytecode file offset 0x18347c"
!OSComposite methodsFor: 'recovered'!
add: recoveredArg1 afterIndex: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := children.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) afterIndex: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x20030014; bytecode file offset 0x1838ac"
!OSComposite methodsFor: 'recovered'!
isDefaultBackground
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := tileBitmap.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := background.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := background.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := parent.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) background.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"psupp.ic method 0x200301b4; bytecode file offset 0x183a5c"
!OSComposite methodsFor: 'recovered'!
releaseWidget
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super releaseWidget.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := children.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block28020f04Arg1 | 
    | block28020f04Value0 block28020f04Value1 block28020f04Value2 |
    block28020f04Value0 := block28020f04Arg1.
    block28020f04Value1 := block28020f04Value0.
    (block28020f04Value1) releaseWidget.
    block28020f04Value2 := (block28020f04Value0) handle: (nil).
    block28020f04Value2
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"psupp.ic method 0x200308bc; bytecode file offset 0x184164"
!OSComposite methodsFor: 'recovered'!
resizeAllChildren
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) multiResizeChildren.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := children.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := [:block28020f28Arg1 | 
    | block28020f28Stack0 block28020f28Stack1 block28020f28Stack2 block28020f28Stack3 block28020f28PC block28020f28Step block28020f28Done block28020f28Result |
    block28020f28Stack0 := self.
    block28020f28PC := 4.
    block28020f28Done := false.
    [block28020f28Done not] whileTrue: [
        block28020f28Step := block28020f28PC.
        block28020f28Step = 4 ifTrue: [
            block28020f28Stack1 := nil.
            block28020f28PC := 5.
        ].
        block28020f28Step = 5 ifTrue: [
            block28020f28Stack2 := block28020f28Arg1.
            block28020f28PC := 6.
        ].
        block28020f28Step = 6 ifTrue: [
            block28020f28Stack2 := (block28020f28Stack2) isShell.
            block28020f28PC := 7.
        ].
        block28020f28Step = 7 ifTrue: [
            (block28020f28Stack2) ifTrue: [block28020f28PC := 13] ifFalse: [block28020f28PC := 10].
        ].
        block28020f28Step = 10 ifTrue: [
            block28020f28PC := 11.
        ].
        block28020f28Step = 11 ifTrue: [
            block28020f28Stack1 := block28020f28Arg1.
            block28020f28PC := 12.
        ].
        block28020f28Step = 12 ifTrue: [
            block28020f28Stack1 := (block28020f28Stack1) resizeAllChildren.
            block28020f28PC := 13.
        ].
        block28020f28Step = 13 ifTrue: [
            block28020f28Result := block28020f28Stack1.
            block28020f28Done := true.
        ].
    ].
    block28020f28Result
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"psupp.ic method 0x20030aa0; bytecode file offset 0x184348"
!OSComposite methodsFor: 'recovered'!
wmPaint: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('PR') = ('1EYYOG1').
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    (self) drawBackground: (recoveredBlock10Value0).
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (self) exposeOSRect: (recoveredBlock10Value1).
    recoveredBlock10Value2
].
    (self) paintDo: (recoveredValue1).
    ^1
! !

"psupp.ic method 0x20031518; bytecode file offset 0x184dc0"
!OSComposite methodsFor: 'recovered'!
updateSubclassing
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super updateSubclassing.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := children.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block28020fb8Arg1 | 
    | block28020fb8Stack0 block28020fb8Stack1 block28020fb8Stack2 block28020fb8Stack3 block28020fb8PC block28020fb8Step block28020fb8Done block28020fb8Result |
    block28020fb8Stack0 := self.
    block28020fb8PC := 4.
    block28020fb8Done := false.
    [block28020fb8Done not] whileTrue: [
        block28020fb8Step := block28020fb8PC.
        block28020fb8Step = 4 ifTrue: [
            block28020fb8Stack1 := nil.
            block28020fb8PC := 5.
        ].
        block28020fb8Step = 5 ifTrue: [
            block28020fb8Stack2 := block28020fb8Arg1.
            block28020fb8PC := 6.
        ].
        block28020fb8Step = 6 ifTrue: [
            block28020fb8Stack2 := (block28020fb8Stack2) isShell.
            block28020fb8PC := 7.
        ].
        block28020fb8Step = 7 ifTrue: [
            (block28020fb8Stack2) ifTrue: [block28020fb8PC := 13] ifFalse: [block28020fb8PC := 10].
        ].
        block28020fb8Step = 10 ifTrue: [
            block28020fb8PC := 11.
        ].
        block28020fb8Step = 11 ifTrue: [
            block28020fb8Stack1 := block28020fb8Arg1.
            block28020fb8PC := 12.
        ].
        block28020fb8Step = 12 ifTrue: [
            block28020fb8Stack1 := (block28020fb8Stack1) updateSubclassing.
            block28020fb8PC := 13.
        ].
        block28020fb8Step = 13 ifTrue: [
            block28020fb8Result := block28020fb8Stack1.
            block28020fb8Done := true.
        ].
    ].
    block28020fb8Result
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x20031670; bytecode file offset 0x184f10"
!OSComposite methodsFor: 'recovered'!
inOrderDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super inOrderDo: (recoveredValue0).
    recoveredValue1 := children.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredArg1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) inOrderDo: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x200325f8; bytecode file offset 0x185eac"
!OSComposite methodsFor: 'recovered'!
setBasicStyle: recoveredArg1
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
            super setBasicStyle: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := OSxNOBACKGROUND.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := OSxNOBACKGROUND.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) noBackground: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) noBackground.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := WsClipchildren.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) clearStyleBits: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x200331e4; bytecode file offset 0x186a94"
!OSComposite methodsFor: 'recovered'!
hide
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super hide.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:block28021000Arg1 | 
    | block28021000Stack0 block28021000Stack1 block28021000Stack2 block28021000Stack3 block28021000PC block28021000Step block28021000Done block28021000Result |
    block28021000Stack0 := self.
    block28021000PC := 4.
    block28021000Done := false.
    [block28021000Done not] whileTrue: [
        block28021000Step := block28021000PC.
        block28021000Step = 4 ifTrue: [
            block28021000Stack1 := nil.
            block28021000PC := 5.
        ].
        block28021000Step = 5 ifTrue: [
            block28021000Stack2 := block28021000Arg1.
            block28021000PC := 6.
        ].
        block28021000Step = 6 ifTrue: [
            block28021000Stack2 := (block28021000Stack2) isComboBox.
            block28021000PC := 7.
        ].
        block28021000Step = 7 ifTrue: [
            (block28021000Stack2) ifTrue: [block28021000PC := 10] ifFalse: [block28021000PC := 20].
        ].
        block28021000Step = 10 ifTrue: [
            block28021000Stack2 := block28021000Arg1.
            block28021000PC := 11.
        ].
        block28021000Step = 11 ifTrue: [
            block28021000Stack2 := (block28021000Stack2) isDropped.
            block28021000PC := 13.
        ].
        block28021000Step = 13 ifTrue: [
            (block28021000Stack2) ifTrue: [block28021000PC := 16] ifFalse: [block28021000PC := 20].
        ].
        block28021000Step = 16 ifTrue: [
            block28021000PC := 17.
        ].
        block28021000Step = 17 ifTrue: [
            block28021000Stack1 := block28021000Arg1.
            block28021000PC := 18.
        ].
        block28021000Step = 18 ifTrue: [
            block28021000Stack1 := (block28021000Stack1) fixDropDown.
            block28021000PC := 20.
        ].
        block28021000Step = 20 ifTrue: [
            block28021000Result := block28021000Stack1.
            block28021000Done := true.
        ].
    ].
    block28021000Result
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) inOrderDo: (recoveredStack1).
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

"psupp.ic method 0x2003322c; bytecode file offset 0x186ad0"
!OSComposite methodsFor: 'recovered'!
setFocus
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := children.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isTabItem.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 18] ifFalse: [recoveredBlock6PC := 27].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) setFocus.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 24] ifFalse: [recoveredBlock6PC := 27].
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack1 := true.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := super setFocus.
    ^recoveredValue2
! !

"psupp.ic method 0x2003385c; bytecode file offset 0x187100"
!OSComposite methodsFor: 'recovered'!
isTabGroup
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super isTabGroup.
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
            recoveredStack0 := children.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
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
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) isTabItem.
            recoveredBlock16PC := 25.
        ].
        recoveredBlock16Step = 25 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 28] ifFalse: [recoveredBlock16PC := 31].
        ].
        recoveredBlock16Step = 28 ifTrue: [
            recoveredBlock16PC := 29.
        ].
        recoveredBlock16Step = 29 ifTrue: [
            recoveredBlock16Stack1 := true.
            recoveredBlock16PC := 30.
        ].
        recoveredBlock16Step = 30 ifTrue: [
            ^recoveredBlock16Stack1
        ].
        recoveredBlock16Step = 31 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x20033cc4; bytecode file offset 0x187568"
!OSComposite methodsFor: 'recovered'!
active: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super active: (recoveredValue0).
    recoveredValue1 := children.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isShell.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 32] ifFalse: [recoveredBlock13PC := 26].
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Stack2 := recoveredArg1.
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) active: (recoveredBlock13Stack2).
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x20033d90; bytecode file offset 0x187634"
!OSComposite methodsFor: 'recovered'!
tabList
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super tabList.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := children.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value1) tabList.
    recoveredBlock13Value3 := (recoveredBlock13Value0) , (recoveredBlock13Value2).
    recoveredBlock13Value4 := recoveredBlock13Value3.
    recoveredLocal1 := recoveredBlock13Value4.
    recoveredBlock13Value3
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"psupp.ic method 0x2003543c; bytecode file offset 0x188cdc"
!OSComposite methodsFor: 'recovered'!
setTabGroupFocus
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isTabItem.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) setTabItemFocus.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := children.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isTabItem.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 26] ifFalse: [recoveredBlock13PC := 35].
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) setTabItemFocus.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 32] ifFalse: [recoveredBlock13PC := 35].
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13Stack1 := true.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            ^recoveredBlock13Stack1
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) setTabItemFocus.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x20038970; bytecode file offset 0x18c220"
!OSComposite methodsFor: 'recovered'!
redrawBackground
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredStack1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 recoveredBlock11Value7 |
    recoveredBlock11Value0 := OSRect.
    recoveredBlock11Value1 := (recoveredBlock11Value0) new.
    recoveredBlock11Value2 := recoveredBlock11Value1.
    recoveredLocal1 := recoveredBlock11Value2.
    recoveredBlock11Value3 := width.
    recoveredBlock11Value4 := height.
    (recoveredBlock11Value1) setRect: (0) nTop: (0) nRight: (recoveredBlock11Value3) nBottom: (recoveredBlock11Value4).
    recoveredBlock11Value5 := recoveredLocal1.
    (self) drawBackground: (recoveredBlock11Value5).
    recoveredBlock11Value6 := recoveredLocal1.
    recoveredBlock11Value7 := (self) exposeOSRect: (recoveredBlock11Value6).
    recoveredBlock11Value7
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) clippedDCDo: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x2003b360; bytecode file offset 0x18ec18"
!OSComposite methodsFor: 'recovered'!
wmLbuttondown: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) activateShell.
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
            recoveredStack0 := (recoveredStack0) menuShell.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) bringToTop.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := super wmLbuttondown: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := handle.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := children.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) isActiveShell.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) activateShell.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) setFocus.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x2003cb70; bytecode file offset 0x19042c"
!OSComposite methodsFor: 'recovered'!
drawBackground: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1EYYOG1'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := noBackground.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDefaultBackground.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := children.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := children.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [:block2802121cArg1 | 
    | block2802121cValue0 block2802121cValue1 |
    block2802121cValue0 := block2802121cArg1.
    block2802121cValue1 := (block2802121cValue0) isVisible.
    block2802121cValue1
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) conform: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := tileBitmap.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            super drawBackground: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) drawBackgroundBitmap: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x2003d8ec; bytecode file offset 0x1911ac"
!OSComposite methodsFor: 'recovered'!
create: recoveredArg1 withStyle: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := OSShell.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2) withStyle: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := OSMenu.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) menuShell.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2) withStyle: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) withStyle: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) isDecorationShell.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) withStyle: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) createCalculationShell: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x2003ebc8; bytecode file offset 0x192490"
!OSComposite methodsFor: 'recovered'!
paintDo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1EYYOG1'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := children.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := super paintDo: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClipChildren.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := super paintDo: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := OSObject.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) interrupts: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := handle.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := GwlStyle.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) getWindowLong: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := WsClipchildren.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitOr: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := handle.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := GwlStyle.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) setWindowLong: (recoveredStack1) nVal: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            super paintDo: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := handle.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := GwlStyle.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) setWindowLong: (recoveredStack1) nVal: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := OSObject.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) interrupts: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x2003fb68; bytecode file offset 0x193430"
!OSComposite methodsFor: 'recovered'!
drawBackgroundBitmap8x8: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 recoveredBlock4Value9 recoveredBlock4Value10 recoveredBlock4Value11 recoveredBlock4Value12 recoveredBlock4Value13 recoveredBlock4Value14 recoveredBlock4Value15 recoveredBlock4Value16 recoveredBlock4Value17 recoveredBlock4Value18 recoveredBlock4Value19 recoveredBlock4Value20 recoveredBlock4Value21 recoveredBlock4Value22 recoveredBlock4Value23 |
    recoveredBlock4Value0 := tileBitmap.
    recoveredBlock4Value1 := (recoveredBlock4Value0) createPatternBrush.
    recoveredLocal3 := recoveredBlock4Value1.
    recoveredBlock4Value2 := handle.
    recoveredBlock4Value3 := OSPoint.
    recoveredBlock4Value4 := (recoveredBlock4Value3) new.
    recoveredBlock4Value5 := recoveredBlock4Value4.
    recoveredLocal1 := recoveredBlock4Value5.
    (recoveredBlock4Value2) clientToScreen: (recoveredBlock4Value4).
    recoveredBlock4Value6 := recoveredLocal3.
    (recoveredBlock4Value6) unrealizeObject.
    recoveredBlock4Value7 := recoveredBlock4Arg1.
    recoveredBlock4Value8 := recoveredLocal1.
    recoveredBlock4Value9 := (recoveredBlock4Value8) x.
    recoveredBlock4Value10 := recoveredLocal1.
    recoveredBlock4Value11 := (recoveredBlock4Value10) y.
    recoveredBlock4Value12 := recoveredLocal1.
    (recoveredBlock4Value7) setBrushOrgEx: (recoveredBlock4Value9) nYOrg: (recoveredBlock4Value11) lppt: (recoveredBlock4Value12).
    recoveredBlock4Value13 := recoveredBlock4Arg1.
    recoveredBlock4Value14 := recoveredLocal3.
    recoveredBlock4Value15 := (recoveredBlock4Value13) selectObject: (recoveredBlock4Value14).
    recoveredLocal2 := recoveredBlock4Value15.
    recoveredBlock4Value16 := recoveredBlock4Arg1.
    recoveredBlock4Value17 := width.
    recoveredBlock4Value18 := height.
    recoveredBlock4Value19 := Patcopy.
    (recoveredBlock4Value16) patBlt: (0) nTopRect: (0) nwidth: (recoveredBlock4Value17) nheight: (recoveredBlock4Value18) fdwRop: (recoveredBlock4Value19).
    recoveredBlock4Value20 := recoveredBlock4Arg1.
    recoveredBlock4Value21 := recoveredLocal2.
    (recoveredBlock4Value20) selectObject: (recoveredBlock4Value21).
    recoveredBlock4Value22 := recoveredLocal3.
    recoveredBlock4Value23 := (recoveredBlock4Value22) deleteObject.
    recoveredBlock4Value23
].
    (self) dcDo: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20042454; bytecode file offset 0x195d1c"
!OSComposite methodsFor: 'recovered'!
multiResizeChildren
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := children.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := OSHdwp.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) beginDeferWindowPos: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNull.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) resizeChildren.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := children.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38Stack4 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := nil.
            recoveredBlock38PC := 45.
        ].
        recoveredBlock38Step = 45 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 46.
        ].
        recoveredBlock38Step = 46 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) isShell.
            recoveredBlock38PC := 48.
        ].
        recoveredBlock38Step = 48 ifTrue: [
            (recoveredBlock38Stack2) ifTrue: [recoveredBlock38PC := 73] ifFalse: [recoveredBlock38PC := 52].
        ].
        recoveredBlock38Step = 52 ifTrue: [
            recoveredBlock38PC := 53.
        ].
        recoveredBlock38Step = 53 ifTrue: [
            recoveredBlock38Stack1 := nil.
            recoveredBlock38PC := 54.
        ].
        recoveredBlock38Step = 54 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 55.
        ].
        recoveredBlock38Step = 55 ifTrue: [
            recoveredBlock38Stack3 := recoveredLocal1.
            recoveredBlock38PC := 58.
        ].
        recoveredBlock38Step = 58 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) resizeInto: (recoveredBlock38Stack3).
            recoveredBlock38PC := 60.
        ].
        recoveredBlock38Step = 60 ifTrue: [
            recoveredBlock38Stack3 := recoveredBlock38Stack2.
            recoveredBlock38PC := 61.
        ].
        recoveredBlock38Step = 61 ifTrue: [
            recoveredLocal1 := recoveredBlock38Stack3.
            recoveredBlock38PC := 64.
        ].
        recoveredBlock38Step = 64 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) isNull.
            recoveredBlock38PC := 65.
        ].
        recoveredBlock38Step = 65 ifTrue: [
            (recoveredBlock38Stack2) ifTrue: [recoveredBlock38PC := 68] ifFalse: [recoveredBlock38PC := 73].
        ].
        recoveredBlock38Step = 68 ifTrue: [
            recoveredBlock38PC := 69.
        ].
        recoveredBlock38Step = 69 ifTrue: [
            recoveredBlock38Stack1 := self.
            recoveredBlock38PC := 70.
        ].
        recoveredBlock38Step = 70 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) resizeChildren.
            recoveredBlock38PC := 72.
        ].
        recoveredBlock38Step = 72 ifTrue: [
            ^recoveredBlock38Stack1
        ].
        recoveredBlock38Step = 73 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack1.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := children.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := [:block280212f4Arg1 | 
    | block280212f4Value0 block280212f4Value1 |
    block280212f4Value0 := block280212f4Arg1.
    block280212f4Value1 := (block280212f4Value0) preResize.
    block280212f4Value1
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) endDeferWindowPos.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := children.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := [:block28021318Arg1 | 
    | block28021318Value0 block28021318Value1 |
    block28021318Value0 := block28021318Arg1.
    block28021318Value1 := (block28021318Value0) postResize.
    block28021318Value1
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x2004857c; bytecode file offset 0x19be38"
!OSComposite methodsFor: 'recovered'!
drawBackgroundBitmap: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := tileBitmap.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitmapExtent: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawBackgroundBitmap8x8: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Stack0 recoveredBlock51Stack1 recoveredBlock51Stack2 recoveredBlock51Stack3 recoveredBlock51Stack4 recoveredBlock51Stack5 recoveredBlock51Stack6 recoveredBlock51Stack7 recoveredBlock51Stack8 recoveredBlock51Stack9 recoveredBlock51Stack10 recoveredBlock51PC recoveredBlock51Step recoveredBlock51Done recoveredBlock51Result |
    recoveredBlock51Stack0 := self.
    recoveredBlock51PC := 58.
    recoveredBlock51Done := false.
    [recoveredBlock51Done not] whileTrue: [
        recoveredBlock51Step := recoveredBlock51PC.
        recoveredBlock51Step = 58 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 59.
        ].
        recoveredBlock51Step = 59 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) createCompatibleDC.
            recoveredBlock51PC := 61.
        ].
        recoveredBlock51Step = 61 ifTrue: [
            recoveredLocal7 := recoveredBlock51Stack1.
            recoveredBlock51PC := 64.
        ].
        recoveredBlock51Step = 64 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal7.
            recoveredBlock51PC := 67.
        ].
        recoveredBlock51Step = 67 ifTrue: [
            recoveredBlock51Stack2 := tileBitmap.
            recoveredBlock51PC := 69.
        ].
        recoveredBlock51Step = 69 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) selectObject: (recoveredBlock51Stack2).
            recoveredBlock51PC := 71.
        ].
        recoveredBlock51Step = 71 ifTrue: [
            recoveredLocal6 := recoveredBlock51Stack1.
            recoveredBlock51PC := 74.
        ].
        recoveredBlock51Step = 74 ifTrue: [
            recoveredBlock51Stack1 := 0.
            recoveredBlock51PC := 76.
        ].
        recoveredBlock51Step = 76 ifTrue: [
            recoveredLocal3 := recoveredBlock51Stack1.
            recoveredBlock51PC := 79.
        ].
        recoveredBlock51Step = 79 ifTrue: [
            recoveredBlock51PC := 143.
        ].
        recoveredBlock51Step = 82 ifTrue: [
            recoveredBlock51Stack1 := 0.
            recoveredBlock51PC := 84.
        ].
        recoveredBlock51Step = 84 ifTrue: [
            recoveredLocal4 := recoveredBlock51Stack1.
            recoveredBlock51PC := 87.
        ].
        recoveredBlock51Step = 87 ifTrue: [
            recoveredBlock51PC := 125.
        ].
        recoveredBlock51Step = 90 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 91.
        ].
        recoveredBlock51Step = 91 ifTrue: [
            recoveredBlock51Stack2 := recoveredLocal4.
            recoveredBlock51PC := 94.
        ].
        recoveredBlock51Step = 94 ifTrue: [
            recoveredBlock51Stack3 := recoveredLocal3.
            recoveredBlock51PC := 97.
        ].
        recoveredBlock51Step = 97 ifTrue: [
            recoveredBlock51Stack4 := recoveredLocal2.
            recoveredBlock51PC := 100.
        ].
        recoveredBlock51Step = 100 ifTrue: [
            recoveredBlock51Stack5 := recoveredLocal1.
            recoveredBlock51PC := 103.
        ].
        recoveredBlock51Step = 103 ifTrue: [
            recoveredBlock51Stack6 := recoveredLocal7.
            recoveredBlock51PC := 106.
        ].
        recoveredBlock51Step = 106 ifTrue: [
            recoveredBlock51Stack7 := 0.
            recoveredBlock51PC := 108.
        ].
        recoveredBlock51Step = 108 ifTrue: [
            recoveredBlock51Stack8 := 0.
            recoveredBlock51PC := 110.
        ].
        recoveredBlock51Step = 110 ifTrue: [
            recoveredBlock51Stack9 := Srccopy.
            recoveredBlock51PC := 112.
        ].
        recoveredBlock51Step = 112 ifTrue: [
            (recoveredBlock51Stack1) bitBlt: (recoveredBlock51Stack2) nYDest: (recoveredBlock51Stack3) nWidth: (recoveredBlock51Stack4) nHeight: (recoveredBlock51Stack5) hdcSrc: (recoveredBlock51Stack6) nXSrc: (recoveredBlock51Stack7) nYSrc: (recoveredBlock51Stack8) dwRop: (recoveredBlock51Stack9).
            recoveredBlock51PC := 115.
        ].
        recoveredBlock51Step = 115 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal4.
            recoveredBlock51PC := 118.
        ].
        recoveredBlock51Step = 118 ifTrue: [
            recoveredBlock51Stack2 := recoveredLocal2.
            recoveredBlock51PC := 121.
        ].
        recoveredBlock51Step = 121 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) + (recoveredBlock51Stack2).
            recoveredBlock51PC := 122.
        ].
        recoveredBlock51Step = 122 ifTrue: [
            recoveredLocal4 := recoveredBlock51Stack1.
            recoveredBlock51PC := 125.
        ].
        recoveredBlock51Step = 125 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal4.
            recoveredBlock51PC := 128.
        ].
        recoveredBlock51Step = 128 ifTrue: [
            recoveredBlock51Stack2 := width.
            recoveredBlock51PC := 130.
        ].
        recoveredBlock51Step = 130 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) < (recoveredBlock51Stack2).
            recoveredBlock51PC := 131.
        ].
        recoveredBlock51Step = 131 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 90] ifFalse: [recoveredBlock51PC := 133].
        ].
        recoveredBlock51Step = 133 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal3.
            recoveredBlock51PC := 136.
        ].
        recoveredBlock51Step = 136 ifTrue: [
            recoveredBlock51Stack2 := recoveredLocal1.
            recoveredBlock51PC := 139.
        ].
        recoveredBlock51Step = 139 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) + (recoveredBlock51Stack2).
            recoveredBlock51PC := 140.
        ].
        recoveredBlock51Step = 140 ifTrue: [
            recoveredLocal3 := recoveredBlock51Stack1.
            recoveredBlock51PC := 143.
        ].
        recoveredBlock51Step = 143 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal3.
            recoveredBlock51PC := 146.
        ].
        recoveredBlock51Step = 146 ifTrue: [
            recoveredBlock51Stack2 := height.
            recoveredBlock51PC := 148.
        ].
        recoveredBlock51Step = 148 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) < (recoveredBlock51Stack2).
            recoveredBlock51PC := 149.
        ].
        recoveredBlock51Step = 149 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 82] ifFalse: [recoveredBlock51PC := 151].
        ].
        recoveredBlock51Step = 151 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal7.
            recoveredBlock51PC := 154.
        ].
        recoveredBlock51Step = 154 ifTrue: [
            recoveredBlock51Stack2 := recoveredLocal6.
            recoveredBlock51PC := 157.
        ].
        recoveredBlock51Step = 157 ifTrue: [
            (recoveredBlock51Stack1) selectObject: (recoveredBlock51Stack2).
            recoveredBlock51PC := 159.
        ].
        recoveredBlock51Step = 159 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal7.
            recoveredBlock51PC := 162.
        ].
        recoveredBlock51Step = 162 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) deleteDC.
            recoveredBlock51PC := 164.
        ].
        recoveredBlock51Step = 164 ifTrue: [
            recoveredBlock51Result := recoveredBlock51Stack1.
            recoveredBlock51Done := true.
        ].
    ].
    recoveredBlock51Result
].
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack0) dcDo: (recoveredStack1).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

