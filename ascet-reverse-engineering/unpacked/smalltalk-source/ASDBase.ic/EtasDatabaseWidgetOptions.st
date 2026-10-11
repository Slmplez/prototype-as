"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006b0a4; bytecode file offset 0x967a18"
!EtasDatabaseWidgetOptions methodsFor: 'recovered'!
maskClassForLibs
    | recoveredValue0 |
    recoveredValue0 := maskClassForLibs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b4e8; bytecode file offset 0x96873c"
!EtasDatabaseWidgetOptions methodsFor: 'recovered'!
folderSelection
    | recoveredValue0 |
    recoveredValue0 := folderSelection.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c854; bytecode file offset 0x9692b0"
!EtasDatabaseWidgetOptions methodsFor: 'recovered'!
librarySelection
    | recoveredValue0 |
    recoveredValue0 := librarySelection.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006caf0; bytecode file offset 0x969c04"
!EtasDatabaseWidgetOptions methodsFor: 'recovered'!
showTimeStamp
    | recoveredValue0 |
    recoveredValue0 := showTimeStamp.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d78c; bytecode file offset 0x96a390"
!EtasDatabaseWidgetOptions methodsFor: 'recovered'!
showPath
    | recoveredValue0 |
    recoveredValue0 := showPath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006de88; bytecode file offset 0x96a9dc"
!EtasDatabaseWidgetOptions methodsFor: 'recovered'!
showExtendedInfo
    | recoveredValue0 |
    recoveredValue0 := showExtendedInfo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e3d4; bytecode file offset 0x96af48"
!EtasDatabaseWidgetOptions methodsFor: 'recovered'!
storeSortedItems
    | recoveredValue0 |
    recoveredValue0 := storeSortedItems.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c16dc; bytecode file offset 0x9beac8"
!EtasDatabaseWidgetOptions methodsFor: 'recovered'!
maskClassForLibs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    maskClassForLibs := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c209c; bytecode file offset 0x9beac8"
!EtasDatabaseWidgetOptions methodsFor: 'recovered'!
updateSpecialMask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    maskClassForLibs := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2808; bytecode file offset 0x9bf474"
!EtasDatabaseWidgetOptions methodsFor: 'recovered'!
folderSelection: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    folderSelection := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c34c4; bytecode file offset 0x9bfde0"
!EtasDatabaseWidgetOptions methodsFor: 'recovered'!
librarySelection: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    librarySelection := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3930; bytecode file offset 0x9c058c"
!EtasDatabaseWidgetOptions methodsFor: 'recovered'!
showTimeStamp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    showTimeStamp := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c415c; bytecode file offset 0x9c0bf0"
!EtasDatabaseWidgetOptions methodsFor: 'recovered'!
showPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    showPath := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4708; bytecode file offset 0x9c11bc"
!EtasDatabaseWidgetOptions methodsFor: 'recovered'!
showExtendedInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    showExtendedInfo := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4aac; bytecode file offset 0x9c16b0"
!EtasDatabaseWidgetOptions methodsFor: 'recovered'!
storeSortedItems: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    storeSortedItems := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x202d83d8; bytecode file offset 0xbd4cc0"
!EtasDatabaseWidgetOptions methodsFor: 'recovered'!
initialize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) folderSelection: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) librarySelection: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) storeSortedItems: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := SGLibrary.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) maskClassForLibs: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) showPath: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) showTimeStamp: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) showExtendedInfo: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

