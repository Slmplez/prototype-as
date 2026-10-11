"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20027ca8; bytecode file offset 0x924578"
!EtasNotebookComponentConnectedElementsWidget methodsFor: 'recovered'!
ownerView
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) owner.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20070da0; bytecode file offset 0x96d6a4"
!EtasNotebookComponentConnectedElementsWidget methodsFor: 'recovered'!
asdElements
    | recoveredValue0 |
    recoveredValue0 := asdElements.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007a74c; bytecode file offset 0x97c330"
!EtasNotebookComponentConnectedElementsWidget methodsFor: 'recovered'!
isCreateAscetLinkPossible
    ^false
! !

"ASDBase.ic method 0x200b436c; bytecode file offset 0x9b0c40"
!EtasNotebookComponentConnectedElementsWidget methodsFor: 'recovered'!
selectDefaultPage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) notebook.
    recoveredValue1 := (self) pageContents.
    (recoveredValue0) selectItem: (recoveredValue1) notify: (true).
    ^self
! !

"ASDBase.ic method 0x200bb890; bytecode file offset 0x9b823c"
!EtasNotebookComponentConnectedElementsWidget methodsFor: 'recovered'!
setElements: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) asdElements: (recoveredValue0).
    (self) updateAllTableLists.
    ^self
! !

"ASDBase.ic method 0x200c73c8; bytecode file offset 0x9c3d64"
!EtasNotebookComponentConnectedElementsWidget methodsFor: 'recovered'!
asdElements: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    asdElements := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2010b9fc; bytecode file offset 0xa085f0"
!EtasNotebookComponentConnectedElementsWidget methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) asdElements: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2033d028; bytecode file offset 0xc39934"
!EtasNotebookComponentConnectedElementsWidget methodsFor: 'recovered'!
elementsForPageContents
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) allElements.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280edac8Arg1 | 
    | block280edac8Value0 block280edac8Value1 |
    block280edac8Value0 := block280edac8Arg1.
    block280edac8Value1 := (block280edac8Value0) aliasName.
    block280edac8Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) asdElements.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 |
    recoveredBlock24Value0 := recoveredLocal1.
    recoveredBlock24Value1 := recoveredBlock24Arg1.
    recoveredBlock24Value2 := (recoveredBlock24Value1) aliasName.
    recoveredBlock24Value3 := (recoveredBlock24Value0) includes: (recoveredBlock24Value2).
    recoveredBlock24Value3
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) asdElements: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) asdElements.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [:recoveredBlock45Arg1 | 
    | recoveredBlock45Value0 recoveredBlock45Value1 recoveredBlock45Value2 recoveredBlock45Value3 |
    recoveredBlock45Value0 := recoveredBlock45Arg1.
    recoveredBlock45Value1 := (recoveredBlock45Value0) ownerSGClass.
    recoveredBlock45Value2 := (self) item.
    recoveredBlock45Value3 := (recoveredBlock45Value1) = (recoveredBlock45Value2).
    recoveredBlock45Value3
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

