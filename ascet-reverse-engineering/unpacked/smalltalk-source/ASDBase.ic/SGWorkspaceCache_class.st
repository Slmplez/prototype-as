"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000acb8; bytecode file offset 0x908be4"
!SGWorkspaceCache class methodsFor: 'recovered'!
create
    | recoveredValue0 |
    recoveredValue0 := (self) instance.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200490f4; bytecode file offset 0x9459f8"
!SGWorkspaceCache class methodsFor: 'recovered'!
removeInstance
    theInstance := nil.
    ^self
! !

"ASDBase.ic method 0x2006f390; bytecode file offset 0x96bf7c"
!SGWorkspaceCache class methodsFor: 'recovered'!
theInstance
    | recoveredValue0 |
    recoveredValue0 := theInstance.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20105044; bytecode file offset 0xa01908"
!SGWorkspaceCache class methodsFor: 'recovered'!
resetCaches
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDAbstractCodeContainerHandle.
    (recoveredValue0) resetCodeStorage.
    recoveredValue1 := ASDXMLARConfigurationOptionsDeclaration.
    (recoveredValue1) removeInstance.
    (self) removeInstance.
    ^self
! !

"ASDBase.ic method 0x2010a7fc; bytecode file offset 0xa070bc"
!SGWorkspaceCache class methodsFor: 'recovered'!
instance
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) theInstance.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) initialize.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            theInstance := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) theInstance.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

