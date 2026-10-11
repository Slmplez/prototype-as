"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000918; bytecode file offset 0x8ffcfc"
!SGProcessMethodDialog methodsFor: 'recovered'!
installActionKeysPageArg
    ^self
! !

"ASDBase.ic method 0x200009a8; bytecode file offset 0x8ffcfc"
!SGProcessMethodDialog methodsFor: 'recovered'!
initializePageArg
    ^self
! !

"ASDBase.ic method 0x200020d8; bytecode file offset 0x8ffcfc"
!SGProcessMethodDialog methodsFor: 'recovered'!
initializePageRet
    ^self
! !

"ASDBase.ic method 0x20088610; bytecode file offset 0x985628"
!SGProcessMethodDialog methodsFor: 'recovered'!
lists
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) localVarList.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f8b48; bytecode file offset 0x9f540c"
!SGProcessMethodDialog methodsFor: 'recovered'!
initTypeBoxHeight
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) localVarType.
    recoveredValue1 := (self) localVarType.
    recoveredValue2 := (recoveredValue1) itemCount.
    recoveredValue3 := (recoveredValue2) max: (5).
    (recoveredValue0) visibleItemCount: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2010b338; bytecode file offset 0xa07c00"
!SGProcessMethodDialog methodsFor: 'recovered'!
editorName
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) method.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRunnable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 'Runnable Signature Editor'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := 'Process Signature Editor'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20124824; bytecode file offset 0xa21100"
!SGProcessMethodDialog methodsFor: 'recovered'!
createMenuBar
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := CwMenuBar.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) createLocalVarMenu.
    (recoveredValue3) addMenu: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

