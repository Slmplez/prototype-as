"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x200003f0; bytecode file offset 0x5132c"
!CwWidget methodsFor: 'recovered'!
xTextInset
    | recoveredValue0 |
    recoveredValue0 := (self) borderWidth.
    ^recoveredValue0
! !

"extwid.ic method 0x200004c8; bytecode file offset 0x5132c"
!CwWidget methodsFor: 'recovered'!
yTextInset
    | recoveredValue0 |
    recoveredValue0 := (self) borderWidth.
    ^recoveredValue0
! !

"extwid.ic method 0x20000588; bytecode file offset 0x51354"
!CwWidget methodsFor: 'recovered'!
fontList: recoveredArg1
    ^nil
! !

"extwid.ic method 0x20001078; bytecode file offset 0x52154"
!CwWidget methodsFor: 'recovered'!
dragDropFontStruct
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) display.
    recoveredValue1 := (recoveredValue0) defaultFontStruct.
    ^recoveredValue1
! !

"extwid.ic method 0x200041f0; bytecode file offset 0x54fd4"
!CwWidget methodsFor: 'recovered'!
fontList
    ^nil
! !

"extwid.ic method 0x200043e4; bytecode file offset 0x55268"
!CwWidget methodsFor: 'recovered'!
isPage
    ^false
! !

"extwid.ic method 0x200043fc; bytecode file offset 0x55268"
!CwWidget methodsFor: 'recovered'!
isNotebook
    ^false
! !

"extwid.ic method 0x200047c0; bytecode file offset 0x5561c"
!CwWidget methodsFor: 'recovered'!
createTargetAdapter
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EwTargetAdapter.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) widget: (self).
    ^recoveredValue2
! !

"extwid.ic method 0x20004824; bytecode file offset 0x5561c"
!CwWidget methodsFor: 'recovered'!
createSourceAdapter
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EwSourceAdapter.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) widget: (self).
    ^recoveredValue2
! !

"extwid.ic method 0x200081d8; bytecode file offset 0x590f4"
!CwWidget methodsFor: 'recovered'!
createScrolledFlowedIconList: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EwFlowedIconList.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createScrolledWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x200081f8; bytecode file offset 0x590f4"
!CwWidget methodsFor: 'recovered'!
createIconArea: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EwIconArea.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x20008208; bytecode file offset 0x590f4"
!CwWidget methodsFor: 'recovered'!
createToolBar: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EwToolBar.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x20008218; bytecode file offset 0x590f4"
!CwWidget methodsFor: 'recovered'!
createProgressBar: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EwProgressBar.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x20008228; bytecode file offset 0x590f4"
!CwWidget methodsFor: 'recovered'!
createFlowedIconList: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EwFlowedIconList.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x20008238; bytecode file offset 0x590f4"
!CwWidget methodsFor: 'recovered'!
createScrolledDrawnList: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EwDrawnList.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createScrolledWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x20008248; bytecode file offset 0x590f4"
!CwWidget methodsFor: 'recovered'!
createScrolledTableList: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EwTableList.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createScrolledWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x20008258; bytecode file offset 0x590f4"
!CwWidget methodsFor: 'recovered'!
createDrawnList: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EwDrawnList.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x20008268; bytecode file offset 0x590f4"
!CwWidget methodsFor: 'recovered'!
createScrolledTableTree: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EwTableTree.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createScrolledWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x20008278; bytecode file offset 0x590f4"
!CwWidget methodsFor: 'recovered'!
createSlider: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EwSlider.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x20008288; bytecode file offset 0x590f4"
!CwWidget methodsFor: 'recovered'!
createSpinButton: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EwSpinButton.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x20008298; bytecode file offset 0x590f4"
!CwWidget methodsFor: 'recovered'!
createWINNotebook: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EwWINNotebook.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x200082a8; bytecode file offset 0x590f4"
!CwWidget methodsFor: 'recovered'!
createTableTree: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EwTableTree.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x200082b8; bytecode file offset 0x590f4"
!CwWidget methodsFor: 'recovered'!
createScrolledIconArea: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EwIconArea.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createScrolledWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x200082c8; bytecode file offset 0x590f4"
!CwWidget methodsFor: 'recovered'!
createScrolledIconList: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EwIconList.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createScrolledWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x200082d8; bytecode file offset 0x590f4"
!CwWidget methodsFor: 'recovered'!
createPMNotebook: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EwPMNotebook.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x200082e8; bytecode file offset 0x590f4"
!CwWidget methodsFor: 'recovered'!
createIconTree: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EwIconTree.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x200082f8; bytecode file offset 0x590f4"
!CwWidget methodsFor: 'recovered'!
createTableList: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EwTableList.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x20008308; bytecode file offset 0x590f4"
!CwWidget methodsFor: 'recovered'!
createIconList: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EwIconList.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x20008318; bytecode file offset 0x590f4"
!CwWidget methodsFor: 'recovered'!
createScrolledIconTree: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EwIconTree.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createScrolledWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x20008328; bytecode file offset 0x590f4"
!CwWidget methodsFor: 'recovered'!
createSplitWindow: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EwSplitWindow.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x2000c494; bytecode file offset 0x5d448"
!CwWidget methodsFor: 'recovered'!
createEwWINNotebook: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('PR') = ('1E3MPXK').
    recoveredValue1 := EwWINNotebook.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) createWidget: (recoveredValue2) parent: (self) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x2000c4ac; bytecode file offset 0x5d448"
!CwWidget methodsFor: 'recovered'!
createScrolledEwTableList: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('PR') = ('1E3MPXK').
    recoveredValue1 := EwTableList.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) createScrolledWidget: (recoveredValue2) parent: (self) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x2000c4c4; bytecode file offset 0x5d448"
!CwWidget methodsFor: 'recovered'!
createScrolledEwDrawnList: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('PR') = ('1E3MPXK').
    recoveredValue1 := EwDrawnList.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) createScrolledWidget: (recoveredValue2) parent: (self) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x2000c4dc; bytecode file offset 0x5d448"
!CwWidget methodsFor: 'recovered'!
createEwTableTree: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('PR') = ('1E3MPXK').
    recoveredValue1 := EwTableTree.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) createWidget: (recoveredValue2) parent: (self) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x2000c4f4; bytecode file offset 0x5d448"
!CwWidget methodsFor: 'recovered'!
createEwSpinButton: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('PR') = ('1E3MPXK').
    recoveredValue1 := EwSpinButton.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) createWidget: (recoveredValue2) parent: (self) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x2000c50c; bytecode file offset 0x5d448"
!CwWidget methodsFor: 'recovered'!
createScrolledEwFlowedIconList: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('PR') = ('1E3MPXK').
    recoveredValue1 := EwFlowedIconList.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) createScrolledWidget: (recoveredValue2) parent: (self) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x2000c524; bytecode file offset 0x5d448"
!CwWidget methodsFor: 'recovered'!
createEwProgressBar: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('PR') = ('1E3MPXK').
    recoveredValue1 := EwProgressBar.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) createWidget: (recoveredValue2) parent: (self) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x2000c53c; bytecode file offset 0x5d448"
!CwWidget methodsFor: 'recovered'!
createEwTableList: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('PR') = ('1E3MPXK').
    recoveredValue1 := EwTableList.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) createWidget: (recoveredValue2) parent: (self) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x2000c554; bytecode file offset 0x5d448"
!CwWidget methodsFor: 'recovered'!
createEwToolBar: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('PR') = ('1E3MPXK').
    recoveredValue1 := EwToolBar.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) createWidget: (recoveredValue2) parent: (self) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x2000c56c; bytecode file offset 0x5d448"
!CwWidget methodsFor: 'recovered'!
createEwIconArea: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('PR') = ('1E3MPXK').
    recoveredValue1 := EwIconArea.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) createWidget: (recoveredValue2) parent: (self) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x2000c584; bytecode file offset 0x5d448"
!CwWidget methodsFor: 'recovered'!
createEwIconTree: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('PR') = ('1E3MPXK').
    recoveredValue1 := EwIconTree.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) createWidget: (recoveredValue2) parent: (self) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x2000c59c; bytecode file offset 0x5d448"
!CwWidget methodsFor: 'recovered'!
createEwDrawnList: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('PR') = ('1E3MPXK').
    recoveredValue1 := EwDrawnList.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) createWidget: (recoveredValue2) parent: (self) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x2000c5b4; bytecode file offset 0x5d448"
!CwWidget methodsFor: 'recovered'!
createEwFlowedIconList: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('PR') = ('1E3MPXK').
    recoveredValue1 := EwFlowedIconList.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) createWidget: (recoveredValue2) parent: (self) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x2000c5cc; bytecode file offset 0x5d448"
!CwWidget methodsFor: 'recovered'!
createEwSplitWindow: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('PR') = ('1E3MPXK').
    recoveredValue1 := EwSplitWindow.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) createWidget: (recoveredValue2) parent: (self) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x2000c5e4; bytecode file offset 0x5d448"
!CwWidget methodsFor: 'recovered'!
createEwSlider: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('PR') = ('1E3MPXK').
    recoveredValue1 := EwSlider.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) createWidget: (recoveredValue2) parent: (self) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x2000c5fc; bytecode file offset 0x5d448"
!CwWidget methodsFor: 'recovered'!
createScrolledEwTableTree: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('PR') = ('1E3MPXK').
    recoveredValue1 := EwTableTree.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) createScrolledWidget: (recoveredValue2) parent: (self) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x2000c614; bytecode file offset 0x5d448"
!CwWidget methodsFor: 'recovered'!
createScrolledEwIconArea: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('PR') = ('1E3MPXK').
    recoveredValue1 := EwIconArea.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) createScrolledWidget: (recoveredValue2) parent: (self) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x2000c62c; bytecode file offset 0x5d448"
!CwWidget methodsFor: 'recovered'!
createEwIconList: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('PR') = ('1E3MPXK').
    recoveredValue1 := EwIconList.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) createWidget: (recoveredValue2) parent: (self) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x2000c644; bytecode file offset 0x5d448"
!CwWidget methodsFor: 'recovered'!
createScrolledEwIconList: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('PR') = ('1E3MPXK').
    recoveredValue1 := EwIconList.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) createScrolledWidget: (recoveredValue2) parent: (self) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x2000c65c; bytecode file offset 0x5d448"
!CwWidget methodsFor: 'recovered'!
createEwPMNotebook: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('PR') = ('1E3MPXK').
    recoveredValue1 := EwPMNotebook.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) createWidget: (recoveredValue2) parent: (self) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x2000c674; bytecode file offset 0x5d448"
!CwWidget methodsFor: 'recovered'!
createScrolledEwIconTree: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('PR') = ('1E3MPXK').
    recoveredValue1 := EwIconTree.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) createScrolledWidget: (recoveredValue2) parent: (self) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x20018a40; bytecode file offset 0x69820"
!CwWidget methodsFor: 'recovered'!
getModifierState
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := (self) display.
    recoveredValue1 := (self) window.
    recoveredValue2 := ReturnParameter.
    recoveredValue3 := (recoveredValue2) null.
    recoveredValue4 := ReturnParameter.
    recoveredValue5 := (recoveredValue4) null.
    recoveredValue6 := ReturnParameter.
    recoveredValue7 := (recoveredValue6) null.
    recoveredValue8 := ReturnParameter.
    recoveredValue9 := (recoveredValue8) null.
    recoveredValue10 := ReturnParameter.
    recoveredValue11 := (recoveredValue10) null.
    recoveredValue12 := ReturnParameter.
    recoveredValue13 := (recoveredValue12) null.
    recoveredValue14 := ReturnParameter.
    recoveredValue15 := (recoveredValue14) new.
    recoveredValue16 := recoveredValue15.
    recoveredLocal1 := recoveredValue16.
    (recoveredValue0) queryPointer: (recoveredValue1) rootReturn: (recoveredValue3) childReturn: (recoveredValue5) rootXReturn: (recoveredValue7) rootYReturn: (recoveredValue9) winXReturn: (recoveredValue11) winYReturn: (recoveredValue13) maskReturn: (recoveredValue15).
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := (recoveredValue17) value.
    ^recoveredValue18
! !

"extwid.ic method 0x20021114; bytecode file offset 0x71f18"
!CwWidget methodsFor: 'recovered'!
scrollWidget: recoveredArg1 sourceRectangle: recoveredArg2 destX: recoveredArg3 destY: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ewScroll: (recoveredStack1) destX: (recoveredStack2) destY: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:block28005a24Arg1 | 
    | block28005a24Value0 block28005a24Value1 block28005a24Value2 block28005a24Value3 block28005a24Value4 block28005a24Value5 block28005a24Value6 block28005a24Value7 block28005a24Value8 |
    block28005a24Value0 := block28005a24Arg1.
    block28005a24Value1 := block28005a24Arg1.
    block28005a24Value2 := (block28005a24Value1) osWidget.
    block28005a24Value3 := (block28005a24Value2) x.
    (block28005a24Value0) setX: (block28005a24Value3).
    block28005a24Value4 := block28005a24Arg1.
    block28005a24Value5 := block28005a24Arg1.
    block28005a24Value6 := (block28005a24Value5) osWidget.
    block28005a24Value7 := (block28005a24Value6) y.
    block28005a24Value8 := (block28005a24Value4) setY: (block28005a24Value7).
    block28005a24Value8
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) top.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := (recoveredStack5) width.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack6 := (recoveredStack6) height.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) exposeNonIntersectingArea: (recoveredStack1) srcY: (recoveredStack2) destX: (recoveredStack3) destY: (recoveredStack4) width: (recoveredStack5) height: (recoveredStack6).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) updateWidget.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20034ea8; bytecode file offset 0x85c7c"
!CwWidget methodsFor: 'recovered'!
exposeNonIntersectingArea: recoveredArg1 srcY: recoveredArg2 destX: recoveredArg3 destY: recoveredArg4 width: recoveredArg5 height: recoveredArg6
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg6.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredArg6.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 117].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredArg6.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 137].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := recoveredArg6.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredArg6.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack6 := true.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1) clearArea: (recoveredStack2) y: (recoveredStack3) width: (recoveredStack4) height: (recoveredStack5) exposures: (recoveredStack6).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

