"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDDocumentor.ic method 0x20000200; bytecode file offset 0x2cf3c"
!SGDynDocuManagerViewTB methodsFor: 'recovered'!
checkIfExpanderCreated
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) checkIfExpanderCreated.
    ^recoveredValue1
! !

"ASDDocumentor.ic method 0x200002e0; bytecode file offset 0x2cf3c"
!SGDynDocuManagerViewTB methodsFor: 'recovered'!
categories
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) categories.
    ^recoveredValue1
! !

"ASDDocumentor.ic method 0x200004d8; bytecode file offset 0x2d0fc"
!SGDynDocuManagerViewTB methodsFor: 'recovered'!
changeExpander
    exp := true.
    ^self
! !

"ASDDocumentor.ic method 0x200005dc; bytecode file offset 0x2d2d8"
!SGDynDocuManagerViewTB methodsFor: 'recovered'!
createLibItemListWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createLibItemListWith: (recoveredValue1).
    ^recoveredValue2
! !

"ASDDocumentor.ic method 0x2000078c; bytecode file offset 0x2d438"
!SGDynDocuManagerViewTB methodsFor: 'recovered'!
preview
    | recoveredValue0 |
    recoveredValue0 := (self) uiController.
    (recoveredValue0) preview.
    ^self
! !

"ASDDocumentor.ic method 0x200007fc; bytecode file offset 0x2d438"
!SGDynDocuManagerViewTB methodsFor: 'recovered'!
print
    | recoveredValue0 |
    recoveredValue0 := (self) uiController.
    (recoveredValue0) print.
    ^self
! !

"ASDDocumentor.ic method 0x20000838; bytecode file offset 0x2d46c"
!SGDynDocuManagerViewTB methodsFor: 'recovered'!
uiController
    | recoveredValue0 |
    recoveredValue0 := uiController.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x2000086c; bytecode file offset 0x2d4a8"
!SGDynDocuManagerViewTB methodsFor: 'recovered'!
exp
    | recoveredValue0 |
    recoveredValue0 := exp.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x20000e38; bytecode file offset 0x2da74"
!SGDynDocuManagerViewTB methodsFor: 'recovered'!
generateDocumentation: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) generateDocumentation: (recoveredValue1).
    ^self
! !

"ASDDocumentor.ic method 0x20001618; bytecode file offset 0x2e264"
!SGDynDocuManagerViewTB methodsFor: 'recovered'!
itemIsRead: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) itemIsRead: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDDocumentor.ic method 0x20001878; bytecode file offset 0x2e4a4"
!SGDynDocuManagerViewTB methodsFor: 'recovered'!
uiController: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    uiController := recoveredValue0.
    ^self
! !

"ASDDocumentor.ic method 0x200018ac; bytecode file offset 0x2e4e0"
!SGDynDocuManagerViewTB methodsFor: 'recovered'!
exp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    exp := recoveredValue0.
    ^self
! !

"ASDDocumentor.ic method 0x2000219c; bytecode file offset 0x2edcc"
!SGDynDocuManagerViewTB methodsFor: 'recovered'!
configContents: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGDocumentationContentsView.
    recoveredValue1 := (recoveredValue0) createFor: (self).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) openWithParent: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDDocumentor.ic method 0x20004954; bytecode file offset 0x3159c"
!SGDynDocuManagerViewTB methodsFor: 'recovered'!
init
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGDocuManagerCtrlTB.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOn: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            uiController := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkIfExpanderCreated.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            exp := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) categories.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'Please create some documentation views first'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20004ce4; bytecode file offset 0x31928"
!SGDynDocuManagerViewTB methodsFor: 'recovered'!
saveConfig: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            DocuAuthor := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            DocuTitle := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            DocuView := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            DocuLanguage := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            DocuOutputFormat := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := exp.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) reinitExpander.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20005df4; bytecode file offset 0x32a3c"
!SGDynDocuManagerViewTB methodsFor: 'recovered'!
configuration
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := SGDocuConfigurationDialogTB.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := self.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack3 := self.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) uiController.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) values.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) createFor: (recoveredBlock6Stack2) values: (recoveredBlock6Stack3).
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) prompt.
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredLocal1 := recoveredBlock6Stack2.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            (recoveredBlock6Stack1 ~~ nil) ifTrue: [recoveredBlock6PC := 32] ifFalse: [recoveredBlock6PC := 30].
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 32 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal1.
            recoveredBlock6PC := 35.
        ].
        recoveredBlock6Step = 35 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) isEmpty.
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 40] ifFalse: [recoveredBlock6PC := 42].
        ].
        recoveredBlock6Step = 40 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 41.
        ].
        recoveredBlock6Step = 41 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 42 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal1.
            recoveredBlock6PC := 45.
        ].
        recoveredBlock6Step = 45 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) saveConfig: (recoveredBlock6Stack1).
            recoveredBlock6PC := 47.
        ].
        recoveredBlock6Step = 47 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    ^self
! !

