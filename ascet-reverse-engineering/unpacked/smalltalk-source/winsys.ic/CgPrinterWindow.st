"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200000e8; bytecode file offset 0x7c350"
!CgPrinterWindow methodsFor: 'recovered'!
clearWindow
    ^self
! !

"winsys.ic method 0x200001a8; bytecode file offset 0x7c440"
!CgPrinterWindow methodsFor: 'recovered'!
releaseDC: recoveredArg1
    ^self
! !

"winsys.ic method 0x200002a8; bytecode file offset 0x7c468"
!CgPrinterWindow methodsFor: 'recovered'!
clearArea: recoveredArg1 y: recoveredArg2 width: recoveredArg3 height: recoveredArg4 exposures: recoveredArg5
    ^self
! !

"winsys.ic method 0x20001730; bytecode file offset 0x7d8f0"
!CgPrinterWindow methodsFor: 'recovered'!
endJob
    jobActive := false.
    ^self
! !

"winsys.ic method 0x200017a0; bytecode file offset 0x7d960"
!CgPrinterWindow methodsFor: 'recovered'!
startJob
    jobActive := true.
    ^self
! !

"winsys.ic method 0x20003b40; bytecode file offset 0x7fd28"
!CgPrinterWindow methodsFor: 'recovered'!
jobAttributes
    | recoveredValue0 |
    recoveredValue0 := jobAttributes.
    ^recoveredValue0
! !

"winsys.ic method 0x20003c68; bytecode file offset 0x7fe50"
!CgPrinterWindow methodsFor: 'recovered'!
osGC
    | recoveredValue0 |
    recoveredValue0 := osGC.
    ^recoveredValue0
! !

"winsys.ic method 0x2000503c; bytecode file offset 0x811fc"
!CgPrinterWindow methodsFor: 'recovered'!
isValid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := referenceCount.
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"winsys.ic method 0x20007f48; bytecode file offset 0x84168"
!CgPrinterWindow methodsFor: 'recovered'!
jobAttributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    jobAttributes := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20008068; bytecode file offset 0x84280"
!CgPrinterWindow methodsFor: 'recovered'!
osGC: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    osGC := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20009520; bytecode file offset 0x856e8"
!CgPrinterWindow methodsFor: 'recovered'!
initialize
    super initialize.
    jobActive := false.
    ^self
! !

"winsys.ic method 0x20013d34; bytecode file offset 0x8ff10"
!CgPrinterWindow methodsFor: 'recovered'!
osUnrealizePalette
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) osGC.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := CgServer.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) stockObjects.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultPalette.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) selectPalette: (recoveredStack1) fPalBack: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) realizePalette.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2001df2c; bytecode file offset 0x9a100"
!CgPrinterWindow methodsFor: 'recovered'!
getDC
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1EPRFHW'.
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
            recoveredStack1 := jobActive.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := '1EPRFHW'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := jobAttributes.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) osGC.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := jobAttributes.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) driverData.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) resetDC: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

