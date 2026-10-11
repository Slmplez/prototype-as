"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200157a4; bytecode file offset 0x912098"
!SGSpecificationViewerC class methodsFor: 'recovered'!
ElementBuffer
    | recoveredValue0 |
    recoveredValue0 := ElementBuffer.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200546c8; bytecode file offset 0x951190"
!SGSpecificationViewerC class methodsFor: 'recovered'!
ElementBuffer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ElementBuffer := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20082924; bytecode file offset 0x97f218"
!SGSpecificationViewerC class methodsFor: 'recovered'!
eventAboutToOpenDataStorage: recoveredArg1
    (self) ElementBuffer: (nil).
    ^self
! !

"ASDBase.ic method 0x20082930; bytecode file offset 0x97f218"
!SGSpecificationViewerC class methodsFor: 'recovered'!
eventAboutToCloseDataStorage: recoveredArg1
    (self) ElementBuffer: (nil).
    ^self
! !

"ASDBase.ic method 0x2009c540; bytecode file offset 0x998e50"
!SGSpecificationViewerC class methodsFor: 'recovered'!
removeCallbacksPersistenceController
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDCallbackManager.
    recoveredValue1 := (recoveredValue0) instance.
    (recoveredValue1) removeCallbacksFor: (self).
    ^self
! !

"ASDBase.ic method 0x201eb6c8; bytecode file offset 0xae7fb4"
!SGSpecificationViewerC class methodsFor: 'recovered'!
initializeCallbacksPersistenceController
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := ASDPersistenceController.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := ASDCallbackManager.
    recoveredValue3 := (recoveredValue2) instance.
    recoveredValue4 := ASDDataStorageAboutToOpenCallback.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue3) addCallback: (recoveredValue4) receiver: (self) for: (recoveredValue5).
    recoveredValue6 := ASDCallbackManager.
    recoveredValue7 := (recoveredValue6) instance.
    recoveredValue8 := ASDDataStorageAboutToCloseCallback.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) for: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x20239c70; bytecode file offset 0xb36538"
!SGSpecificationViewerC class methodsFor: 'recovered'!
createFor: recoveredArg1 spec: recoveredArg2 makeConfig: recoveredArg3 makeConfigStack: recoveredArg4 context: recoveredArg5 userInterface: recoveredArg6
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := recoveredArg5.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) initClass: (recoveredStack1) spec: (recoveredStack2) makeConfig: (recoveredStack3) makeConfigStack: (recoveredStack4) context: (recoveredStack5).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg6.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) userInterface: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) context.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) context.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg6.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) userInterface: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

