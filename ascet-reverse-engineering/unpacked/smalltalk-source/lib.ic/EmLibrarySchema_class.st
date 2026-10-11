"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000070; bytecode file offset 0x3c0a8"
!EmLibrarySchema class methodsFor: 'recovered'!
_PRAGMA_NlsCatEMcsESa
    ^self
! !

"lib.ic method 0x200007a4; bytecode file offset 0x3c804"
!EmLibrarySchema class methodsFor: 'recovered'!
packagerKnownSymbols
    ^#('group' 'Unknown' 'readPublicSpec' 'readPublicSource' 'readPrivateSpec' 'readPrivateSource' 'createEditions' 'execute' 'changeClassOwners' 'releaseApplications' 'deleteApplications' 'mapmanager' 'maporappmanager' 'managerorowner')
! !

"lib.ic method 0x20001724; bytecode file offset 0x3d760"
!EmLibrarySchema class methodsFor: 'recovered'!
loaded
    (self) localize.
    ^self
! !

"lib.ic method 0x20003918; bytecode file offset 0x3f96c"
!EmLibrarySchema class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatEMcsESa.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000e704; bytecode file offset 0x4a74c"
!EmLibrarySchema class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'LastReturned'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 'EmMethodEdition'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) initializeToNilClassVariable: (recoveredStack2) inClassNamed: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRunningImage.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'Linker'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 'EmMethodLinker new'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := 'EmMethodEdition'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) initializeClassVariable: (recoveredStack2) to: (recoveredStack3) inClassNamed: (recoveredStack4).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'Decoder'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 'EmMethodDecoder new'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := 'EmMethodEdition'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) initializeClassVariable: (recoveredStack2) to: (recoveredStack3) inClassNamed: (recoveredStack4).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20011a38; bytecode file offset 0x4da84"
!EmLibrarySchema class methodsFor: 'recovered'!
packagerIncludeDoitMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := EmClassEditionEntry.
    recoveredValue4 := (recoveredValue3) class.
    recoveredValue5 := (recoveredValue4) >> ('compareMethodSource').
    (recoveredValue2) add: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := EmClassEditionEntry.
    recoveredValue8 := (recoveredValue7) class.
    recoveredValue9 := (recoveredValue8) >> ('compareMethodSource:').
    (recoveredValue6) add: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := EmMethodEdition.
    recoveredValue12 := (recoveredValue11) class.
    recoveredValue13 := (recoveredValue12) >> ('useLinker').
    (recoveredValue10) add: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := EmMethodEdition.
    recoveredValue16 := (recoveredValue15) class.
    recoveredValue17 := (recoveredValue16) >> ('useLinker:').
    (recoveredValue14) add: (recoveredValue17).
    ^recoveredValue1
! !

